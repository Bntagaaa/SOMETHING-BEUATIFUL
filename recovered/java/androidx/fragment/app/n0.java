package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1719a;

    public n0(ArrayList arrayList) {
        this.f1719a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        s0.k(this.f1719a, 4);
    }
}
