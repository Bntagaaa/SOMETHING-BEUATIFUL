package androidx.appcompat.app;

import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* loaded from: classes.dex */
class n implements ContentFrameLayout.OnAttachListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f172a;

    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
    public void onAttachedFromWindow() {
    }

    public n(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f172a = appCompatDelegateImpl;
    }

    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
    public void onDetachedFromWindow() {
        MenuBuilder menuBuilder;
        AppCompatDelegateImpl appCompatDelegateImpl = this.f172a;
        DecorContentParent decorContentParent = appCompatDelegateImpl.r;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (appCompatDelegateImpl.w != null) {
            appCompatDelegateImpl.l.getDecorView().removeCallbacks(appCompatDelegateImpl.x);
            if (appCompatDelegateImpl.w.isShowing()) {
                try {
                    appCompatDelegateImpl.w.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            appCompatDelegateImpl.w = null;
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.y;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        AppCompatDelegateImpl.PanelFeatureState panelState = appCompatDelegateImpl.getPanelState(0, false);
        if (panelState == null || (menuBuilder = panelState.h) == null) {
            return;
        }
        menuBuilder.close();
    }
}
