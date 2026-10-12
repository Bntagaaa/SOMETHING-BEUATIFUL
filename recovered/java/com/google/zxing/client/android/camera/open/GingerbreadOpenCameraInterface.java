package com.google.zxing.client.android.camera.open;

import android.hardware.Camera;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class GingerbreadOpenCameraInterface implements OpenCameraInterface {
    @Override // com.google.zxing.client.android.camera.open.OpenCameraInterface
    public Camera open() throws IllegalAccessException, NoSuchFieldException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls;
        try {
            Class<?> cls2 = Class.forName("android.hardware.Camera");
            try {
                try {
                    int iIntValue = ((Integer) cls2.getMethod("getNumberOfCameras", new Class[0]).invoke(null, new Object[0])).intValue();
                    if (iIntValue == 0) {
                        Log.w("GingerbreadOpenCamera", "No cameras!");
                        return null;
                    }
                    Class<?> cls3 = Class.forName("android.hardware.Camera$CameraInfo");
                    Field field = cls3.getField("facing");
                    int i = 0;
                    while (true) {
                        cls = Integer.TYPE;
                        if (i >= iIntValue) {
                            break;
                        }
                        Object objNewInstance = cls3.getConstructor(new Class[0]).newInstance(new Object[0]);
                        cls2.getMethod("getCameraInfo", cls, cls3).invoke(null, Integer.valueOf(i), objNewInstance);
                        if (field.getInt(objNewInstance) == cls3.getDeclaredField("CAMERA_FACING_BACK").getInt(cls3)) {
                            break;
                        }
                        i++;
                    }
                    if (i >= iIntValue) {
                        Log.i("GingerbreadOpenCamera", "No camera facing back; returning camera #0");
                        i = 0;
                    } else {
                        Log.i("GingerbreadOpenCamera", "Opening camera #" + i);
                    }
                    try {
                        return (Camera) cls2.getMethod("open", cls).invoke(null, Integer.valueOf(i));
                    } catch (NoSuchMethodException e) {
                        throw new RuntimeException(e);
                    }
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException(e2);
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
                    cause.printStackTrace();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    throw new RuntimeException(cause);
                }
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException(e4);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
            throw new RuntimeException(e5);
        }
    }
}
