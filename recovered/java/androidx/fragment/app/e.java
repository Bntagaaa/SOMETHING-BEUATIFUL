package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.b1;
import androidx.fragment.app.c;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1686a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1687b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ b1.c d;
    public final /* synthetic */ c.b e;

    public e(ViewGroup viewGroup, View view, boolean z, b1.c cVar, c.b bVar) {
        this.f1686a = viewGroup;
        this.f1687b = view;
        this.c = z;
        this.d = cVar;
        this.e = bVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f1686a;
        View view = this.f1687b;
        viewGroup.endViewTransition(view);
        if (this.c) {
            this.d.getFinalState().a(view);
        }
        this.e.a();
    }
}
