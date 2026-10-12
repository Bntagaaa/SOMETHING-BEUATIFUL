package com.google.android.material.tabs;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3290a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f3291b;
    public final /* synthetic */ TabLayout.c c;

    public e(TabLayout.c cVar, View view, View view2) {
        this.c = cVar;
        this.f3290a = view;
        this.f3291b = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        int i = TabLayout.c.f;
        this.c.c(this.f3290a, this.f3291b, animatedFraction);
    }
}
