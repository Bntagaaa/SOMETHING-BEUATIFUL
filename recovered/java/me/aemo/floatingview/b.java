package me.aemo.floatingview;

import android.view.WindowManager;

/* loaded from: classes2.dex */
class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingView f6741a;

    @Override // java.lang.Runnable
    public void run() {
        FloatingView floatingView = this.f6741a;
        WindowManager windowManager = floatingView.j;
        if (windowManager != null) {
            windowManager.removeViewImmediate(floatingView.l);
        }
    }

    public b(FloatingView floatingView) {
        this.f6741a = floatingView;
    }
}
