package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Shader;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ComplexColorCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Shader f1000a;

    /* renamed from: b, reason: collision with root package name */
    public final ColorStateList f1001b;
    public int c;

    public ComplexColorCompat(Shader shader, ColorStateList colorStateList, int i) {
        this.f1000a = shader;
        this.f1001b = colorStateList;
        this.c = i;
    }

    @Nullable
    public Shader getShader() {
        return this.f1000a;
    }

    @ColorInt
    public int getColor() {
        return this.c;
    }

    public void setColor(@ColorInt int i) {
        this.c = i;
    }

    public boolean isGradient() {
        return this.f1000a != null;
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return this.f1000a == null && (colorStateList = this.f1001b) != null && colorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        if (!isStateful()) {
            return false;
        }
        ColorStateList colorStateList = this.f1001b;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (colorForState == this.c) {
            return false;
        }
        this.c = colorForState;
        return true;
    }

    public boolean willDraw() {
        return isGradient() || this.c != 0;
    }

    @Nullable
    public static ComplexColorCompat inflate(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
        try {
            return a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x016e, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r3.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.content.res.ComplexColorCompat a(android.content.res.Resources r27, int r28, android.content.res.Resources.Theme r29) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ComplexColorCompat.a(android.content.res.Resources, int, android.content.res.Resources$Theme):androidx.core.content.res.ComplexColorCompat");
    }
}
