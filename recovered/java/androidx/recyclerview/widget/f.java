package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2154a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2155b;
    public final /* synthetic */ View c;
    public final /* synthetic */ int d;
    public final /* synthetic */ ViewPropertyAnimator e;
    public final /* synthetic */ DefaultItemAnimator f;

    public f(DefaultItemAnimator defaultItemAnimator, RecyclerView.ViewHolder viewHolder, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = defaultItemAnimator;
        this.f2154a = viewHolder;
        this.f2155b = i;
        this.c = view;
        this.d = i2;
        this.e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f.dispatchMoveStarting(this.f2154a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        int i = this.f2155b;
        View view = this.c;
        if (i != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.e.setListener(null);
        DefaultItemAnimator defaultItemAnimator = this.f;
        RecyclerView.ViewHolder viewHolder = this.f2154a;
        defaultItemAnimator.dispatchMoveFinished(viewHolder);
        defaultItemAnimator.p.remove(viewHolder);
        defaultItemAnimator.c();
    }
}
