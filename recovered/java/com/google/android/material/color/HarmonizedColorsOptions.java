package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class HarmonizedColorsOptions {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f2890a;

    /* renamed from: b, reason: collision with root package name */
    public final HarmonizedColorAttributes f2891b;
    public final int c;

    @NonNull
    public static HarmonizedColorsOptions createMaterialDefaults() {
        return new Builder().setColorAttributes(HarmonizedColorAttributes.createMaterialDefaults()).build();
    }

    public HarmonizedColorsOptions(Builder builder) {
        this.f2890a = builder.f2892a;
        this.f2891b = builder.f2893b;
        this.c = builder.c;
    }

    @NonNull
    @ColorRes
    public int[] getColorResourceIds() {
        return this.f2890a;
    }

    @Nullable
    public HarmonizedColorAttributes getColorAttributes() {
        return this.f2891b;
    }

    @AttrRes
    public int getColorAttributeToHarmonizeWith() {
        return this.c;
    }

    public static class Builder {

        /* renamed from: b, reason: collision with root package name */
        public HarmonizedColorAttributes f2893b;

        /* renamed from: a, reason: collision with root package name */
        public int[] f2892a = new int[0];
        public int c = R.attr.colorPrimary;

        @NonNull
        public Builder setColorResourceIds(@NonNull @ColorRes int[] iArr) {
            this.f2892a = iArr;
            return this;
        }

        @NonNull
        public Builder setColorAttributes(@Nullable HarmonizedColorAttributes harmonizedColorAttributes) {
            this.f2893b = harmonizedColorAttributes;
            return this;
        }

        @NonNull
        public Builder setColorAttributeToHarmonizeWith(@AttrRes int i) {
            this.c = i;
            return this;
        }

        @NonNull
        public HarmonizedColorsOptions build() {
            return new HarmonizedColorsOptions(this);
        }
    }
}
