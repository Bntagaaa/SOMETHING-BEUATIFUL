package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class o extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimatorListener f1411a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1412b;

    public o(ViewPropertyAnimatorListener viewPropertyAnimatorListener, View view) {
        this.f1411a = viewPropertyAnimatorListener;
        this.f1412b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1411a.onAnimationCancel(this.f1412b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1411a.onAnimationEnd(this.f1412b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1411a.onAnimationStart(this.f1412b);
    }
}
