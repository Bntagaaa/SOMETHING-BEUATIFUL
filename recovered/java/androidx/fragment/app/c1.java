package androidx.fragment.app;

import androidx.core.os.CancellationSignal;
import androidx.fragment.app.b1;

/* loaded from: classes.dex */
class c1 implements CancellationSignal.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b1.c f1682a;

    public c1(b1.c cVar) {
        this.f1682a = cVar;
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        this.f1682a.a();
    }
}
