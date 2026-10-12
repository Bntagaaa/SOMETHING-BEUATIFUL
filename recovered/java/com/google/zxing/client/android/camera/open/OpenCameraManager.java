package com.google.zxing.client.android.camera.open;

import com.google.zxing.client.android.common.PlatformSupportManager;

/* loaded from: classes.dex */
public final class OpenCameraManager extends PlatformSupportManager<OpenCameraInterface> {
    public OpenCameraManager() {
        super(OpenCameraInterface.class, new a());
        addImplementationClass(9, "com.google.zxing.client.android.camera.open.GingerbreadOpenCameraInterface");
    }
}
