package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

/* loaded from: classes.dex */
public final class HarmonizedColorAttributes {
    public static final int[] c = {R.attr.colorError, R.attr.colorOnError, R.attr.colorErrorContainer, R.attr.colorOnErrorContainer};

    /* renamed from: a, reason: collision with root package name */
    public final int[] f2888a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2889b;

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr) {
        return new HarmonizedColorAttributes(0, iArr);
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        return new HarmonizedColorAttributes(i, iArr);
    }

    @NonNull
    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(c, R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    public HarmonizedColorAttributes(int i, int[] iArr) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.f2888a = iArr;
        this.f2889b = i;
    }

    @NonNull
    public int[] getAttributes() {
        return this.f2888a;
    }

    @StyleRes
    public int getThemeOverlay() {
        return this.f2889b;
    }
}
