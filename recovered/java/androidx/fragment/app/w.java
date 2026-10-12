package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
class w extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1759a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1760b;
    public final /* synthetic */ Fragment c;
    public final /* synthetic */ FragmentManager.b d;
    public final /* synthetic */ CancellationSignal e;

    public w(ViewGroup viewGroup, View view, Fragment fragment, FragmentManager.b bVar, CancellationSignal cancellationSignal) {
        this.f1759a = viewGroup;
        this.f1760b = view;
        this.c = fragment;
        this.d = bVar;
        this.e = cancellationSignal;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f1759a;
        View view = this.f1760b;
        viewGroup.endViewTransition(view);
        Fragment fragment = this.c;
        Fragment.e eVar = fragment.K;
        Animator animator2 = eVar == null ? null : eVar.f1613b;
        fragment.c().f1613b = null;
        if (animator2 == null || viewGroup.indexOfChild(view) >= 0) {
            return;
        }
        this.d.onComplete(fragment, this.e);
    }
}
