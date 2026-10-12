package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.transition.VisibilityAnimatorProvider;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
abstract class n<P extends VisibilityAnimatorProvider> extends Visibility {
    public final VisibilityAnimatorProvider K;
    public VisibilityAnimatorProvider L;
    public final ArrayList M = new ArrayList();

    public int r(boolean z) {
        return 0;
    }

    public n(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.K = p;
        this.L = visibilityAnimatorProvider;
    }

    @NonNull
    public P getPrimaryAnimatorProvider() {
        return (P) this.K;
    }

    @Nullable
    public VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return this.L;
    }

    public void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.L = visibilityAnimatorProvider;
    }

    public void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.M.add(visibilityAnimatorProvider);
    }

    public boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return this.M.remove(visibilityAnimatorProvider);
    }

    public void clearAdditionalAnimatorProvider() {
        this.M.clear();
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return p(viewGroup, view, true);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return p(viewGroup, view, false);
    }

    public final AnimatorSet p(ViewGroup viewGroup, View view, boolean z) {
        int iResolveThemeDuration;
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        o(arrayList, this.K, viewGroup, view, z);
        o(arrayList, this.L, viewGroup, view, z);
        Iterator it = this.M.iterator();
        while (it.hasNext()) {
            o(arrayList, (VisibilityAnimatorProvider) it.next(), viewGroup, view, z);
        }
        Context context = viewGroup.getContext();
        int iR = r(z);
        RectF rectF = u.f3500a;
        if (iR != 0 && getDuration() == -1 && (iResolveThemeDuration = MotionUtils.resolveThemeDuration(context, iR, -1)) != -1) {
            setDuration(iResolveThemeDuration);
        }
        int iS = s();
        TimeInterpolator timeInterpolatorQ = q();
        if (iS != 0 && getInterpolator() == null) {
            setInterpolator(MotionUtils.resolveThemeInterpolator(context, iS, timeInterpolatorQ));
        }
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    public static void o(ArrayList arrayList, VisibilityAnimatorProvider visibilityAnimatorProvider, ViewGroup viewGroup, View view, boolean z) {
        Animator animatorCreateDisappear;
        if (visibilityAnimatorProvider == null) {
            return;
        }
        if (z) {
            animatorCreateDisappear = visibilityAnimatorProvider.createAppear(viewGroup, view);
        } else {
            animatorCreateDisappear = visibilityAnimatorProvider.createDisappear(viewGroup, view);
        }
        if (animatorCreateDisappear != null) {
            arrayList.add(animatorCreateDisappear);
        }
    }

    public int s() {
        return 0;
    }

    public TimeInterpolator q() {
        return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }
}
