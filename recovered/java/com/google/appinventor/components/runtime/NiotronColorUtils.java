package com.google.appinventor.components.runtime;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import java.util.Random;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A non-visible component that performs operations like conversion between formats, lightening, and darkening on color value.", iconName = "images/colorUtils.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronColorUtils extends AndroidNonvisibleComponent {
    public NiotronColorUtils(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Converts the hex color to int")
    public int HexToColor(String str) {
        try {
            return Color.parseColor(str);
        } catch (Exception unused) {
            throw new YailRuntimeError("Invalid hex value given in HexToColor Block", "ColorUtils");
        }
    }

    @SimpleFunction(description = "Set Alpha value of a color from 0-255")
    public int SetAlpha(int i, int i2) {
        return ColorUtils.setAlphaComponent(i, i2);
    }

    @SimpleFunction(description = "Converts int color to HEX")
    public String ColorToHex(int i) {
        return String.format("#%06X", Integer.valueOf(i & 16777215));
    }

    @SimpleFunction(description = "Return an arbitrary/random Colour")
    public Object Arbitrary() {
        Random random = new Random();
        return Integer.valueOf(Color.argb(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)));
    }

    @SimpleFunction(description = "Return fusion/mixture of two colors on a given ratio between 0.0 and 1.0")
    public int Fusion(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((Color.red(i2) * f2) + (Color.red(i) * f)), (int) ((Color.green(i2) * f2) + (Color.green(i) * f)), (int) ((Color.blue(i2) * f2) + (Color.blue(i) * f)));
    }
}
