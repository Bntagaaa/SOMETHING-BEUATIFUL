package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.Iterator;

/* loaded from: classes.dex */
class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialShapeDrawable f2760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f2761b;

    public a(AppBarLayout appBarLayout, MaterialShapeDrawable materialShapeDrawable) {
        this.f2761b = appBarLayout;
        this.f2760a = materialShapeDrawable;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        MaterialShapeDrawable materialShapeDrawable = this.f2760a;
        materialShapeDrawable.setElevation(fFloatValue);
        AppBarLayout appBarLayout = this.f2761b;
        Drawable drawable = appBarLayout.r;
        if (drawable instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) drawable).setElevation(fFloatValue);
        }
        Iterator it = appBarLayout.p.iterator();
        while (it.hasNext()) {
            ((AppBarLayout.LiftOnScrollListener) it.next()).onUpdate(fFloatValue, materialShapeDrawable.getResolvedTintColor());
        }
    }
}
