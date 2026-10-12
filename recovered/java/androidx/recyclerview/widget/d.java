package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class d extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2150a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2151b;
    public final /* synthetic */ View c;
    public final /* synthetic */ DefaultItemAnimator d;

    public d(View view, ViewPropertyAnimator viewPropertyAnimator, DefaultItemAnimator defaultItemAnimator, RecyclerView.ViewHolder viewHolder) {
        this.d = defaultItemAnimator;
        this.f2150a = viewHolder;
        this.f2151b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.d.dispatchRemoveStarting(this.f2150a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2151b.setListener(null);
        this.c.setAlpha(1.0f);
        DefaultItemAnimator defaultItemAnimator = this.d;
        RecyclerView.ViewHolder viewHolder = this.f2150a;
        defaultItemAnimator.dispatchRemoveFinished(viewHolder);
        defaultItemAnimator.q.remove(viewHolder);
        defaultItemAnimator.c();
    }
}
