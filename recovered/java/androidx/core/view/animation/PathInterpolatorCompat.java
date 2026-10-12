package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    @NonNull
    public static Interpolator create(@NonNull Path path) {
        return a.c(path);
    }

    @NonNull
    public static Interpolator create(float f, float f2) {
        return a.a(f, f2);
    }

    @NonNull
    public static Interpolator create(float f, float f2, float f3, float f4) {
        return a.b(f, f2, f3, f4);
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static PathInterpolator c(Path path) {
            return new PathInterpolator(path);
        }

        @DoNotInline
        public static PathInterpolator a(float f, float f2) {
            return new PathInterpolator(f, f2);
        }

        @DoNotInline
        public static PathInterpolator b(float f, float f2, float f3, float f4) {
            return new PathInterpolator(f, f2, f3, f4);
        }
    }
}
