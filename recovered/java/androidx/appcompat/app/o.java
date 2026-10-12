package androidx.appcompat.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* loaded from: classes.dex */
class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f173a;

    public o(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f173a = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewGroup viewGroup;
        AppCompatDelegateImpl appCompatDelegateImpl = this.f173a;
        appCompatDelegateImpl.w.showAtLocation(appCompatDelegateImpl.v, 55, 0, 0);
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.y;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        if (appCompatDelegateImpl.A && (viewGroup = appCompatDelegateImpl.B) != null && ViewCompat.isLaidOut(viewGroup)) {
            appCompatDelegateImpl.v.setAlpha(0.0f);
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(appCompatDelegateImpl.v).alpha(1.0f);
            appCompatDelegateImpl.y = viewPropertyAnimatorCompatAlpha;
            viewPropertyAnimatorCompatAlpha.setListener(new a());
            return;
        }
        appCompatDelegateImpl.v.setAlpha(1.0f);
        appCompatDelegateImpl.v.setVisibility(0);
    }

    public class a extends ViewPropertyAnimatorListenerAdapter {
        public a() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            o.this.f173a.v.setVisibility(0);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            o oVar = o.this;
            oVar.f173a.v.setAlpha(1.0f);
            oVar.f173a.y.setListener(null);
            oVar.f173a.y = null;
        }
    }
}
