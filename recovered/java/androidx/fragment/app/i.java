package androidx.fragment.app;

import androidx.collection.ArrayMap;
import androidx.fragment.app.b1;

/* loaded from: classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b1.c f1699a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b1.c f1700b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ ArrayMap d;

    public i(b1.c cVar, b1.c cVar2, boolean z, ArrayMap arrayMap) {
        this.f1699a = cVar;
        this.f1700b = cVar2;
        this.c = z;
        this.d = arrayMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        s0.c(this.f1699a.getFragment(), this.f1700b.getFragment(), this.c, this.d, false);
    }
}
