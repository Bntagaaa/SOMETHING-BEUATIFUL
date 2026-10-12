package androidx.appcompat.widget;

import android.view.View;

/* loaded from: classes.dex */
class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListPopupWindow f508a;

    public u(ListPopupWindow listPopupWindow) {
        this.f508a = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public void run() {
        ListPopupWindow listPopupWindow = this.f508a;
        View anchorView = listPopupWindow.getAnchorView();
        if (anchorView == null || anchorView.getWindowToken() == null) {
            return;
        }
        listPopupWindow.show();
    }
}
