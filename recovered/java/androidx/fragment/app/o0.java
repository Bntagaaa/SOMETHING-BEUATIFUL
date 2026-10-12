package androidx.fragment.app;

import androidx.core.os.CancellationSignal;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
class o0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentManager.b f1721a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f1722b;
    public final /* synthetic */ CancellationSignal c;

    public o0(FragmentManager.b bVar, Fragment fragment, CancellationSignal cancellationSignal) {
        this.f1721a = bVar;
        this.f1722b = fragment;
        this.c = cancellationSignal;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1721a.onComplete(this.f1722b, this.c);
    }
}
