package androidx.activity;

import android.window.OnBackInvokedCallback;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements OnBackInvokedCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f52a;

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        this.f52a.run();
    }
}
