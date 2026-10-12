package com.google.appinventor.components.runtime.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.Html;
import android.widget.TextView;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class TextViewUtil {
    private TextViewUtil() {
    }

    public static void setAlignment(TextView textView, int i, boolean z) {
        int i2;
        if (i != 0) {
            i2 = 1;
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalArgumentException();
                }
                i2 = 5;
            }
        } else {
            i2 = 3;
        }
        textView.setGravity((z ? 16 : 48) | i2);
        textView.invalidate();
    }

    public static void setBackgroundColor(TextView textView, int i) {
        textView.setBackgroundColor(i);
        textView.invalidate();
    }

    public static boolean isEnabled(TextView textView) {
        return textView.isEnabled();
    }

    public static void setEnabled(TextView textView, boolean z) {
        textView.setEnabled(z);
        textView.invalidate();
    }

    public static float getFontSize(TextView textView, Context context) {
        return textView.getTextSize() / context.getResources().getDisplayMetrics().scaledDensity;
    }

    public static void setFontSize(TextView textView, float f) {
        textView.setTextSize(f);
        textView.requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2 */
    public static void setFontTypeface(Form form, TextView textView, String str, boolean z, boolean z2) {
        Typeface typefaceCreateFromAsset = Typeface.DEFAULT;
        if (str != null && !str.equals("0") && !str.equalsIgnoreCase("default")) {
            typefaceCreateFromAsset = (str.equals("1") || str.equalsIgnoreCase("sans serif")) ? Typeface.SANS_SERIF : (str.equals("2") || str.equalsIgnoreCase("serif")) ? Typeface.SERIF : (str.equals("3") || str.equalsIgnoreCase("monospace")) ? Typeface.MONOSPACE : (str.equals(Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN) || str.equalsIgnoreCase("Material Icons")) ? Typeface.createFromAsset(form.getAssets(), "MaterialIcons-Regular.ttf") : (str.equals(Component.TYPEFACE_FONT_AWESOME) || str.equalsIgnoreCase("Font Awesome")) ? Typeface.createFromAsset(form.getAssets(), "fontawesome-webfont.ttf") : getTypeFace(form, str);
        }
        if (z2) {
            z = (z ? 1 : 0) | 2;
        }
        textView.setTypeface(Typeface.create(typefaceCreateFromAsset, z));
        textView.requestLayout();
    }

    public static Typeface getTypeFace(Form form, String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        if (!str.contains("/")) {
            if (form instanceof ReplForm) {
                try {
                    return Typeface.createFromFile(new File(MediaUtil.fileUrlToFilePath(form.getAssetPath(str))));
                } catch (IOException unused) {
                    return null;
                }
            }
            return Typeface.createFromAsset(form.$context().getAssets(), str);
        }
        return Typeface.createFromFile(new File(str));
    }

    public static String getText(TextView textView) {
        return textView.getText().toString();
    }

    public static void setTextHTML(TextView textView, String str) {
        textView.setText(Html.fromHtml(str));
        textView.requestLayout();
    }

    public static void setText(TextView textView, String str) {
        textView.setText(str);
        textView.requestLayout();
    }

    public static void setPadding(TextView textView, int i) {
        textView.setPadding(i, i, 0, 0);
        textView.requestLayout();
    }

    public static void setTextColor(TextView textView, int i) {
        textView.setTextColor(i);
        textView.invalidate();
    }

    public static void setTextColors(TextView textView, ColorStateList colorStateList) {
        textView.setTextColor(colorStateList);
    }

    public static void setMinWidth(TextView textView, int i) {
        textView.setMinWidth(i);
        textView.setMinimumWidth(i);
    }

    public static void setMinHeight(TextView textView, int i) {
        textView.setMinHeight(i);
        textView.setMinimumHeight(i);
    }

    public static void setMinSize(TextView textView, int i, int i2) {
        setMinWidth(textView, i);
        setMinHeight(textView, i2);
    }
}
