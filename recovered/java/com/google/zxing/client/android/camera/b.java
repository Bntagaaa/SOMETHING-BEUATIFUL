package com.google.zxing.client.android.camera;

import android.hardware.Camera;
import java.util.Comparator;

/* loaded from: classes.dex */
class b implements Comparator<Camera.Size> {
    @Override // java.util.Comparator
    public int compare(Camera.Size size, Camera.Size size2) {
        int i = size.height * size.width;
        int i2 = size2.height * size2.width;
        if (i2 < i) {
            return -1;
        }
        return i2 > i ? 1 : 0;
    }
}
