package androidx.core.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ViewPropertyAnimatorCompat {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f1340a;

    public ViewPropertyAnimatorCompat(View view) {
        this.f1340a = new WeakReference(view);
    }

    public static class e implements ViewPropertyAnimatorListener {
        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(@NonNull View view) {
            throw null;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        @SuppressLint({"WrongConstant"})
        public void onAnimationEnd(@NonNull View view) {
            throw null;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(@NonNull View view) {
            Object tag = view.getTag(2113929216);
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = tag instanceof ViewPropertyAnimatorListener ? (ViewPropertyAnimatorListener) tag : null;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationCancel(view);
            }
        }
    }

    @NonNull
    public ViewPropertyAnimatorCompat setDuration(long j) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat alpha(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat alphaBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().alphaBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat translationX(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().translationX(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat translationY(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat withEndAction(@NonNull Runnable runnable) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            a.a(view.animate(), runnable);
        }
        return this;
    }

    public long getDuration() {
        View view = (View) this.f1340a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    @NonNull
    public ViewPropertyAnimatorCompat setInterpolator(@Nullable Interpolator interpolator) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    @Nullable
    public Interpolator getInterpolator() {
        View view = (View) this.f1340a.get();
        if (view != null) {
            return b.a(view.animate());
        }
        return null;
    }

    @NonNull
    public ViewPropertyAnimatorCompat setStartDelay(long j) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public long getStartDelay() {
        View view = (View) this.f1340a.get();
        if (view != null) {
            return view.animate().getStartDelay();
        }
        return 0L;
    }

    @NonNull
    public ViewPropertyAnimatorCompat rotation(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().rotation(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat rotationBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().rotationBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat rotationX(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().rotationX(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat rotationXBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().rotationXBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat rotationY(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().rotationY(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat rotationYBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().rotationYBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat scaleX(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().scaleX(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat scaleXBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().scaleXBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat scaleY(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().scaleY(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat scaleYBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().scaleYBy(f);
        }
        return this;
    }

    public void cancel() {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    @NonNull
    public ViewPropertyAnimatorCompat x(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().x(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat xBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().xBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat y(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().y(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat yBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().yBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat translationXBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().translationXBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat translationYBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().translationYBy(f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat translationZBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            d.b(view.animate(), f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat translationZ(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            d.a(view.animate(), f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat z(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            d.c(view.animate(), f);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat zBy(float f) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            d.d(view.animate(), f);
        }
        return this;
    }

    public void start() {
        View view = (View) this.f1340a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    @NonNull
    @SuppressLint({"WrongConstant"})
    public ViewPropertyAnimatorCompat withLayer() {
        View view = (View) this.f1340a.get();
        if (view != null) {
            a.b(view.animate());
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat withStartAction(@NonNull Runnable runnable) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            a.c(view.animate(), runnable);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat setListener(@Nullable ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = (View) this.f1340a.get();
        if (view != null) {
            if (viewPropertyAnimatorListener != null) {
                view.animate().setListener(new o(viewPropertyAnimatorListener, view));
                return this;
            }
            view.animate().setListener(null);
        }
        return this;
    }

    @NonNull
    public ViewPropertyAnimatorCompat setUpdateListener(@Nullable final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        final View view = (View) this.f1340a.get();
        if (view != null) {
            c.a(view.animate(), viewPropertyAnimatorUpdateListener != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.n
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    viewPropertyAnimatorUpdateListener.onAnimationUpdate(view);
                }
            } : null);
        }
        return this;
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, Runnable runnable) {
            return viewPropertyAnimator.withEndAction(runnable);
        }

        @DoNotInline
        public static ViewPropertyAnimator b(ViewPropertyAnimator viewPropertyAnimator) {
            return viewPropertyAnimator.withLayer();
        }

        @DoNotInline
        public static ViewPropertyAnimator c(ViewPropertyAnimator viewPropertyAnimator, Runnable runnable) {
            return viewPropertyAnimator.withStartAction(runnable);
        }
    }

    @RequiresApi(18)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Interpolator a(ViewPropertyAnimator viewPropertyAnimator) {
            return (Interpolator) viewPropertyAnimator.getInterpolator();
        }
    }

    @RequiresApi(21)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static ViewPropertyAnimator b(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.translationZBy(f);
        }

        @DoNotInline
        public static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.translationZ(f);
        }

        @DoNotInline
        public static ViewPropertyAnimator c(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.z(f);
        }

        @DoNotInline
        public static ViewPropertyAnimator d(ViewPropertyAnimator viewPropertyAnimator, float f) {
            return viewPropertyAnimator.zBy(f);
        }
    }

    @RequiresApi(19)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
            return viewPropertyAnimator.setUpdateListener(animatorUpdateListener);
        }
    }
}
