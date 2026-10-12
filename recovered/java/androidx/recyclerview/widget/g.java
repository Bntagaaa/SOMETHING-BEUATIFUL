package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DefaultItemAnimator.d f2156a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2157b;
    public final /* synthetic */ View c;
    public final /* synthetic */ DefaultItemAnimator d;

    public g(DefaultItemAnimator defaultItemAnimator, DefaultItemAnimator.d dVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = defaultItemAnimator;
        this.f2156a = dVar;
        this.f2157b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.d.dispatchChangeStarting(this.f2156a.f2010a, true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2157b.setListener(null);
        View view = this.c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        DefaultItemAnimator.d dVar = this.f2156a;
        RecyclerView.ViewHolder viewHolder = dVar.f2010a;
        DefaultItemAnimator defaultItemAnimator = this.d;
        defaultItemAnimator.dispatchChangeFinished(viewHolder, true);
        defaultItemAnimator.r.remove(dVar.f2010a);
        defaultItemAnimator.c();
    }
}
