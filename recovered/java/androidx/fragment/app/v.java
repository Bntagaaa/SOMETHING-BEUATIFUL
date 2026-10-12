package androidx.fragment.app;

import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
class v implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1754a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f1755b;
    public final /* synthetic */ FragmentManager.b c;
    public final /* synthetic */ CancellationSignal d;

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    public v(ViewGroup viewGroup, Fragment fragment, FragmentManager.b bVar, CancellationSignal cancellationSignal) {
        this.f1754a = viewGroup;
        this.f1755b = fragment;
        this.c = bVar;
        this.d = cancellationSignal;
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v vVar = v.this;
            Fragment fragment = vVar.f1755b;
            Fragment.e eVar = fragment.K;
            if ((eVar == null ? null : eVar.f1612a) != null) {
                fragment.c().f1612a = null;
                vVar.c.onComplete(fragment, vVar.d);
            }
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f1754a.post(new a());
    }
}
