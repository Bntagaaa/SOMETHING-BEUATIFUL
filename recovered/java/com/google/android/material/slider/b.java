package com.google.android.material.slider;

import android.animation.ValueAnimator;
import androidx.core.view.ViewCompat;
import com.google.android.material.tooltip.TooltipDrawable;
import java.util.Iterator;

/* loaded from: classes.dex */
class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f3228a;

    public b(a aVar) {
        this.f3228a = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        a aVar = this.f3228a;
        Iterator it = aVar.k.iterator();
        while (it.hasNext()) {
            ((TooltipDrawable) it.next()).setRevealFraction(fFloatValue);
        }
        ViewCompat.postInvalidateOnAnimation(aVar);
    }
}
