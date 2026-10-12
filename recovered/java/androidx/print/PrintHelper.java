package androidx.print;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class PrintHelper {

    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_COLOR = 2;

    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f1934g;
    public static final boolean h;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1935a;

    /* renamed from: b, reason: collision with root package name */
    public BitmapFactory.Options f1936b = null;
    public final Object c = new Object();
    public int d = 2;
    public int e = 2;
    public int f = 1;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    public static boolean systemSupportsPrint() {
        return true;
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f1934g = i > 23;
        h = i != 23;
    }

    public PrintHelper(@NonNull Context context) {
        this.f1935a = context;
    }

    public void setScaleMode(int i) {
        this.d = i;
    }

    public int getScaleMode() {
        return this.d;
    }

    public void setColorMode(int i) {
        this.e = i;
    }

    public int getColorMode() {
        return this.e;
    }

    public void setOrientation(int i) {
        this.f = i;
    }

    public int getOrientation() {
        int i = this.f;
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap) {
        printBitmap(str, bitmap, (OnPrintFinishCallback) null);
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap, @Nullable OnPrintFinishCallback onPrintFinishCallback) {
        PrintAttributes.MediaSize mediaSize;
        if (bitmap == null) {
            return;
        }
        PrintManager printManager = (PrintManager) this.f1935a.getSystemService("print");
        if (bitmap.getWidth() <= bitmap.getHeight()) {
            mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
        } else {
            mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
        }
        printManager.print(str, new a(str, this.d, bitmap, onPrintFinishCallback), new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.e).build());
    }

    @RequiresApi(19)
    public class a extends PrintDocumentAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final String f1937a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1938b;
        public final Bitmap c;
        public final OnPrintFinishCallback d;
        public PrintAttributes e;

        public a(String str, int i, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
            this.f1937a = str;
            this.f1938b = i;
            this.c = bitmap;
            this.d = onPrintFinishCallback;
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            this.e = printAttributes2;
            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f1937a).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.d(this.e, this.f1938b, this.c, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            OnPrintFinishCallback onPrintFinishCallback = this.d;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.onFinish();
            }
        }
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri) throws FileNotFoundException {
        printBitmap(str, uri, (OnPrintFinishCallback) null);
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri, @Nullable OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        b bVar = new b(str, uri, onPrintFinishCallback, this.d);
        PrintManager printManager = (PrintManager) this.f1935a.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.e);
        int i = this.f;
        if (i == 1 || i == 0) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (i == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(str, bVar, builder.build());
    }

    @RequiresApi(19)
    public class b extends PrintDocumentAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final String f1939a;

        /* renamed from: b, reason: collision with root package name */
        public final Uri f1940b;
        public final OnPrintFinishCallback c;
        public final int d;
        public PrintAttributes e;
        public AsyncTask f;

        /* renamed from: g, reason: collision with root package name */
        public Bitmap f1941g = null;

        public b(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback, int i) {
            this.f1939a = str;
            this.f1940b = uri;
            this.c = onPrintFinishCallback;
            this.d = i;
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) throws Throwable {
            synchronized (this) {
                try {
                    this.e = printAttributes2;
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            }
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.f1941g != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f1939a).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
            } else {
                this.f = new a(cancellationSignal, printAttributes2, printAttributes, layoutResultCallback).execute(new Uri[0]);
            }
        }

        public class a extends AsyncTask<Uri, Boolean, Bitmap> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ CancellationSignal f1942a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PrintAttributes f1943b;
            public final /* synthetic */ PrintAttributes c;
            public final /* synthetic */ PrintDocumentAdapter.LayoutResultCallback d;

            public a(CancellationSignal cancellationSignal, PrintAttributes printAttributes, PrintAttributes printAttributes2, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback) {
                this.f1942a = cancellationSignal;
                this.f1943b = printAttributes;
                this.c = printAttributes2;
                this.d = layoutResultCallback;
            }

            /* renamed from: androidx.print.PrintHelper$b$a$a, reason: collision with other inner class name */
            public class C0027a implements CancellationSignal.OnCancelListener {
                public C0027a() {
                }

                @Override // android.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    a aVar = a.this;
                    b.this.a();
                    aVar.cancel(false);
                }
            }

            @Override // android.os.AsyncTask
            public void onPreExecute() {
                this.f1942a.setOnCancelListener(new C0027a());
            }

            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Uri... uriArr) {
                try {
                    b bVar = b.this;
                    return PrintHelper.this.c(bVar.f1940b);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
            @Override // android.os.AsyncTask
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onPostExecute(android.graphics.Bitmap r11) {
                /*
                    r10 = this;
                    super.onPostExecute(r11)
                    r0 = 1
                    if (r11 == 0) goto L13
                    boolean r1 = androidx.print.PrintHelper.f1934g
                    if (r1 == 0) goto L15
                    androidx.print.PrintHelper$b r1 = androidx.print.PrintHelper.b.this
                    androidx.print.PrintHelper r1 = androidx.print.PrintHelper.this
                    int r1 = r1.f
                    if (r1 != 0) goto L13
                    goto L15
                L13:
                    r3 = r11
                    goto L53
                L15:
                    monitor-enter(r10)
                    androidx.print.PrintHelper$b r1 = androidx.print.PrintHelper.b.this     // Catch: java.lang.Throwable -> L4f
                    android.print.PrintAttributes r1 = r1.e     // Catch: java.lang.Throwable -> L4f
                    android.print.PrintAttributes$MediaSize r1 = r1.getMediaSize()     // Catch: java.lang.Throwable -> L4f
                    monitor-exit(r10)     // Catch: java.lang.Throwable -> L4f
                    if (r1 == 0) goto L13
                    boolean r1 = r1.isPortrait()
                    int r2 = r11.getWidth()
                    int r3 = r11.getHeight()
                    if (r2 > r3) goto L31
                    r2 = 1
                    goto L32
                L31:
                    r2 = 0
                L32:
                    if (r1 == r2) goto L13
                    android.graphics.Matrix r8 = new android.graphics.Matrix
                    r8.<init>()
                    r1 = 1119092736(0x42b40000, float:90.0)
                    r8.postRotate(r1)
                    int r6 = r11.getWidth()
                    int r7 = r11.getHeight()
                    r4 = 0
                    r5 = 0
                    r9 = 1
                    r3 = r11
                    android.graphics.Bitmap r11 = android.graphics.Bitmap.createBitmap(r3, r4, r5, r6, r7, r8, r9)
                    goto L54
                L4f:
                    r0 = move-exception
                    r11 = r0
                    monitor-exit(r10)     // Catch: java.lang.Throwable -> L4f
                    throw r11
                L53:
                    r11 = r3
                L54:
                    androidx.print.PrintHelper$b r1 = androidx.print.PrintHelper.b.this
                    r1.f1941g = r11
                    r1 = 0
                    if (r11 == 0) goto L7f
                    android.print.PrintDocumentInfo$Builder r11 = new android.print.PrintDocumentInfo$Builder
                    androidx.print.PrintHelper$b r2 = androidx.print.PrintHelper.b.this
                    java.lang.String r2 = r2.f1939a
                    r11.<init>(r2)
                    android.print.PrintDocumentInfo$Builder r11 = r11.setContentType(r0)
                    android.print.PrintDocumentInfo$Builder r11 = r11.setPageCount(r0)
                    android.print.PrintDocumentInfo r11 = r11.build()
                    android.print.PrintAttributes r2 = r10.f1943b
                    android.print.PrintAttributes r3 = r10.c
                    boolean r2 = r2.equals(r3)
                    r0 = r0 ^ r2
                    android.print.PrintDocumentAdapter$LayoutResultCallback r2 = r10.d
                    r2.onLayoutFinished(r11, r0)
                    goto L84
                L7f:
                    android.print.PrintDocumentAdapter$LayoutResultCallback r11 = r10.d
                    r11.onLayoutFailed(r1)
                L84:
                    androidx.print.PrintHelper$b r11 = androidx.print.PrintHelper.b.this
                    r11.f = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.print.PrintHelper.b.a.onPostExecute(android.graphics.Bitmap):void");
            }

            @Override // android.os.AsyncTask
            public void onCancelled(Bitmap bitmap) {
                this.d.onLayoutCancelled();
                b.this.f = null;
            }
        }

        public final void a() {
            synchronized (PrintHelper.this.c) {
                try {
                    BitmapFactory.Options options = PrintHelper.this.f1936b;
                    if (options != null) {
                        if (Build.VERSION.SDK_INT < 24) {
                            options.requestCancelDecode();
                        }
                        PrintHelper.this.f1936b = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            super.onFinish();
            a();
            AsyncTask asyncTask = this.f;
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            OnPrintFinishCallback onPrintFinishCallback = this.c;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.onFinish();
            }
            Bitmap bitmap = this.f1941g;
            if (bitmap != null) {
                bitmap.recycle();
                this.f1941g = null;
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.d(this.e, this.d, this.f1941g, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    public final void d(PrintAttributes printAttributes, int i, Bitmap bitmap, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        PrintAttributes printAttributesBuild;
        if (h) {
            printAttributesBuild = printAttributes;
        } else {
            PrintAttributes.Builder minMargins = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
            if (printAttributes.getColorMode() != 0) {
                minMargins.setColorMode(printAttributes.getColorMode());
            }
            if (Build.VERSION.SDK_INT >= 23 && printAttributes.getDuplexMode() != 0) {
                minMargins.setDuplexMode(printAttributes.getDuplexMode());
            }
            printAttributesBuild = minMargins.setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
        }
        new androidx.print.a(this, cancellationSignal, printAttributesBuild, bitmap, printAttributes, i, parcelFileDescriptor, writeResultCallback).execute(new Void[0]);
    }

    public final Bitmap c(Uri uri) throws Throwable {
        BitmapFactory.Options options;
        if (uri == null || this.f1935a == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = true;
        b(uri, options2);
        int i = options2.outWidth;
        int i2 = options2.outHeight;
        if (i > 0 && i2 > 0) {
            int iMax = Math.max(i, i2);
            int i3 = 1;
            while (iMax > 3500) {
                iMax >>>= 1;
                i3 <<= 1;
            }
            if (i3 > 0 && Math.min(i, i2) / i3 > 0) {
                synchronized (this.c) {
                    options = new BitmapFactory.Options();
                    this.f1936b = options;
                    options.inMutable = true;
                    options.inSampleSize = i3;
                }
                try {
                    Bitmap bitmapB = b(uri, options);
                    synchronized (this.c) {
                        this.f1936b = null;
                    }
                    return bitmapB;
                } catch (Throwable th) {
                    synchronized (this.c) {
                        this.f1936b = null;
                        throw th;
                    }
                }
            }
        }
        return null;
    }

    public final Bitmap b(Uri uri, BitmapFactory.Options options) throws Throwable {
        Context context;
        if (uri == null || (context = this.f1935a) == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        InputStream inputStream = null;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                        return bitmapDecodeStream;
                    } catch (IOException e) {
                        Log.w("PrintHelper", "close fail ", e);
                    }
                }
                return bitmapDecodeStream;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        Log.w("PrintHelper", "close fail ", e2);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap a(Bitmap bitmap, int i) {
        if (i != 1) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }
}
