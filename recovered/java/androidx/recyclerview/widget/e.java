package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2152a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2153b;
    public final /* synthetic */ ViewPropertyAnimator c;
    public final /* synthetic */ DefaultItemAnimator d;

    public e(View view, ViewPropertyAnimator viewPropertyAnimator, DefaultItemAnimator defaultItemAnimator, RecyclerView.ViewHolder viewHolder) {
        this.d = defaultItemAnimator;
        this.f2152a = viewHolder;
        this.f2153b = view;
        this.c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.d.dispatchAddStarting(this.f2152a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2153b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.c.setListener(null);
        DefaultItemAnimator defaultItemAnimator = this.d;
        RecyclerView.ViewHolder viewHolder = this.f2152a;
        defaultItemAnimator.dispatchAddFinished(viewHolder);
        defaultItemAnimator.o.remove(viewHolder);
        defaultItemAnimator.c();
    }
}
