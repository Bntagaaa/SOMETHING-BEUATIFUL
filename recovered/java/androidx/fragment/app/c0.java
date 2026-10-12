package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
class c0 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1681b;
    public final /* synthetic */ Fragment c;

    public c0(ViewGroup viewGroup, View view, Fragment fragment) {
        this.f1680a = viewGroup;
        this.f1681b = view;
        this.c = fragment;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1680a.endViewTransition(this.f1681b);
        animator.removeListener(this);
        Fragment fragment = this.c;
        View view = fragment.H;
        if (view == null || !fragment.z) {
            return;
        }
        view.setVisibility(8);
    }
}
