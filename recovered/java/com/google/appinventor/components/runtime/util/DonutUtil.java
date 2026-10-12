package com.google.appinventor.components.runtime.util;

import android.graphics.Bitmap;
import android.view.View;

/* loaded from: classes.dex */
public class DonutUtil {
    private DonutUtil() {
    }

    public static void buildDrawingCache(View view, boolean z) {
        view.buildDrawingCache(z);
    }

    public static Bitmap getDrawingCache(View view, boolean z) {
        return view.getDrawingCache(z);
    }
}
