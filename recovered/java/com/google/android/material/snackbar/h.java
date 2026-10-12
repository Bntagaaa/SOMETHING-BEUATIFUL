package com.google.android.material.snackbar;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f3255a;

    public h(BaseTransientBottomBar baseTransientBottomBar) {
        this.f3255a = baseTransientBottomBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3255a.a(3);
    }
}
