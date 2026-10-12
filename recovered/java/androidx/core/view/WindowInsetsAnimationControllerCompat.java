package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;

/* loaded from: classes.dex */
public final class WindowInsetsAnimationControllerCompat {

    /* renamed from: a, reason: collision with root package name */
    public final a f1359a;

    public static class b {
    }

    public WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f1359a = new a(windowInsetsAnimationController);
    }

    @NonNull
    public Insets getHiddenStateInsets() {
        return this.f1359a.getHiddenStateInsets();
    }

    @NonNull
    public Insets getShownStateInsets() {
        return this.f1359a.getShownStateInsets();
    }

    @NonNull
    public Insets getCurrentInsets() {
        return this.f1359a.getCurrentInsets();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getCurrentFraction() {
        return this.f1359a.getCurrentFraction();
    }

    public float getCurrentAlpha() {
        return this.f1359a.getCurrentAlpha();
    }

    public int getTypes() {
        return this.f1359a.getTypes();
    }

    public void setInsetsAndAlpha(@Nullable Insets insets, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.f1359a.setInsetsAndAlpha(insets, f, f2);
    }

    public void finish(boolean z) {
        this.f1359a.f1360a.finish(z);
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public boolean isFinished() {
        return this.f1359a.f1360a.isFinished();
    }

    public boolean isCancelled() {
        return this.f1359a.f1360a.isCancelled();
    }

    @RequiresApi(30)
    public static class a extends b {

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsAnimationController f1360a;

        public a(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.f1360a = windowInsetsAnimationController;
        }

        @NonNull
        public Insets getHiddenStateInsets() {
            return Insets.toCompatInsets(this.f1360a.getHiddenStateInsets());
        }

        @NonNull
        public Insets getShownStateInsets() {
            return Insets.toCompatInsets(this.f1360a.getShownStateInsets());
        }

        @NonNull
        public Insets getCurrentInsets() {
            return Insets.toCompatInsets(this.f1360a.getCurrentInsets());
        }

        public float getCurrentFraction() {
            return this.f1360a.getCurrentFraction();
        }

        public float getCurrentAlpha() {
            return this.f1360a.getCurrentAlpha();
        }

        @SuppressLint({"WrongConstant"})
        public int getTypes() {
            return this.f1360a.getTypes();
        }

        public void setInsetsAndAlpha(@Nullable Insets insets, float f, float f2) {
            this.f1360a.setInsetsAndAlpha(insets == null ? null : insets.toPlatformInsets(), f, f2);
        }
    }
}
