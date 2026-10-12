package com.google.zxing.client.android.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes.dex */
final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5126a;

    /* renamed from: b, reason: collision with root package name */
    public Point f5127b;
    public Point c;

    public c(Context context) {
        this.f5126a = context;
    }

    public final void c(Camera camera) {
        Point point;
        Camera.Parameters parameters = camera.getParameters();
        Display defaultDisplay = ((WindowManager) this.f5126a.getSystemService("window")).getDefaultDisplay();
        if (SdkLevel.getLevel() < 13) {
            int width = defaultDisplay.getWidth();
            int height = defaultDisplay.getHeight();
            if (width < height) {
                Log.i("CameraConfiguration", "Display reports portrait orientation; assuming this is incorrect");
                width = height;
                height = width;
            }
            this.f5127b = new Point(width, height);
        } else {
            Point point2 = new Point();
            this.f5127b = point2;
            HoneycombMR2Util.getSize(defaultDisplay, point2);
        }
        Log.i("CameraConfiguration", "Screen resolution: " + this.f5127b);
        Point point3 = this.f5127b;
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        if (supportedPreviewSizes == null) {
            Log.w("CameraConfiguration", "Device returned no supported preview sizes; using default");
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize == null) {
                throw new IllegalStateException("Parameters contained no preview size!");
            }
            point = new Point(previewSize.width, previewSize.height);
        } else {
            ArrayList arrayList = new ArrayList(supportedPreviewSizes);
            Collections.sort(arrayList, new b());
            if (Log.isLoggable("CameraConfiguration", 4)) {
                StringBuilder sb = new StringBuilder();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Camera.Size size = (Camera.Size) it.next();
                    sb.append(size.width);
                    sb.append('x');
                    sb.append(size.height);
                    sb.append(' ');
                }
                Log.i("CameraConfiguration", "Supported preview sizes: " + ((Object) sb));
            }
            double d = point3.x / point3.y;
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (it2.hasNext()) {
                    Camera.Size size2 = (Camera.Size) it2.next();
                    int i = size2.width;
                    int i2 = size2.height;
                    if (i * i2 < 153600) {
                        it2.remove();
                    } else {
                        boolean z = i < i2;
                        int i3 = z ? i2 : i;
                        int i4 = z ? i : i2;
                        double d2 = d;
                        if (Math.abs((i3 / i4) - d2) > 0.15d) {
                            it2.remove();
                        } else if (i3 == point3.x && i4 == point3.y) {
                            point = new Point(i, i2);
                            Log.i("CameraConfiguration", "Found preview size exactly matching screen size: " + point);
                            break;
                        }
                        d = d2;
                    }
                } else if (!arrayList.isEmpty()) {
                    Camera.Size size3 = (Camera.Size) arrayList.get(0);
                    point = new Point(size3.width, size3.height);
                    Log.i("CameraConfiguration", "Using largest suitable preview size: " + point);
                } else {
                    Camera.Size previewSize2 = parameters.getPreviewSize();
                    if (previewSize2 == null) {
                        throw new IllegalStateException("Parameters contained no preview size!");
                    }
                    point = new Point(previewSize2.width, previewSize2.height);
                    Log.i("CameraConfiguration", "No suitable preview sizes, using default: " + point);
                }
            }
        }
        this.c = point;
        Log.i("CameraConfiguration", "Camera resolution: " + point);
    }

    public final void d(boolean z, Camera camera) {
        String strB;
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            Log.w("CameraConfiguration", "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        _COROUTINE.a.C("Initial camera parameters: ", parameters.flatten(), "CameraConfiguration");
        if (z) {
            Log.w("CameraConfiguration", "In camera config safe mode -- most settings will not be honored");
        }
        a(parameters, false);
        if (z) {
            strB = b(parameters.getSupportedFocusModes(), DebugKt.DEBUG_PROPERTY_VALUE_AUTO);
        } else {
            strB = b(parameters.getSupportedFocusModes(), "continuous-picture", "continuous-video", DebugKt.DEBUG_PROPERTY_VALUE_AUTO);
        }
        if (!z && strB == null) {
            strB = b(parameters.getSupportedFocusModes(), "macro", "edof");
        }
        if (strB != null) {
            parameters.setFocusMode(strB);
        }
        Log.i("CameraConfiguration", "Setting Camera Preview Size to: " + this.c);
        Point point = this.c;
        parameters.setPreviewSize(point.x, point.y);
        camera.setParameters(parameters);
    }

    public static void a(Camera.Parameters parameters, boolean z) {
        String strB;
        if (z) {
            strB = b(parameters.getSupportedFlashModes(), "torch", DebugKt.DEBUG_PROPERTY_VALUE_ON);
        } else {
            strB = b(parameters.getSupportedFlashModes(), DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        }
        if (strB != null) {
            parameters.setFlashMode(strB);
        }
    }

    public static String b(List list, String... strArr) {
        String str;
        Log.i("CameraConfiguration", "Supported values: " + list);
        if (list != null) {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                str = strArr[i];
                if (list.contains(str)) {
                    break;
                }
            }
            str = null;
        } else {
            str = null;
        }
        _COROUTINE.a.C("Settable value: ", str, "CameraConfiguration");
        return str;
    }
}
