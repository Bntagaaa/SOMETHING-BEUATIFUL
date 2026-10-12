package com.google.zxing.client.android.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;

/* loaded from: classes.dex */
final class d implements Camera.PreviewCallback {

    /* renamed from: a, reason: collision with root package name */
    public final c f5128a;

    /* renamed from: b, reason: collision with root package name */
    public Handler f5129b;
    public int c;

    public d(c cVar) {
        this.f5128a = cVar;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Point point = this.f5128a.c;
        Handler handler = this.f5129b;
        if (point != null && handler != null) {
            handler.obtainMessage(this.c, point.x, point.y, bArr).sendToTarget();
            this.f5129b = null;
        } else {
            Log.d("d", "Got preview callback, but no handler or resolution available");
        }
    }
}
