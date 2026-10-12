package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class EdgeEffectCompat {

    /* renamed from: a, reason: collision with root package name */
    public final EdgeEffect f1428a;

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.f1428a = new EdgeEffect(context);
    }

    @NonNull
    public static EdgeEffect create(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.create(context, attributeSet);
        }
        return new EdgeEffect(context);
    }

    public static float getDistance(@NonNull EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.getDistance(edgeEffect);
        }
        return 0.0f;
    }

    @Deprecated
    public void setSize(int i, int i2) {
        this.f1428a.setSize(i, i2);
    }

    @Deprecated
    public boolean isFinished() {
        return this.f1428a.isFinished();
    }

    @Deprecated
    public void finish() {
        this.f1428a.finish();
    }

    @Deprecated
    public boolean onPull(float f) {
        this.f1428a.onPull(f);
        return true;
    }

    @Deprecated
    public boolean onPull(float f, float f2) {
        onPull(this.f1428a, f, f2);
        return true;
    }

    public static void onPull(@NonNull EdgeEffect edgeEffect, float f, float f2) {
        a.a(edgeEffect, f, f2);
    }

    public static float onPullDistance(@NonNull EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.onPullDistance(edgeEffect, f, f2);
        }
        onPull(edgeEffect, f, f2);
        return f;
    }

    @Deprecated
    public boolean onRelease() {
        EdgeEffect edgeEffect = this.f1428a;
        edgeEffect.onRelease();
        return edgeEffect.isFinished();
    }

    @Deprecated
    public boolean onAbsorb(int i) {
        this.f1428a.onAbsorb(i);
        return true;
    }

    @Deprecated
    public boolean draw(Canvas canvas) {
        return this.f1428a.draw(canvas);
    }

    @RequiresApi(31)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static EdgeEffect create(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        @DoNotInline
        public static float onPullDistance(EdgeEffect edgeEffect, float f, float f2) {
            try {
                return edgeEffect.onPullDistance(f, f2);
            } catch (Throwable unused) {
                edgeEffect.onPull(f, f2);
                return 0.0f;
            }
        }

        @DoNotInline
        public static float getDistance(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable unused) {
                return 0.0f;
            }
        }
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f, f2);
        }
    }
}
