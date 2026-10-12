package com.google.zxing.client.android.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.client.android.camera.open.OpenCameraManager;
import java.io.IOException;

/* loaded from: classes.dex */
public final class CameraManager {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5120a;

    /* renamed from: b, reason: collision with root package name */
    public final c f5121b;
    public Camera c;
    public a d;
    public Rect e;
    public Rect f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5122g;
    public boolean h;
    public int i;
    public int j;
    public final d k;

    public CameraManager(Context context) {
        this.f5120a = context;
        c cVar = new c(context);
        this.f5121b = cVar;
        this.k = new d(cVar);
    }

    public synchronized void openDriver(SurfaceHolder surfaceHolder) throws IOException {
        int i;
        try {
            Camera cameraOpen = this.c;
            if (cameraOpen == null) {
                cameraOpen = new OpenCameraManager().build().open();
                if (cameraOpen == null) {
                    throw new IOException();
                }
                this.c = cameraOpen;
            }
            cameraOpen.setPreviewDisplay(surfaceHolder);
            if (!this.f5122g) {
                this.f5122g = true;
                this.f5121b.c(cameraOpen);
                int i2 = this.i;
                if (i2 > 0 && (i = this.j) > 0) {
                    setManualFramingRect(i2, i);
                    this.i = 0;
                    this.j = 0;
                }
            }
            Camera.Parameters parameters = cameraOpen.getParameters();
            String strFlatten = parameters == null ? null : parameters.flatten();
            try {
                this.f5121b.d(false, cameraOpen);
            } catch (RuntimeException unused) {
                Log.w("CameraManager", "Camera rejected parameters. Setting only minimal safe-mode parameters");
                Log.i("CameraManager", "Resetting to saved camera params: " + strFlatten);
                if (strFlatten != null) {
                    Camera.Parameters parameters2 = cameraOpen.getParameters();
                    parameters2.unflatten(strFlatten);
                    try {
                        cameraOpen.setParameters(parameters2);
                        this.f5121b.d(true, cameraOpen);
                    } catch (RuntimeException unused2) {
                        Log.w("CameraManager", "Camera rejected even safe-mode parameters! No configuration");
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean isOpen() {
        return this.c != null;
    }

    public synchronized void closeDriver() {
        Camera camera = this.c;
        if (camera != null) {
            camera.release();
            this.c = null;
            this.e = null;
            this.f = null;
        }
    }

    public synchronized void startPreview() {
        Camera camera = this.c;
        if (camera != null && !this.h) {
            camera.startPreview();
            this.h = true;
            this.d = new a(this.f5120a, this.c);
        }
    }

    public synchronized void stopPreview() {
        try {
            a aVar = this.d;
            if (aVar != null) {
                aVar.b();
                this.d = null;
            }
            Camera camera = this.c;
            if (camera != null && this.h) {
                camera.stopPreview();
                d dVar = this.k;
                dVar.f5129b = null;
                dVar.c = 0;
                this.h = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void setTorch(boolean z) {
        try {
            if (this.c != null) {
                a aVar = this.d;
                if (aVar != null) {
                    aVar.b();
                }
                Camera camera = this.c;
                Camera.Parameters parameters = camera.getParameters();
                c.a(parameters, z);
                camera.setParameters(parameters);
                a aVar2 = this.d;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void requestPreviewFrame(Handler handler, int i) {
        Camera camera = this.c;
        if (camera != null && this.h) {
            d dVar = this.k;
            dVar.f5129b = handler;
            dVar.c = i;
            camera.setOneShotPreviewCallback(dVar);
        }
    }

    public synchronized Rect getFramingRect() {
        try {
            if (this.e == null) {
                if (this.c == null) {
                    return null;
                }
                Point point = this.f5121b.f5127b;
                if (point == null) {
                    return null;
                }
                int i = point.x;
                int i2 = (i * 3) / 4;
                int i3 = 240;
                if (i2 < 240) {
                    i2 = 240;
                }
                int i4 = point.y;
                int i5 = (i4 * 3) / 4;
                if (i5 >= 240) {
                    i3 = i5;
                }
                int i6 = (i - i2) / 2;
                int i7 = (i4 - i3) / 2;
                Rect rect = new Rect(i6, i7, i2 + i6, i3 + i7);
                this.e = rect;
                Log.d("CameraManager", "Calculated framing rect: " + rect);
            }
            return this.e;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized Rect getFramingRectInPreview() {
        if (this.f == null) {
            Rect framingRect = getFramingRect();
            if (framingRect == null) {
                return null;
            }
            Rect rect = new Rect(framingRect);
            c cVar = this.f5121b;
            Point point = cVar.c;
            Point point2 = cVar.f5127b;
            if (point != null && point2 != null) {
                int i = rect.left;
                int i2 = point.x;
                int i3 = point2.x;
                rect.left = (i * i2) / i3;
                rect.right = (rect.right * i2) / i3;
                int i4 = rect.top;
                int i5 = point.y;
                int i6 = point2.y;
                rect.top = (i4 * i5) / i6;
                rect.bottom = (rect.bottom * i5) / i6;
                this.f = rect;
            }
            return null;
        }
        return this.f;
    }

    public synchronized void setManualFramingRect(int i, int i2) {
        try {
            if (this.f5122g) {
                Point point = this.f5121b.f5127b;
                int i3 = point.x;
                if (i > i3) {
                    i = i3;
                }
                int i4 = point.y;
                if (i2 > i4) {
                    i2 = i4;
                }
                int i5 = (i3 - i) / 2;
                int i6 = (i4 - i2) / 2;
                Rect rect = new Rect(i5, i6, i + i5, i2 + i6);
                this.e = rect;
                Log.d("CameraManager", "Calculated manual framing rect: " + rect);
                this.f = null;
            } else {
                this.i = i;
                this.j = i2;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public PlanarYUVLuminanceSource buildLuminanceSource(byte[] bArr, int i, int i2) {
        Rect framingRectInPreview = getFramingRectInPreview();
        if (framingRectInPreview == null) {
            return null;
        }
        return new PlanarYUVLuminanceSource(bArr, i, i2, framingRectInPreview.left, framingRectInPreview.top, framingRectInPreview.width(), framingRectInPreview.height(), false);
    }
}
