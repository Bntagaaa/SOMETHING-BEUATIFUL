package com.google.zxing.client.android.camera;

import android.content.Context;
import android.hardware.Camera;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.google.zxing.client.android.common.executor.AsyncTaskExecInterface;
import com.google.zxing.client.android.common.executor.AsyncTaskExecManager;
import java.util.ArrayList;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes.dex */
final class a implements Camera.AutoFocusCallback {
    public static final ArrayList f;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5123a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5124b;
    public final Camera c;
    public AsyncTaskC0148a d;
    public final AsyncTaskExecInterface e = new AsyncTaskExecManager().build();

    static {
        ArrayList arrayList = new ArrayList(2);
        f = arrayList;
        arrayList.add(DebugKt.DEBUG_PROPERTY_VALUE_AUTO);
        arrayList.add("macro");
    }

    public a(Context context, Camera camera) {
        this.c = camera;
        PreferenceManager.getDefaultSharedPreferences(context);
        String focusMode = camera.getParameters().getFocusMode();
        boolean zContains = f.contains(focusMode);
        this.f5124b = zContains;
        Log.i("a", "Current focus mode '" + focusMode + "'; use auto focus? " + zContains);
        a();
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public synchronized void onAutoFocus(boolean z, Camera camera) {
        if (this.f5123a) {
            AsyncTaskC0148a asyncTaskC0148a = new AsyncTaskC0148a();
            this.d = asyncTaskC0148a;
            this.e.execute(asyncTaskC0148a, new Object[0]);
        }
    }

    public final synchronized void a() {
        if (this.f5124b) {
            this.f5123a = true;
            try {
                this.c.autoFocus(this);
            } catch (RuntimeException e) {
                Log.w("a", "Unexpected exception while focusing", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0019 A[Catch: all -> 0x000b, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0005, B:11:0x0015, B:13:0x0019, B:14:0x0020, B:10:0x000e), top: B:21:0x0001, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b() {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.f5124b     // Catch: java.lang.Throwable -> Lb
            if (r0 == 0) goto L15
            android.hardware.Camera r0 = r3.c     // Catch: java.lang.Throwable -> Lb java.lang.RuntimeException -> Ld
            r0.cancelAutoFocus()     // Catch: java.lang.Throwable -> Lb java.lang.RuntimeException -> Ld
            goto L15
        Lb:
            r0 = move-exception
            goto L25
        Ld:
            r0 = move-exception
            java.lang.String r1 = "a"
            java.lang.String r2 = "Unexpected exception while cancelling focusing"
            android.util.Log.w(r1, r2, r0)     // Catch: java.lang.Throwable -> Lb
        L15:
            com.google.zxing.client.android.camera.a$a r0 = r3.d     // Catch: java.lang.Throwable -> Lb
            if (r0 == 0) goto L20
            r1 = 1
            r0.cancel(r1)     // Catch: java.lang.Throwable -> Lb
            r0 = 0
            r3.d = r0     // Catch: java.lang.Throwable -> Lb
        L20:
            r0 = 0
            r3.f5123a = r0     // Catch: java.lang.Throwable -> Lb
            monitor-exit(r3)
            return
        L25:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> Lb
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.android.camera.a.b():void");
    }

    /* renamed from: com.google.zxing.client.android.camera.a$a, reason: collision with other inner class name */
    public final class AsyncTaskC0148a extends AsyncTask<Object, Object, Object> {
        public AsyncTaskC0148a() {
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) throws InterruptedException {
            try {
                Thread.sleep(2000L);
            } catch (InterruptedException unused) {
            }
            synchronized (a.this) {
                try {
                    a aVar = a.this;
                    if (aVar.f5123a) {
                        aVar.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        }
    }
}
