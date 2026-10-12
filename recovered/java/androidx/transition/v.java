package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.transition.Transition;

/* loaded from: classes.dex */
class v {
    public static ObjectAnimator a(View view, TransitionValues transitionValues, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Visibility visibility) {
        float f5;
        float f6;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) transitionValues.view.getTag(R.id.transition_position)) != null) {
            f5 = (r5[0] - i) + translationX;
            f6 = (r5[1] - i2) + translationY;
        } else {
            f5 = f;
            f6 = f2;
        }
        int iRound = Math.round(f5 - translationX) + i;
        int iRound2 = Math.round(f6 - translationY) + i2;
        view.setTranslationX(f5);
        view.setTranslationY(f6);
        if (f5 == f3 && f6 == f4) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f5, f3), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f6, f4));
        a aVar = new a(view, transitionValues.view, iRound, iRound2, translationX, translationY);
        visibility.addListener(aVar);
        objectAnimatorOfPropertyValuesHolder.addListener(aVar);
        objectAnimatorOfPropertyValuesHolder.addPauseListener(aVar);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(timeInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public static class a extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public final View f2310a;

        /* renamed from: b, reason: collision with root package name */
        public final View f2311b;
        public final int c;
        public final int d;
        public int[] e;
        public float f;

        /* renamed from: g, reason: collision with root package name */
        public float f2312g;
        public final float h;
        public final float i;

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        public a(View view, View view2, int i, int i2, float f, float f2) {
            this.f2311b = view;
            this.f2310a = view2;
            this.c = i - Math.round(view.getTranslationX());
            this.d = i2 - Math.round(view.getTranslationY());
            this.h = f;
            this.i = f2;
            int i3 = R.id.transition_position;
            int[] iArr = (int[]) view2.getTag(i3);
            this.e = iArr;
            if (iArr != null) {
                view2.setTag(i3, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.e == null) {
                this.e = new int[2];
            }
            int[] iArr = this.e;
            float f = this.c;
            View view = this.f2311b;
            iArr[0] = Math.round(view.getTranslationX() + f);
            this.e[1] = Math.round(view.getTranslationY() + this.d);
            this.f2310a.setTag(R.id.transition_position, this.e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            View view = this.f2311b;
            this.f = view.getTranslationX();
            this.f2312g = view.getTranslationY();
            view.setTranslationX(this.h);
            view.setTranslationY(this.i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            float f = this.f;
            View view = this.f2311b;
            view.setTranslationX(f);
            view.setTranslationY(this.f2312g);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            float f = this.h;
            View view = this.f2311b;
            view.setTranslationX(f);
            view.setTranslationY(this.i);
            transition.removeListener(this);
        }
    }

    private v() {
    }
}
