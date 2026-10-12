package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1707a;

    public k(ArrayList arrayList) {
        this.f1707a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        s0.k(this.f1707a, 4);
    }
}
