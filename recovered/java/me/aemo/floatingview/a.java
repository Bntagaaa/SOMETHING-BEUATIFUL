package me.aemo.floatingview;

import android.view.WindowManager;

/* loaded from: classes2.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingView f6740a;

    @Override // java.lang.Runnable
    public void run() {
        FloatingView floatingView = this.f6740a;
        if (floatingView.f6731b.isFinishing()) {
            return;
        }
        WindowManager windowManager = (WindowManager) floatingView.f6731b.getSystemService("window");
        floatingView.j = windowManager;
        if (windowManager != null) {
            floatingView.l.clearFocus();
            floatingView.j.addView(floatingView.l, floatingView.k);
            if (floatingView.p) {
                WindowManager.LayoutParams layoutParams = floatingView.k;
                layoutParams.flags |= 8192;
                floatingView.j.updateViewLayout(floatingView.l, layoutParams);
            }
        }
    }

    public a(FloatingView floatingView) {
        this.f6740a = floatingView;
    }
}
