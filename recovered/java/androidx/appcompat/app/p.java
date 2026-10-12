package androidx.appcompat.app;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* loaded from: classes.dex */
class p extends ViewPropertyAnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f175a;

    public p(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f175a = appCompatDelegateImpl;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f175a;
        appCompatDelegateImpl.v.setVisibility(0);
        if (appCompatDelegateImpl.v.getParent() instanceof View) {
            ViewCompat.requestApplyInsets((View) appCompatDelegateImpl.v.getParent());
        }
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f175a;
        appCompatDelegateImpl.v.setAlpha(1.0f);
        appCompatDelegateImpl.y.setListener(null);
        appCompatDelegateImpl.y = null;
    }
}
