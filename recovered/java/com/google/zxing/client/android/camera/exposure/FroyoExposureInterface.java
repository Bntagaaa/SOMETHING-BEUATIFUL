package com.google.zxing.client.android.camera.exposure;

import android.hardware.Camera;
import android.util.Log;

/* loaded from: classes.dex */
public final class FroyoExposureInterface implements ExposureInterface {
    @Override // com.google.zxing.client.android.camera.exposure.ExposureInterface
    public void setExposure(Camera.Parameters parameters, boolean z) {
        int iMin;
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        if (minExposureCompensation == 0 && maxExposureCompensation == 0) {
            Log.i("FroyoExposureInterface", "Camera does not support exposure compensation");
            return;
        }
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (z) {
            iMin = Math.max((int) (0.0f / exposureCompensationStep), minExposureCompensation);
        } else {
            iMin = Math.min((int) (1.5f / exposureCompensationStep), maxExposureCompensation);
        }
        Log.i("FroyoExposureInterface", "Setting exposure compensation to " + iMin + " / " + (exposureCompensationStep * iMin));
        parameters.setExposureCompensation(iMin);
    }
}
