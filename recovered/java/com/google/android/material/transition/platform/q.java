package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.RectF;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.transition.platform.VisibilityAnimatorProvider;
import java.util.ArrayList;
import java.util.Iterator;

@RequiresApi(21)
/* loaded from: classes.dex */
abstract class q<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: a, reason: collision with root package name */
    public final VisibilityAnimatorProvider f3483a;

    /* renamed from: b, reason: collision with root package name */
    public VisibilityAnimatorProvider f3484b;
    public final ArrayList c = new ArrayList();

    public int d(boolean z) {
        return 0;
    }

    public q(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f3483a = p;
        this.f3484b = visibilityAnimatorProvider;
    }

    @NonNull
    public P getPrimaryAnimatorProvider() {
        return (P) this.f3483a;
    }

    @Nullable
    public VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return this.f3484b;
    }

    public void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f3484b = visibilityAnimatorProvider;
    }

    public void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.c.add(visibilityAnimatorProvider);
    }

    public boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return this.c.remove(visibilityAnimatorProvider);
    }

    public void clearAdditionalAnimatorProvider() {
        this.c.clear();
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return b(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return b(viewGroup, view, false);
    }

    public final AnimatorSet b(ViewGroup viewGroup, View view, boolean z) {
        int iResolveThemeDuration;
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        a(arrayList, this.f3483a, viewGroup, view, z);
        a(arrayList, this.f3484b, viewGroup, view, z);
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            a(arrayList, (VisibilityAnimatorProvider) it.next(), viewGroup, view, z);
        }
        Context context = viewGroup.getContext();
        int iD = d(z);
        RectF rectF = x.f3494a;
        if (iD != 0 && getDuration() == -1 && (iResolveThemeDuration = MotionUtils.resolveThemeDuration(context, iD, -1)) != -1) {
            setDuration(iResolveThemeDuration);
        }
        int iE = e();
        TimeInterpolator timeInterpolatorC = c();
        if (iE != 0 && getInterpolator() == null) {
            setInterpolator(MotionUtils.resolveThemeInterpolator(context, iE, timeInterpolatorC));
        }
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    public static void a(ArrayList arrayList, VisibilityAnimatorProvider visibilityAnimatorProvider, ViewGroup viewGroup, View view, boolean z) {
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

    public int e() {
        return 0;
    }

    public TimeInterpolator c() {
        return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }
}
