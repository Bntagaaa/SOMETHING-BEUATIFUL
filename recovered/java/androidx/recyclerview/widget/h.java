package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DefaultItemAnimator.d f2158a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2159b;
    public final /* synthetic */ View c;
    public final /* synthetic */ DefaultItemAnimator d;

    public h(DefaultItemAnimator defaultItemAnimator, DefaultItemAnimator.d dVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = defaultItemAnimator;
        this.f2158a = dVar;
        this.f2159b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.d.dispatchChangeStarting(this.f2158a.f2011b, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2159b.setListener(null);
        View view = this.c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        DefaultItemAnimator.d dVar = this.f2158a;
        RecyclerView.ViewHolder viewHolder = dVar.f2011b;
        DefaultItemAnimator defaultItemAnimator = this.d;
        defaultItemAnimator.dispatchChangeFinished(viewHolder, false);
        defaultItemAnimator.r.remove(dVar.f2011b);
        defaultItemAnimator.c();
    }
}
