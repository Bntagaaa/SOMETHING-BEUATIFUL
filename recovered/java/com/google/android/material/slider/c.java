package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tooltip.TooltipDrawable;
import java.util.Iterator;

/* loaded from: classes.dex */
class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f3229a;

    public c(a aVar) {
        this.f3229a = aVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        a aVar = this.f3229a;
        Iterator it = aVar.k.iterator();
        while (it.hasNext()) {
            ViewUtils.getContentViewOverlay(aVar).remove((TooltipDrawable) it.next());
        }
    }
}
