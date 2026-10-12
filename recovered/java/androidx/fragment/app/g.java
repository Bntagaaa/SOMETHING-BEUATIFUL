package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.c;

/* loaded from: classes.dex */
class g implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1690a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1691b;
    public final /* synthetic */ c.b c;

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    public g(View view, ViewGroup viewGroup, c.b bVar) {
        this.f1690a = viewGroup;
        this.f1691b = view;
        this.c = bVar;
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            gVar.f1690a.endViewTransition(gVar.f1691b);
            gVar.c.a();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f1690a.post(new a());
    }
}
