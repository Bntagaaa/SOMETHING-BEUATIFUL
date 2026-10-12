package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f3137a;

    public f(g gVar) {
        this.f3137a = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        g gVar = this.f3137a;
        super/*android.graphics.drawable.Drawable*/.setVisible(false, false);
        ArrayList arrayList = gVar.f;
        if (arrayList == null || gVar.f3140g) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Animatable2Compat.AnimationCallback) it.next()).onAnimationEnd(gVar);
        }
    }
}
