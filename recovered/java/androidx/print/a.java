package androidx.print;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.util.Log;

/* loaded from: classes.dex */
class a extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CancellationSignal f1945a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PrintAttributes f1946b;
    public final /* synthetic */ Bitmap c;
    public final /* synthetic */ PrintAttributes d;
    public final /* synthetic */ int e;
    public final /* synthetic */ ParcelFileDescriptor f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ PrintDocumentAdapter.WriteResultCallback f1947g;
    public final /* synthetic */ PrintHelper h;

    public a(PrintHelper printHelper, CancellationSignal cancellationSignal, PrintAttributes printAttributes, Bitmap bitmap, PrintAttributes printAttributes2, int i, ParcelFileDescriptor parcelFileDescriptor, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        this.h = printHelper;
        this.f1945a = cancellationSignal;
        this.f1946b = printAttributes;
        this.c = bitmap;
        this.d = printAttributes2;
        this.e = i;
        this.f = parcelFileDescriptor;
        this.f1947g = writeResultCallback;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00da A[Catch: all -> 0x00d5, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00d5, blocks: (B:3:0x000a, B:6:0x0013, B:26:0x00cc, B:28:0x00d1, B:34:0x00da, B:37:0x00ea, B:38:0x00ed, B:44:0x00f6, B:46:0x00fb, B:50:0x0102, B:51:0x0105, B:10:0x002b, B:12:0x0033, B:16:0x0065, B:18:0x007d, B:20:0x0092, B:24:0x00bc, B:36:0x00de, B:23:0x00ae, B:19:0x0088, B:15:0x0044), top: B:57:0x000a, inners: #0 }] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Throwable doInBackground(java.lang.Void... r15) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.print.a.doInBackground(java.lang.Void[]):java.lang.Throwable");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Throwable th) {
        boolean zIsCanceled = this.f1945a.isCanceled();
        PrintDocumentAdapter.WriteResultCallback writeResultCallback = this.f1947g;
        if (zIsCanceled) {
            writeResultCallback.onWriteCancelled();
        } else if (th == null) {
            writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
        } else {
            Log.e("PrintHelper", "Error writing printed content", th);
            writeResultCallback.onWriteFailed(null);
        }
    }
}
