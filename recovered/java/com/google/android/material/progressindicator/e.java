package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f3136a;

    public e(g gVar) {
        this.f3136a = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        g gVar = this.f3136a;
        ArrayList arrayList = gVar.f;
        if (arrayList == null || gVar.f3140g) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Animatable2Compat.AnimationCallback) it.next()).onAnimationStart(gVar);
        }
    }
}
