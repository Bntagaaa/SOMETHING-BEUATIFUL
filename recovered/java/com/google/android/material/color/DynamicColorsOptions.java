package com.google.android.material.color;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.color.DynamicColors;

/* loaded from: classes.dex */
public class DynamicColorsOptions {
    public static final DynamicColors.Precondition d = new a();
    public static final DynamicColors.OnAppliedCallback e = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f2884a;

    /* renamed from: b, reason: collision with root package name */
    public final DynamicColors.Precondition f2885b;
    public final DynamicColors.OnAppliedCallback c;

    public class a implements DynamicColors.Precondition {
        @Override // com.google.android.material.color.DynamicColors.Precondition
        public boolean shouldApplyDynamicColors(@NonNull Activity activity, int i) {
            return true;
        }
    }

    public class b implements DynamicColors.OnAppliedCallback {
        @Override // com.google.android.material.color.DynamicColors.OnAppliedCallback
        public void onApplied(@NonNull Activity activity) {
        }
    }

    public DynamicColorsOptions(Builder builder) {
        this.f2884a = builder.f2886a;
        this.f2885b = builder.f2887b;
        this.c = builder.c;
    }

    @StyleRes
    public int getThemeOverlay() {
        return this.f2884a;
    }

    @NonNull
    public DynamicColors.Precondition getPrecondition() {
        return this.f2885b;
    }

    @NonNull
    public DynamicColors.OnAppliedCallback getOnAppliedCallback() {
        return this.c;
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public int f2886a;

        /* renamed from: b, reason: collision with root package name */
        public DynamicColors.Precondition f2887b = DynamicColorsOptions.d;
        public DynamicColors.OnAppliedCallback c = DynamicColorsOptions.e;

        @NonNull
        public Builder setThemeOverlay(@StyleRes int i) {
            this.f2886a = i;
            return this;
        }

        @NonNull
        public Builder setPrecondition(@NonNull DynamicColors.Precondition precondition) {
            this.f2887b = precondition;
            return this;
        }

        @NonNull
        public Builder setOnAppliedCallback(@NonNull DynamicColors.OnAppliedCallback onAppliedCallback) {
            this.c = onAppliedCallback;
            return this;
        }

        @NonNull
        public DynamicColorsOptions build() {
            return new DynamicColorsOptions(this);
        }
    }
}
