package androidx.fragment.app;

import androidx.core.os.CancellationSignal;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
class m0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentManager.b f1716a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f1717b;
    public final /* synthetic */ CancellationSignal c;

    public m0(FragmentManager.b bVar, Fragment fragment, CancellationSignal cancellationSignal) {
        this.f1716a = bVar;
        this.f1717b = fragment;
        this.c = cancellationSignal;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1716a.onComplete(this.f1717b, this.c);
    }
}
