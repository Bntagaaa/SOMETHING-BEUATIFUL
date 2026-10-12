package com.google.zxing.client.android;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.zxing.Result;
import com.google.zxing.client.android.camera.CameraManager;
import java.util.EnumSet;

/* loaded from: classes.dex */
public final class CaptureActivityHandler extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final AppInvCaptureActivity f5104a;

    /* renamed from: b, reason: collision with root package name */
    public final d f5105b;
    public a c;
    public final CameraManager d;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f5106a = new a("PREVIEW", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final a f5107b = new a("SUCCESS", 1);
        public static final a c = new a("DONE", 2);
    }

    public CaptureActivityHandler(AppInvCaptureActivity appInvCaptureActivity, EnumSet enumSet, String str, CameraManager cameraManager) throws InterruptedException {
        this.f5104a = appInvCaptureActivity;
        d dVar = new d(appInvCaptureActivity, enumSet, str, new g(appInvCaptureActivity.c));
        this.f5105b = dVar;
        dVar.start();
        a aVar = a.f5107b;
        this.c = aVar;
        this.d = cameraManager;
        cameraManager.startPreview();
        if (this.c == aVar) {
            this.c = a.f5106a;
            try {
                dVar.d.await();
            } catch (InterruptedException unused) {
            }
            this.d.requestPreviewFrame(dVar.c, 1);
            this.f5104a.drawViewfinder();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) throws InterruptedException {
        int i = message.what;
        CameraManager cameraManager = this.d;
        d dVar = this.f5105b;
        a aVar = a.f5106a;
        if (i == 2) {
            this.c = aVar;
            dVar.getClass();
            try {
                dVar.d.await();
            } catch (InterruptedException unused) {
            }
            cameraManager.requestPreviewFrame(dVar.c, 1);
            return;
        }
        a aVar2 = a.f5107b;
        AppInvCaptureActivity appInvCaptureActivity = this.f5104a;
        if (i == 3) {
            Log.d("CaptureActivityHandler", "Got decode succeeded message");
            this.c = aVar2;
            Bundle data = message.getData();
            appInvCaptureActivity.handleDecode((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
            return;
        }
        if (i != 5) {
            if (i != 6) {
                return;
            }
            Log.d("CaptureActivityHandler", "Got return scan result message");
            appInvCaptureActivity.setResult(-1, (Intent) message.obj);
            appInvCaptureActivity.finish();
            return;
        }
        Log.d("CaptureActivityHandler", "Got restart preview message");
        if (this.c == aVar2) {
            this.c = aVar;
            dVar.getClass();
            try {
                dVar.d.await();
            } catch (InterruptedException unused2) {
            }
            cameraManager.requestPreviewFrame(dVar.c, 1);
            appInvCaptureActivity.drawViewfinder();
        }
    }

    public void quitSynchronously() {
        this.c = a.c;
        this.d.stopPreview();
        d dVar = this.f5105b;
        dVar.getClass();
        try {
            dVar.d.await();
        } catch (InterruptedException unused) {
        }
        Message.obtain(dVar.c, 4).sendToTarget();
        try {
            dVar.join(500L);
        } catch (InterruptedException unused2) {
        }
        removeMessages(3);
        removeMessages(2);
    }
}
