package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.RuntimeError;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public class FileUtil {
    private static final String DIRECTORY_DOWNLOADS = "Downloads";
    private static final String DIRECTORY_PICTURES = "Pictures";
    private static final String DIRECTORY_RECORDINGS = "Recordings";
    private static final String DOCUMENT_DIRECTORY = "My Documents/";
    private static final String FILENAME_PREFIX = "app_inventor_";
    private static final String LOG_TAG = "FileUtil";
    public static final int MIN_SDK_FOR_APP_SPECIFIC_DIRS = 29;

    private FileUtil() {
    }

    public static String getFileUrl(String str) {
        return new File(str).toURI().toString();
    }

    @Deprecated
    public static byte[] readFile(String str) throws IOException {
        Log.w(LOG_TAG, "Calling deprecated function readFile", new IllegalAccessException());
        return readFile(Form.getActiveForm(), str);
    }

    public static byte[] readFile(Form form, String str) throws IOException {
        InputStream inputStreamOpenFile;
        if (str.startsWith("file://")) {
            str = str.substring(7);
        }
        try {
            if (str.startsWith("/android_asset/")) {
                inputStreamOpenFile = form.openAsset(str.substring(str.lastIndexOf(47) + 1));
            } else {
                if (!new File(str).isFile()) {
                    throw new FileNotFoundException("Cannot find file: ".concat(str));
                }
                inputStreamOpenFile = openFile(form, str);
            }
            InputStream inputStream = inputStreamOpenFile;
            byte[] stream = IOUtils.readStream(inputStream);
            IOUtils.closeQuietly(LOG_TAG, inputStream);
            return stream;
        } catch (Throwable th) {
            IOUtils.closeQuietly(LOG_TAG, null);
            throw th;
        }
    }

    @Deprecated
    public static FileInputStream openFile(String str) throws PermissionException, IOException {
        Log.w(LOG_TAG, "Calling deprecated function openFile", new IllegalAccessException());
        return openFile(Form.getActiveForm(), str);
    }

    public static FileInputStream openFile(Form form, String str) throws PermissionException, IOException {
        if (needsReadPermission(form, str.startsWith("/") ? "file://".concat(str) : str)) {
            form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
        }
        return new FileInputStream(str);
    }

    @Deprecated
    public static FileInputStream openFile(File file) throws PermissionException, IOException {
        Log.w(LOG_TAG, "Calling deprecated function openFile", new IllegalAccessException());
        return openFile(Form.getActiveForm(), file.getAbsolutePath());
    }

    public static FileInputStream openFile(Form form, File file) throws PermissionException, IOException {
        return openFile(form, file.getAbsolutePath());
    }

    @Deprecated
    public static FileInputStream openFile(URI uri) throws PermissionException, IOException {
        Log.w(LOG_TAG, "Calling deprecated function openFile", new IllegalAccessException());
        return openFile(Form.getActiveForm(), uri);
    }

    public static FileInputStream openFile(Form form, URI uri) throws PermissionException, IOException {
        if (needsPermission(form, uri.toString())) {
            form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
        }
        return new FileInputStream(new File(uri));
    }

    public static String downloadUrlToFile(String str, String str2) throws IOException {
        InputStream inputStreamOpenStream = new URL(str).openStream();
        try {
            return writeStreamToFile(inputStreamOpenStream, str2);
        } finally {
            inputStreamOpenStream.close();
        }
    }

    public static String writeFile(byte[] bArr, String str) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            return writeStreamToFile(byteArrayInputStream, str);
        } finally {
            byteArrayInputStream.close();
        }
    }

    public static String copyFile(String str, String str2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            return writeStreamToFile(fileInputStream, str2);
        } finally {
            fileInputStream.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean copyFile(Form form, ScopedFile scopedFile, ScopedFile scopedFile2) throws Throwable {
        OutputStream outputStream;
        if (Build.VERSION.SDK_INT >= 24) {
            FileScope scope = scopedFile.getScope();
            FileScope fileScope = FileScope.Shared;
            if (scope != fileScope && scopedFile2.getScope() != fileScope) {
                Files.copy(Paths.get(scopedFile.resolve(form).toURI()), Paths.get(scopedFile2.resolve(form).toURI()), StandardCopyOption.REPLACE_EXISTING);
                return true;
            }
        }
        OutputStream outputStreamOpenForWriting = null;
        try {
            InputStream inputStreamOpenForReading = openForReading(form, scopedFile);
            try {
                outputStreamOpenForWriting = openForWriting(form, scopedFile);
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = inputStreamOpenForReading.read(bArr);
                    if (i > 0) {
                        outputStreamOpenForWriting.write(bArr, 0, i);
                    } else {
                        String str = LOG_TAG;
                        IOUtils.closeQuietly(str, inputStreamOpenForReading);
                        IOUtils.closeQuietly(str, outputStreamOpenForWriting);
                        return true;
                    }
                }
            } catch (Throwable th) {
                th = th;
                outputStream = outputStreamOpenForWriting;
                outputStreamOpenForWriting = inputStreamOpenForReading;
                String str2 = LOG_TAG;
                IOUtils.closeQuietly(str2, outputStreamOpenForWriting);
                IOUtils.closeQuietly(str2, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    public static String writeStreamToFile(InputStream inputStream, String str) throws IOException {
        File file = new File(str);
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            copy(inputStream, fileOutputStream);
            return file.toURI().toString();
        } finally {
            fileOutputStream.flush();
            fileOutputStream.close();
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream, 4096);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 4096);
        while (true) {
            int i = bufferedInputStream.read();
            if (i != -1) {
                bufferedOutputStream.write(i);
            } else {
                bufferedOutputStream.flush();
                return;
            }
        }
    }

    @Deprecated
    public static File getPictureFile(String str) throws IOException, FileException {
        Log.w(LOG_TAG, "Calling deprecated function getPictureFile", new IllegalAccessException());
        return getPictureFile(Form.getActiveForm(), str);
    }

    public static File getPictureFile(Form form, String str) throws IOException, FileException {
        return getFile(form, DIRECTORY_PICTURES, str);
    }

    public static ScopedFile getScopedPictureFile(Form form, String str) {
        return getScopedFile(form, DIRECTORY_PICTURES, str);
    }

    @Deprecated
    public static File getRecordingFile(String str) throws IOException, FileException {
        return getRecordingFile(Form.getActiveForm(), str);
    }

    public static File getRecordingFile(Form form, String str) throws IOException, FileException {
        return getFile(form, DIRECTORY_RECORDINGS, str);
    }

    @Deprecated
    public static File getDownloadFile(String str) throws IOException, FileException {
        Log.w(LOG_TAG, "Calling deprecated function getDownloadFile", new IllegalAccessException());
        return getDownloadFile(Form.getActiveForm(), str);
    }

    public static File getDownloadFile(Form form, String str) throws IOException, FileException {
        return getFile(form, DIRECTORY_DOWNLOADS, str);
    }

    private static File getFile(Form form, String str, String str2) throws FileException, IOException {
        File externalFile = getExternalFile(form, DOCUMENT_DIRECTORY + str + "/app_inventor_" + System.currentTimeMillis() + "." + str2);
        File parentFile = externalFile.getParentFile();
        if (parentFile.exists() || parentFile.mkdirs()) {
            return externalFile;
        }
        throw new IOException(a.i("Unable to create directory: ", parentFile.getAbsolutePath()));
    }

    private static ScopedFile getScopedFile(Form form, String str, String str2) {
        FileScope fileScopeDefaultFileScope = form.DefaultFileScope();
        if (fileScopeDefaultFileScope == FileScope.Legacy) {
            str = a.i("/My Documents/", str);
        } else if (fileScopeDefaultFileScope == FileScope.Asset) {
            fileScopeDefaultFileScope = FileScope.Private;
        }
        return new ScopedFile(fileScopeDefaultFileScope, str + "/app_inventor_" + System.currentTimeMillis() + "." + str2);
    }

    @Deprecated
    public static File getExternalFile(String str) throws IOException, FileException, SecurityException {
        return getExternalFile(Form.getActiveForm(), str);
    }

    public static File getExternalFile(Form form, String str) throws FileException {
        if (form.DefaultFileScope() == FileScope.Legacy && !str.startsWith("/")) {
            str = "/".concat(str);
        }
        String strResolveFileName = resolveFileName(form, str, form.DefaultFileScope());
        if (isExternalStorageUri(form, strResolveFileName)) {
            checkExternalStorageWriteable();
        }
        if (needsPermission(form, strResolveFileName)) {
            form.assertPermission("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        return new File(URI.create(strResolveFileName));
    }

    public static File getExternalFile(Form form, String str, boolean z, boolean z2) throws FileException, IOException {
        File externalFile = getExternalFile(form, str);
        File parentFile = externalFile.getParentFile();
        if (z && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException(a.i("Unable to create directory ", parentFile.getAbsolutePath()));
        }
        if (z2 && externalFile.exists() && !externalFile.delete()) {
            throw new IOException(a.i("Cannot overwrite existing file ", externalFile.getAbsolutePath()));
        }
        return externalFile;
    }

    public static File getExternalFile(Form form, String str, FileScope fileScope) throws PermissionException, FileException {
        return new File(URI.create(resolveFileName(form, str, fileScope)));
    }

    public static File getExternalFile(Form form, String str, FileScope fileScope, FileAccessMode fileAccessMode, boolean z) throws PermissionException, FileException, IOException {
        File externalFile = getExternalFile(form, str, fileScope);
        if (z && fileAccessMode != FileAccessMode.READ) {
            File parentFile = externalFile.getParentFile();
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException(a.i("Unable to create directory ", parentFile.getAbsolutePath()));
            }
        }
        return externalFile;
    }

    public static void checkExternalStorageWriteable() throws FileException {
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState)) {
            return;
        }
        if ("mounted_ro".equals(externalStorageState)) {
            throw new FileException(ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_READONLY);
        }
        throw new FileException(ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_NOT_AVAILABLE);
    }

    public static String resolveFileName(Form form, String str, FileScope fileScope) {
        File file;
        if (str.startsWith("//")) {
            file = new File(form.getAssetPath(str.substring(2)).substring(7));
        } else {
            if (str.startsWith("content:")) {
                return str;
            }
            if (fileScope == FileScope.App) {
                file = new File(form.getExternalFilesDir(""), str);
            } else if (fileScope == FileScope.Asset) {
                file = new File(form.getAssetPath(str).substring(7));
            } else if (fileScope == FileScope.Cache) {
                file = new File(form.getCachePath(str).substring(7));
            } else if ((fileScope == FileScope.Legacy || fileScope == null) && str.startsWith("/")) {
                file = new File(QUtil.getExternalStorageDir(form, false, true), str.substring(1));
            } else if (fileScope == FileScope.Private) {
                file = new File(form.getPrivatePath(str).substring(7));
            } else if (fileScope == FileScope.Shared) {
                file = new File(Environment.getExternalStorageDirectory() + "/" + str);
            } else if (!str.startsWith("/")) {
                file = new File(form.getPrivatePath(str).substring(7));
            } else {
                file = getExternalFile(form, str.substring(1), fileScope);
            }
        }
        return Uri.fromFile(file).toString();
    }

    public static String resolveFileName(Form form, ScopedFile scopedFile) {
        return resolveFileName(form, scopedFile.getFileName(), scopedFile.getScope());
    }

    public static boolean needsPermission(Form form, String str) {
        if (isAssetUri(form, str) || isPrivateUri(form, str) || isAppSpecificExternalUri(form, str)) {
            return false;
        }
        return isExternalStorageUri(form, str);
    }

    public static boolean needsReadPermission(Form form, String str) {
        return needsPermission(form, str);
    }

    /* renamed from: com.google.appinventor.components.runtime.util.FileUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$FileScope;

        static {
            int[] iArr = new int[FileScope.values().length];
            $SwitchMap$com$google$appinventor$components$common$FileScope = iArr;
            try {
                iArr[FileScope.Legacy.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.Shared.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.Asset.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.App.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.Cache.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.Private.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static boolean needsReadPermission(ScopedFile scopedFile) {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileScope[scopedFile.getScope().ordinal()];
        return i == 1 || i == 2;
    }

    public static boolean needsWritePermission(Form form, String str) {
        if (Build.VERSION.SDK_INT >= 30) {
            return false;
        }
        return needsPermission(form, str);
    }

    public static boolean needsWritePermission(ScopedFile scopedFile) {
        return needsWritePermission(scopedFile.getScope());
    }

    public static boolean needsWritePermission(FileScope fileScope) {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileScope[fileScope.ordinal()];
        return (i == 1 || i == 2) && Build.VERSION.SDK_INT < 30;
    }

    public static boolean needsExternalStorage(Form form, ScopedFile scopedFile) {
        return isExternalStorageUri(form, resolveFileName(form, scopedFile.getFileName(), scopedFile.getScope()));
    }

    public static boolean isAssetUri(Form form, String str) {
        return str.startsWith(form.getAssetPath(""));
    }

    public static boolean isPrivateUri(Form form, String str) {
        return str.startsWith(form.getPrivatePath(""));
    }

    public static boolean isAppSpecificExternalUri(Form form, String str) {
        return str.startsWith("file://" + form.getExternalFilesDir("").getAbsolutePath());
    }

    public static boolean isExternalStorageUri(Form form, String str) {
        if (!str.startsWith("file:///sdcard/") && !str.startsWith("file:///storage")) {
            if (!str.startsWith("file://" + Environment.getExternalStorageDirectory().getAbsolutePath())) {
                if (!str.startsWith("file://" + form.getExternalFilesDir("").getAbsolutePath())) {
                    return false;
                }
            }
        }
        return true;
    }

    public static class FileException extends RuntimeError {
        private final int msgNumber;

        public FileException(int i) {
            this.msgNumber = i;
        }

        public int getErrorMessageNumber() {
            return this.msgNumber;
        }
    }

    public static String getNeededPermission(Form form, String str, FileAccessMode fileAccessMode) {
        if (str == null) {
            throw new NullPointerException("path cannot be null");
        }
        if (str.startsWith("file:") || str.startsWith("/")) {
            if (str.startsWith("/")) {
                str = "file://".concat(str);
            }
            if (!isExternalStorageUri(form, str) || isAppSpecificExternalUri(form, str)) {
                return null;
            }
            if (fileAccessMode == FileAccessMode.READ) {
                return "android.permission.READ_EXTERNAL_STORAGE";
            }
            if (Build.VERSION.SDK_INT < 30) {
                return "android.permission.WRITE_EXTERNAL_STORAGE";
            }
        } else if (!str.contains(":")) {
            throw new IllegalArgumentException("path cannot be relative");
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean moveFile(Form form, ScopedFile scopedFile, ScopedFile scopedFile2) throws Throwable {
        OutputStream outputStream;
        if (Build.VERSION.SDK_INT >= 26) {
            FileScope scope = scopedFile.getScope();
            FileScope fileScope = FileScope.Shared;
            if (scope != fileScope && scopedFile2.getScope() != fileScope) {
                Files.move(Paths.get(scopedFile.resolve(form).toURI()), Paths.get(scopedFile2.resolve(form).toURI()), StandardCopyOption.REPLACE_EXISTING);
                return true;
            }
        }
        byte[] bArr = new byte[4096];
        OutputStream outputStreamOpenForWriting = null;
        try {
            InputStream inputStreamOpenForReading = openForReading(form, scopedFile);
            try {
                outputStreamOpenForWriting = openForWriting(form, scopedFile2);
                while (true) {
                    int i = inputStreamOpenForReading.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    outputStreamOpenForWriting.write(bArr, 0, i);
                }
                String str = LOG_TAG;
                IOUtils.closeQuietly(str, inputStreamOpenForReading);
                IOUtils.closeQuietly(str, outputStreamOpenForWriting);
                File fileResolve = scopedFile.resolve(form);
                File fileResolve2 = scopedFile2.resolve(form);
                if (fileResolve.delete()) {
                    return true;
                }
                if (fileResolve2.delete()) {
                    return false;
                }
                throw new IOException("Unable to delete fresh file");
            } catch (Throwable th) {
                th = th;
                outputStream = outputStreamOpenForWriting;
                outputStreamOpenForWriting = inputStreamOpenForReading;
                String str2 = LOG_TAG;
                IOUtils.closeQuietly(str2, outputStreamOpenForWriting);
                IOUtils.closeQuietly(str2, outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    public static boolean removeDirectory(File file, boolean z) throws IOException {
        boolean zDelete;
        file.getClass();
        if (!file.isDirectory()) {
            throw new IllegalArgumentException();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return file.delete();
        }
        if (!z && fileArrListFiles.length > 0) {
            return false;
        }
        boolean z2 = true;
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                zDelete = removeDirectory(file, z);
            } else {
                zDelete = file2.delete();
            }
            z2 &= zDelete;
        }
        return z2 && file.delete();
    }

    public static InputStream openForReading(Form form, ScopedFile scopedFile) throws IOException {
        Uri uriWithAppendedId;
        switch (AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileScope[scopedFile.getScope().ordinal()]) {
            case 1:
                return new FileInputStream(new File(Environment.getExternalStorageDirectory(), scopedFile.getFileName()));
            case 2:
                if (scopedFile.getFileName().startsWith("content:")) {
                    uriWithAppendedId = Uri.parse(scopedFile.getFileName());
                } else {
                    String[] strArrSplit = scopedFile.getFileName().split("/", 2);
                    Uri contentUriForPath = getContentUriForPath(strArrSplit[0]);
                    try {
                        Cursor cursorQuery = form.getContentResolver().query(contentUriForPath, new String[]{"_id", "_display_name"}, "_display_name = ?", new String[]{strArrSplit[1]}, null);
                        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
                        if (!cursorQuery.moveToFirst()) {
                            throw new FileNotFoundException("Unable to find shared file: " + scopedFile.getFileName());
                        }
                        uriWithAppendedId = ContentUris.withAppendedId(contentUriForPath, cursorQuery.getLong(columnIndexOrThrow));
                        IOUtils.closeQuietly(LOG_TAG, cursorQuery);
                    } catch (Throwable th) {
                        IOUtils.closeQuietly(LOG_TAG, null);
                        throw th;
                    }
                }
                return form.getContentResolver().openInputStream(uriWithAppendedId);
            case 3:
                return form.openAsset(scopedFile.getFileName());
            case 4:
                return new FileInputStream(new File(form.getExternalFilesDir(""), scopedFile.getFileName()));
            case 5:
                return new FileInputStream(new File(URI.create(form.getCachePath(scopedFile.getFileName()))));
            case 6:
                return new FileInputStream(new File(URI.create(form.getPrivatePath(scopedFile.getFileName()))));
            default:
                throw new IOException("Unsupported file scope: " + scopedFile.getScope());
        }
    }

    public static OutputStream openForWriting(Form form, ScopedFile scopedFile) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileScope[scopedFile.getScope().ordinal()]) {
            case 1:
                return new FileOutputStream(new File(Environment.getExternalStorageDirectory(), scopedFile.getFileName()));
            case 2:
                ContentResolver contentResolver = form.getContentResolver();
                if (scopedFile.getFileName().startsWith("content:")) {
                    Log.d(LOG_TAG, "Opening content URI: " + scopedFile.getFileName());
                    return contentResolver.openOutputStream(Uri.parse(scopedFile.getFileName()));
                }
                String[] strArrSplit = scopedFile.getFileName().split("/", 2);
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", strArrSplit[1]);
                contentValues.put("mime_type", "");
                contentValues.put("relative_path", strArrSplit[0]);
                Uri contentUriForPath = getContentUriForPath(strArrSplit[0]);
                if (contentUriForPath == null) {
                    throw new IOException(a.i("Unrecognized shared folder: ", strArrSplit[0]));
                }
                Uri uriInsert = contentResolver.insert(contentUriForPath, contentValues);
                if (uriInsert == null) {
                    throw new IOException("Unable to insert MediaStore entry for shared content");
                }
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                if (outputStreamOpenOutputStream != null) {
                    return outputStreamOpenOutputStream;
                }
                throw new IOException("Unable to open stream for writing");
            case 3:
                throw new IOException("Assets are read-only.");
            case 4:
                return new FileOutputStream(new File(form.getExternalFilesDir(""), scopedFile.getFileName()));
            case 5:
                return new FileOutputStream(new File(URI.create(form.getCachePath(scopedFile.getFileName()))));
            case 6:
                return new FileOutputStream(new File(URI.create(form.getPrivatePath(scopedFile.getFileName()))));
            default:
                throw new IOException("Unsupported file scope: " + scopedFile.getScope());
        }
    }

    public static List<String> listDirectory(Form form, ScopedFile scopedFile) throws IOException {
        String strReplace;
        Cursor cursorQuery = null;
        switch (AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileScope[scopedFile.getScope().ordinal()]) {
            case 1:
            case 4:
            case 5:
            case 6:
                break;
            case 2:
                String fileName = scopedFile.getFileName();
                if (fileName.startsWith("/")) {
                    fileName = fileName.substring(1);
                }
                String[] strArrSplit = fileName.split("/", 2);
                if (!fileName.endsWith("/")) {
                    fileName = fileName.concat("/");
                }
                ContentResolver contentResolver = form.getContentResolver();
                Uri contentUriForPath = getContentUriForPath(strArrSplit[0]);
                if (contentUriForPath == null) {
                    contentUriForPath = MediaStore.Files.getContentUri("external");
                }
                Uri uri = contentUriForPath;
                try {
                    String str = Build.VERSION.SDK_INT < 29 ? "_data" : "relative_path";
                    cursorQuery = contentResolver.query(uri, new String[]{"_display_name", str}, null, null, null);
                    int columnIndex = cursorQuery.getColumnIndex("_display_name");
                    int columnIndex2 = cursorQuery.getColumnIndex(str);
                    ArrayList arrayList = new ArrayList();
                    String str2 = QUtil.getExternalStoragePath(form, false, true) + "/";
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(columnIndex);
                        String string2 = cursorQuery.getString(columnIndex2);
                        if (Build.VERSION.SDK_INT < 29) {
                            strReplace = string2.replace(str2, "");
                        } else {
                            strReplace = string2 + string;
                        }
                        if (strReplace.startsWith(fileName)) {
                            arrayList.add(strReplace.substring(fileName.length()));
                        }
                    }
                    IOUtils.closeQuietly(LOG_TAG, cursorQuery);
                    return arrayList;
                } catch (Throwable th) {
                    IOUtils.closeQuietly(LOG_TAG, cursorQuery);
                    throw th;
                }
            case 3:
                if (!form.isRepl()) {
                    String[] list = form.getAssets().list(scopedFile.getFileName());
                    if (list != null) {
                        return Arrays.asList(list);
                    }
                    return Collections.EMPTY_LIST;
                }
                break;
            default:
                throw new IOException("Unsupported file scope: " + scopedFile.getScope());
        }
        String[] list2 = new File(URI.create(resolveFileName(form, scopedFile.getFileName(), scopedFile.getScope()))).list();
        if (list2 != null) {
            return Arrays.asList(list2);
        }
        return null;
    }

    private static Uri getContentUriForPath(String str) {
        if ("DCIM".equals(str) || DIRECTORY_PICTURES.equals(str) || "Screenshots".equals(str)) {
            if (Build.VERSION.SDK_INT >= 29) {
                return MediaStore.Images.Media.getContentUri("external");
            }
            return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        }
        if ("Videos".equals(str) || "Movies".equals(str)) {
            if (Build.VERSION.SDK_INT >= 29) {
                return MediaStore.Video.Media.getContentUri("external");
            }
            return MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        }
        if ("Audio".equals(str) || "Music".equals(str)) {
            if (Build.VERSION.SDK_INT >= 29) {
                return MediaStore.Audio.Media.getContentUri("external");
            }
            return MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        }
        if (Build.VERSION.SDK_INT >= 30 && ("Download".equals(str) || DIRECTORY_DOWNLOADS.equals(str))) {
            return MediaStore.Downloads.getContentUri("external");
        }
        return MediaStore.Files.getContentUri("external");
    }
}
