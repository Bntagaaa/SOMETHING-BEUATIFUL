package com.google.appinventor.components.runtime.util;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ScreenDensityUtil {
    public static final int DEFAULT_NORMAL_SHORT_DIMENSION = 320;
    private static final String LOG_TAG = "ScreenDensityUtil";
    public static final float MAXIMUM_ASPECT_RATIO = 1.7791667f;

    private ScreenDensityUtil() {
    }

    public static float computeCompatibleScaling(Context context) throws NoSuchMethodException, SecurityException {
        int i;
        int i2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        getRawScreenDim(context, point);
        int i3 = point.x;
        int i4 = point.y;
        if (i3 < i4) {
            i2 = i3;
            i = i4;
        } else {
            i = i3;
            i2 = i4;
        }
        int i5 = (int) ((displayMetrics.density * 320.0f) + 0.5f);
        float f = i / i2;
        if (f > 1.7791667f) {
            f = 1.7791667f;
        }
        int i6 = (int) ((i5 * f) + 0.5f);
        if (i3 >= i4) {
            i6 = i5;
            i5 = i6;
        }
        return Math.max(1.0f, Math.min(Math.min(i3 / i5, i4 / i6), 1.7791667f));
    }

    private static void getRawScreenDim(Context context, Point point) throws NoSuchMethodException, SecurityException {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int level = SdkLevel.getLevel();
        if (level >= 24) {
            defaultDisplay.getMetrics(displayMetrics);
            point.x = displayMetrics.widthPixels;
            point.y = displayMetrics.heightPixels;
            return;
        }
        if (level >= 17) {
            JellybeanUtil.getRealSize(defaultDisplay, point);
            return;
        }
        if (level > 10) {
            try {
                Method method = Display.class.getMethod("getRawHeight", new Class[0]);
                try {
                    try {
                        point.x = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                        point.y = ((Integer) method.invoke(defaultDisplay, new Object[0])).intValue();
                    } catch (IllegalAccessException e) {
                        Log.e(LOG_TAG, "Error reading raw screen size", e);
                    }
                } catch (IllegalArgumentException e2) {
                    Log.e(LOG_TAG, "Error reading raw screen size", e2);
                } catch (InvocationTargetException e3) {
                    Log.e(LOG_TAG, "Error reading raw screen size", e3);
                }
                return;
            } catch (NoSuchMethodException e4) {
                Log.e(LOG_TAG, "Error reading raw screen size", e4);
                return;
            }
        }
        point.x = defaultDisplay.getWidth();
        point.y = defaultDisplay.getHeight();
    }
}
