package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.provider.Contacts;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.VideoView;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.errors.PermissionException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class MediaUtil {
    private static final String LOG_TAG = "MediaUtil";
    private static final Map<String, File> tempFileMap = new HashMap();
    private static ConcurrentHashMap<String, String> pathCache = new ConcurrentHashMap<>(2);

    public enum MediaSource {
        ASSET,
        REPL_ASSET,
        SDCARD,
        FILE_URL,
        URL,
        CONTENT_URI,
        CONTACT_URI,
        PRIVATE_DATA
    }

    public static /* bridge */ /* synthetic */ Bitmap a(ByteArrayInputStream byteArrayInputStream, BitmapFactory.Options options) {
        return decodeStream(byteArrayInputStream, null, options);
    }

    private MediaUtil() {
    }

    public static String fileUrlToFilePath(String str) throws IOException {
        try {
            return new File(new URL(str).toURI()).getAbsolutePath();
        } catch (IllegalArgumentException unused) {
            throw new IOException(a.i("Unable to determine file path of file url ", str));
        } catch (Exception unused2) {
            throw new IOException(a.i("Unable to determine file path of file url ", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SdCardPath"})
    public static MediaSource determineMediaSource(Form form, String str) {
        if (str.startsWith(QUtil.getExternalStoragePath(form)) || str.startsWith("/sdcard/")) {
            return MediaSource.SDCARD;
        }
        if (str.startsWith("content://contacts/")) {
            return MediaSource.CONTACT_URI;
        }
        if (str.startsWith("content://")) {
            return MediaSource.CONTENT_URI;
        }
        if (str.startsWith("/data/")) {
            return MediaSource.PRIVATE_DATA;
        }
        try {
            URL url = new URL(str);
            if (str.startsWith("file:")) {
                if (url.getPath().startsWith("/android_asset/")) {
                    return MediaSource.ASSET;
                }
                return MediaSource.FILE_URL;
            }
            return MediaSource.URL;
        } catch (MalformedURLException unused) {
            if (form instanceof ReplForm) {
                if (((ReplForm) form).isAssetsLoaded()) {
                    return MediaSource.REPL_ASSET;
                }
                return MediaSource.ASSET;
            }
            return MediaSource.ASSET;
        }
    }

    @SuppressLint({"SdCardPath"})
    @Deprecated
    public static boolean isExternalFileUrl(String str) {
        Log.w(LOG_TAG, "Calling deprecated version of isExternalFileUrl", new IllegalAccessException());
        String externalStoragePath = QUtil.getExternalStoragePath(Form.getActiveForm());
        StringBuilder sb = new StringBuilder("file://");
        sb.append(externalStoragePath);
        return str.startsWith(sb.toString()) || str.startsWith("file:///sdcard/");
    }

    @SuppressLint({"SdCardPath"})
    public static boolean isExternalFileUrl(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return false;
        }
        File externalStorageDir = QUtil.getExternalStorageDir(context);
        StringBuilder sb = new StringBuilder("file://");
        sb.append(externalStorageDir);
        return str.startsWith(sb.toString()) || str.startsWith("file:///sdcard");
    }

    @SuppressLint({"SdCardPath"})
    @Deprecated
    public static boolean isExternalFile(String str) {
        Log.w(LOG_TAG, "Calling deprecated version of isExternalFile", new IllegalAccessException());
        return str.startsWith(QUtil.getExternalStoragePath(Form.getActiveForm())) || str.startsWith("/sdcard/") || isExternalFileUrl(Form.getActiveForm(), str);
    }

    @SuppressLint({"SdCardPath"})
    public static boolean isExternalFile(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return false;
        }
        return str.startsWith(QUtil.getExternalStoragePath(context)) || str.startsWith("/sdcard/") || isExternalFileUrl(context, str);
    }

    private static String findCaseinsensitivePath(Form form, String str) throws IOException {
        if (!pathCache.containsKey(str)) {
            String strFindCaseinsensitivePathWithoutCache = findCaseinsensitivePathWithoutCache(form, str);
            if (strFindCaseinsensitivePathWithoutCache == null) {
                return null;
            }
            pathCache.put(str, strFindCaseinsensitivePathWithoutCache);
        }
        return pathCache.get(str);
    }

    private static String findCaseinsensitivePathWithoutCache(Form form, String str) throws IOException {
        String[] list = form.getAssets().list("");
        int length = Array.getLength(list);
        for (int i = 0; i < length; i++) {
            String str2 = list[i];
            if (str2.equalsIgnoreCase(str)) {
                return str2;
            }
        }
        return null;
    }

    private static InputStream getAssetsIgnoreCaseInputStream(Form form, String str) throws IOException {
        try {
            return form.getAssets().open(str);
        } catch (IOException e) {
            String strFindCaseinsensitivePath = findCaseinsensitivePath(form, str);
            if (strFindCaseinsensitivePath == null) {
                throw e;
            }
            return form.getAssets().open(strFindCaseinsensitivePath);
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.util.MediaUtil$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource;

        static {
            int[] iArr = new int[MediaSource.values().length];
            $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource = iArr;
            try {
                iArr[MediaSource.ASSET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.PRIVATE_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.REPL_ASSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.SDCARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.FILE_URL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.URL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.CONTENT_URI.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaSource.CONTACT_URI.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream openMedia(Form form, String str, MediaSource mediaSource) throws IOException {
        switch (AnonymousClass5.$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[mediaSource.ordinal()]) {
            case 1:
                if (str.startsWith("file:")) {
                    str = str.substring(str.indexOf("/android_asset/") + 15);
                }
                return getAssetsIgnoreCaseInputStream(form, str);
            case 2:
                return new FileInputStream(str);
            case 3:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                try {
                    return new FileInputStream(new File(URI.create(form.getAssetPath(str))));
                } catch (Exception e) {
                    if (SdkLevel.getLevel() >= 9) {
                        throw new IOException(e);
                    }
                    Log.d(LOG_TAG, "Error in REPL_ASSET Fetching: " + Log.getStackTraceString(e));
                    FroyoUtil.throwIOException(e);
                }
            case 4:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                return new FileInputStream(str);
            case 5:
                if (isExternalFileUrl(form, str) && RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                break;
            case 6:
                return new URL(str).openStream();
            case 7:
                return form.getContentResolver().openInputStream(Uri.parse(str));
            case 8:
                InputStream inputStreamOpenContactPhotoInputStreamHelper = SdkLevel.getLevel() >= 12 ? HoneycombMR1Util.openContactPhotoInputStreamHelper(form.getContentResolver(), Uri.parse(str)) : Contacts.People.openContactPhotoInputStream(form.getContentResolver(), Uri.parse(str));
                if (inputStreamOpenContactPhotoInputStreamHelper != null) {
                    return inputStreamOpenContactPhotoInputStreamHelper;
                }
                throw new IOException(a.A("Unable to open contact photo ", str, "."));
            default:
                throw new IOException(a.A("Unable to open media ", str, "."));
        }
    }

    public static InputStream openMedia(Form form, String str) throws IOException {
        return openMedia(form, str, determineMediaSource(form, str));
    }

    public static File copyMediaToTempFile(Form form, String str) throws IOException {
        return copyMediaToTempFile(form, str, determineMediaSource(form, str));
    }

    private static File copyMediaToTempFile(Form form, String str, MediaSource mediaSource) throws IOException {
        InputStream inputStreamOpenMedia = openMedia(form, str, mediaSource);
        File fileCreateTempFile = null;
        try {
            try {
                fileCreateTempFile = File.createTempFile("AI_Media_", null);
                fileCreateTempFile.deleteOnExit();
                FileUtil.writeStreamToFile(inputStreamOpenMedia, fileCreateTempFile.getAbsolutePath());
                return fileCreateTempFile;
            } catch (IOException e) {
                if (fileCreateTempFile != null) {
                    Log.e(LOG_TAG, "Could not copy media " + str + " to temp file " + fileCreateTempFile.getAbsolutePath());
                    fileCreateTempFile.delete();
                } else {
                    Log.e(LOG_TAG, "Could not copy media " + str + " to temp file.");
                }
                throw e;
            }
        } finally {
            inputStreamOpenMedia.close();
        }
    }

    private static File cacheMediaTempFile(Form form, String str, MediaSource mediaSource) throws IOException {
        Map<String, File> map = tempFileMap;
        File file = map.get(str);
        if (file != null && file.exists()) {
            return file;
        }
        Log.i(LOG_TAG, "Copying media " + str + " to temp file...");
        File fileCopyMediaToTempFile = copyMediaToTempFile(form, str, mediaSource);
        Log.i(LOG_TAG, "Finished copying media " + str + " to temp file " + fileCopyMediaToTempFile.getAbsolutePath());
        map.put(str, fileCopyMediaToTempFile);
        return fileCopyMediaToTempFile;
    }

    public static BitmapDrawable getBitmapDrawable(Form form, String str) throws IOException {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (Form.highQuality) {
            return getHighQualityImage(form, str);
        }
        final Synchronizer synchronizer = new Synchronizer();
        getBitmapDrawableAsync(form, str, new AsyncCallbackPair<BitmapDrawable>() { // from class: com.google.appinventor.components.runtime.util.MediaUtil.1
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                synchronizer.error(str2);
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(BitmapDrawable bitmapDrawable) {
                synchronizer.wakeup(bitmapDrawable);
            }
        });
        synchronizer.waitfor();
        BitmapDrawable bitmapDrawable = (BitmapDrawable) synchronizer.getResult();
        if (bitmapDrawable != null) {
            return bitmapDrawable;
        }
        String error = synchronizer.getError();
        if (error.startsWith("PERMISSION_DENIED:")) {
            throw new PermissionException(error.split(":")[1]);
        }
        throw new IOException(error);
    }

    public static BitmapDrawable getHighQualityImage(final Form form, final String str) throws IOException {
        final Synchronizer synchronizer = new Synchronizer();
        final AsyncCallbackPair<BitmapDrawable> asyncCallbackPair = new AsyncCallbackPair<BitmapDrawable>() { // from class: com.google.appinventor.components.runtime.util.MediaUtil.2
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str2) {
                synchronizer.error(str2);
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(BitmapDrawable bitmapDrawable) {
                synchronizer.wakeup(bitmapDrawable);
            }
        };
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.util.MediaUtil.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    BitmapDrawable drawable = getDrawable();
                    if (drawable == null) {
                        asyncCallbackPair.onFailure("Image Not Found");
                    } else {
                        asyncCallbackPair.onSuccess(drawable);
                    }
                } catch (PermissionException e) {
                    asyncCallbackPair.onFailure("PERMISSION_DENIED:" + e.getPermissionNeeded());
                } catch (Exception e2) {
                    asyncCallbackPair.onFailure(e2.getMessage());
                }
            }

            public BitmapDrawable getDrawable() throws Exception {
                switch (AnonymousClass5.$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[MediaUtil.determineMediaSource(form, str).ordinal()]) {
                    case 1:
                        return (BitmapDrawable) Drawable.createFromStream(form.getAssets().open(str), null);
                    case 2:
                    default:
                        return null;
                    case 3:
                        if (RUtil.needsFilePermission(form, str, null)) {
                            form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                        }
                        return (BitmapDrawable) Drawable.createFromPath(new File(URI.create(form.getAssetPath(str))).toString());
                    case 4:
                        if (RUtil.needsFilePermission(form, str, null)) {
                            form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                        }
                        return new BitmapDrawable(BitmapFactory.decodeFile(String.valueOf(new File(str))));
                    case 5:
                        if (MediaUtil.isExternalFileUrl(form, str) && RUtil.needsFilePermission(form, str, null)) {
                            form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                            break;
                        }
                        break;
                    case 6:
                        break;
                    case 7:
                        return new BitmapDrawable(BitmapFactory.decodeStream(form.getContentResolver().openInputStream(Uri.parse(str))));
                    case 8:
                        InputStream inputStreamOpenContactPhotoInputStreamHelper = HoneycombMR1Util.openContactPhotoInputStreamHelper(form.getContentResolver(), Uri.parse(str));
                        if (inputStreamOpenContactPhotoInputStreamHelper != null) {
                            return new BitmapDrawable(BitmapFactory.decodeStream(inputStreamOpenContactPhotoInputStreamHelper));
                        }
                        return new BitmapDrawable(form.getResources(), BitmapFactory.decodeResource(form.getResources(), R.drawable.picture_frame, null));
                }
                return new BitmapDrawable(BitmapFactory.decodeStream(new URL(str).openStream()));
            }
        });
        synchronizer.waitfor();
        BitmapDrawable bitmapDrawable = (BitmapDrawable) synchronizer.getResult();
        if (bitmapDrawable != null) {
            return bitmapDrawable;
        }
        String error = synchronizer.getError();
        if (error.startsWith("PERMISSION_DENIED:")) {
            throw new PermissionException(error.split(":")[1]);
        }
        throw new IOException(error);
    }

    public static void getBitmapDrawableAsync(Form form, String str, AsyncCallbackPair<BitmapDrawable> asyncCallbackPair) {
        getBitmapDrawableAsync(form, str, -1, -1, asyncCallbackPair);
    }

    public static void getBitmapDrawableAsync(final Form form, final String str, final int i, final int i2, final AsyncCallbackPair<BitmapDrawable> asyncCallbackPair) {
        if (str == null || str.length() == 0) {
            asyncCallbackPair.onSuccess(null);
        } else {
            final MediaSource mediaSourceDetermineMediaSource = determineMediaSource(form, str);
            AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.util.MediaUtil.4
                /* JADX WARN: Not initialized variable reg: 5, insn: 0x0037: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:8:0x0037 */
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    InputStream inputStream;
                    InputStream inputStreamOpenMedia;
                    Log.d(MediaUtil.LOG_TAG, "mediaPath = " + str);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    InputStream inputStream2 = null;
                    try {
                        try {
                            try {
                                inputStreamOpenMedia = MediaUtil.openMedia(form, str, mediaSourceDetermineMediaSource);
                                while (true) {
                                    try {
                                        int i3 = inputStreamOpenMedia.read(bArr);
                                        if (i3 <= 0) {
                                            break;
                                        } else {
                                            byteArrayOutputStream.write(bArr, 0, i3);
                                        }
                                    } catch (PermissionException e) {
                                        e = e;
                                        inputStream2 = inputStreamOpenMedia;
                                        asyncCallbackPair.onFailure("PERMISSION_DENIED:" + e.getPermissionNeeded());
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                            } catch (IOException e2) {
                                                e = e2;
                                                Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e);
                                                byteArrayOutputStream.close();
                                                return;
                                            }
                                        }
                                        try {
                                            byteArrayOutputStream.close();
                                            return;
                                        } catch (IOException unused) {
                                            return;
                                        }
                                    } catch (IOException e3) {
                                        e = e3;
                                        if (mediaSourceDetermineMediaSource == MediaSource.CONTACT_URI) {
                                            asyncCallbackPair.onSuccess(new BitmapDrawable(form.getResources(), BitmapFactory.decodeResource(form.getResources(), R.drawable.picture_frame, null)));
                                            if (inputStreamOpenMedia != null) {
                                                try {
                                                    inputStreamOpenMedia.close();
                                                } catch (IOException e4) {
                                                    e = e4;
                                                    Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e);
                                                    byteArrayOutputStream.close();
                                                    return;
                                                }
                                            }
                                        } else {
                                            Log.d(MediaUtil.LOG_TAG, "IOException reading file.", e);
                                            asyncCallbackPair.onFailure(e.getMessage());
                                            if (inputStreamOpenMedia != null) {
                                                try {
                                                    inputStreamOpenMedia.close();
                                                } catch (IOException e5) {
                                                    e = e5;
                                                    Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e);
                                                    byteArrayOutputStream.close();
                                                    return;
                                                }
                                            }
                                        }
                                        byteArrayOutputStream.close();
                                        return;
                                    }
                                }
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                try {
                                    inputStreamOpenMedia.close();
                                } catch (IOException e6) {
                                    Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e6);
                                }
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException unused2) {
                                }
                                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
                                try {
                                    try {
                                        try {
                                            byteArrayInputStream.mark(byteArray.length);
                                            BitmapFactory.Options bitmapOptions = MediaUtil.getBitmapOptions(form, byteArrayInputStream, str);
                                            byteArrayInputStream.reset();
                                            BitmapDrawable bitmapDrawable = new BitmapDrawable(form.getResources(), MediaUtil.a(byteArrayInputStream, bitmapOptions));
                                            bitmapDrawable.setTargetDensity(form.getResources().getDisplayMetrics());
                                            if ((i <= 0 || i2 < 0) && (bitmapOptions.inSampleSize != 1 || form.deviceDensity() == 1.0f)) {
                                                asyncCallbackPair.onSuccess(bitmapDrawable);
                                                byteArrayInputStream.close();
                                            } else {
                                                float fDeviceDensity = form.deviceDensity();
                                                int intrinsicWidth = i;
                                                if (intrinsicWidth <= 0) {
                                                    intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
                                                }
                                                int i4 = (int) (fDeviceDensity * intrinsicWidth);
                                                float fDeviceDensity2 = form.deviceDensity();
                                                int intrinsicHeight = i2;
                                                if (intrinsicHeight <= 0) {
                                                    intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
                                                }
                                                int i5 = (int) (fDeviceDensity2 * intrinsicHeight);
                                                Log.d(MediaUtil.LOG_TAG, "form.deviceDensity() = " + form.deviceDensity());
                                                Log.d(MediaUtil.LOG_TAG, "originalBitmapDrawable.getIntrinsicWidth() = " + bitmapDrawable.getIntrinsicWidth());
                                                Log.d(MediaUtil.LOG_TAG, "originalBitmapDrawable.getIntrinsicHeight() = " + bitmapDrawable.getIntrinsicHeight());
                                                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(form.getResources(), Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), i4, i5, false));
                                                bitmapDrawable2.setTargetDensity(form.getResources().getDisplayMetrics());
                                                System.gc();
                                                asyncCallbackPair.onSuccess(bitmapDrawable2);
                                                byteArrayInputStream.close();
                                            }
                                        } catch (Exception e7) {
                                            Log.w(MediaUtil.LOG_TAG, "Exception while loading media.", e7);
                                            asyncCallbackPair.onFailure(e7.getMessage());
                                            byteArrayInputStream.close();
                                        }
                                    } catch (IOException e8) {
                                        Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e8);
                                    }
                                } finally {
                                    try {
                                        byteArrayInputStream.close();
                                    } catch (IOException e9) {
                                        Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e9);
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                if (inputStream2 != null) {
                                    try {
                                        inputStream2.close();
                                    } catch (IOException e10) {
                                        Log.w(MediaUtil.LOG_TAG, "Unexpected error on close", e10);
                                    }
                                }
                                try {
                                    byteArrayOutputStream.close();
                                    throw th;
                                } catch (IOException unused3) {
                                    throw th;
                                }
                            }
                        } catch (PermissionException e11) {
                            e = e11;
                        } catch (IOException e12) {
                            e = e12;
                            inputStreamOpenMedia = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream2 = inputStream;
                    }
                }
            });
        }
    }

    private static Bitmap decodeStream(InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        return BitmapFactory.decodeStream(new FlushedInputStream(inputStream), rect, options);
    }

    public static class FlushedInputStream extends FilterInputStream {
        public FlushedInputStream(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long j2 = 0;
            while (j2 < j) {
                long jSkip = ((FilterInputStream) this).in.skip(j - j2);
                if (jSkip == 0) {
                    if (read() < 0) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 += jSkip;
            }
            return j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BitmapFactory.Options getBitmapOptions(Form form, InputStream inputStream, String str) {
        int height;
        int i;
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        decodeStream(inputStream, null, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        Display defaultDisplay = ((WindowManager) form.getSystemService("window")).getDefaultDisplay();
        if (Form.getCompatibilityMode()) {
            i = 720;
            height = 840;
        } else {
            int width = (int) (defaultDisplay.getWidth() / form.deviceDensity());
            height = (int) (defaultDisplay.getHeight() / form.deviceDensity());
            i = width;
        }
        while (i3 / i2 > i && i4 / i2 > height) {
            i2 *= 2;
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        Log.d(LOG_TAG, "getBitmapOptions: sampleSize = " + i2 + " mediaPath = " + str + " maxWidth = " + i + " maxHeight = " + height + " display width = " + defaultDisplay.getWidth() + " display height = " + defaultDisplay.getHeight());
        options2.inSampleSize = i2;
        return options2;
    }

    private static AssetFileDescriptor getAssetsIgnoreCaseAfd(Form form, String str) throws IOException {
        try {
            return form.getAssets().openFd(str);
        } catch (IOException e) {
            String strFindCaseinsensitivePath = findCaseinsensitivePath(form, str);
            if (strFindCaseinsensitivePath == null) {
                throw e;
            }
            return form.getAssets().openFd(strFindCaseinsensitivePath);
        }
    }

    public static int loadSoundPool(SoundPool soundPool, Form form, String str) throws IOException {
        MediaSource mediaSourceDetermineMediaSource = determineMediaSource(form, str);
        switch (AnonymousClass5.$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[mediaSourceDetermineMediaSource.ordinal()]) {
            case 1:
                return soundPool.load(getAssetsIgnoreCaseAfd(form, str), 1);
            case 2:
            default:
                throw new IOException(a.A("Unable to load audio ", str, "."));
            case 3:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                return soundPool.load(fileUrlToFilePath(form.getAssetPath(str)), 1);
            case 4:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                return soundPool.load(str, 1);
            case 5:
                if (isExternalFileUrl(form, str) || RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                return soundPool.load(fileUrlToFilePath(str), 1);
            case 6:
            case 7:
                return soundPool.load(cacheMediaTempFile(form, str, mediaSourceDetermineMediaSource).getAbsolutePath(), 1);
            case 8:
                throw new IOException(a.A("Unable to load audio for contact ", str, "."));
        }
    }

    public static void loadMediaPlayer(MediaPlayer mediaPlayer, Form form, String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        switch (AnonymousClass5.$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[determineMediaSource(form, str).ordinal()]) {
            case 1:
                AssetFileDescriptor assetsIgnoreCaseAfd = getAssetsIgnoreCaseAfd(form, str);
                try {
                    mediaPlayer.setDataSource(assetsIgnoreCaseAfd.getFileDescriptor(), assetsIgnoreCaseAfd.getStartOffset(), assetsIgnoreCaseAfd.getLength());
                    return;
                } finally {
                    assetsIgnoreCaseAfd.close();
                }
            case 2:
            default:
                throw new IOException(a.A("Unable to load audio or video ", str, "."));
            case 3:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                mediaPlayer.setDataSource(fileUrlToFilePath(form.getAssetPath(str)));
                return;
            case 4:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                mediaPlayer.setDataSource(str);
                return;
            case 5:
                if (isExternalFileUrl(form, str) || RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                mediaPlayer.setDataSource(fileUrlToFilePath(str));
                return;
            case 6:
                mediaPlayer.setDataSource(str);
                return;
            case 7:
                mediaPlayer.setDataSource(form, Uri.parse(str));
                return;
            case 8:
                throw new IOException(a.A("Unable to load audio or video for contact ", str, "."));
        }
    }

    public static void loadVideoView(VideoView videoView, Form form, String str) throws IOException {
        MediaSource mediaSourceDetermineMediaSource = determineMediaSource(form, str);
        switch (AnonymousClass5.$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource[mediaSourceDetermineMediaSource.ordinal()]) {
            case 1:
            case 6:
                videoView.setVideoPath(cacheMediaTempFile(form, str, mediaSourceDetermineMediaSource).getAbsolutePath());
                return;
            case 2:
            default:
                throw new IOException(a.A("Unable to load video ", str, "."));
            case 3:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                videoView.setVideoPath(fileUrlToFilePath(form.getAssetPath(str)));
                return;
            case 4:
                if (RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_VIDEO");
                }
                videoView.setVideoPath(str);
                return;
            case 5:
                if (isExternalFileUrl(form, str) || RUtil.needsFilePermission(form, str, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_VIDEO");
                }
                videoView.setVideoPath(fileUrlToFilePath(str));
                return;
            case 7:
                videoView.setVideoURI(Uri.parse(str));
                return;
            case 8:
                throw new IOException(a.A("Unable to load video for contact ", str, "."));
        }
    }
}
