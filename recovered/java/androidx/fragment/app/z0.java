package androidx.fragment.app;

import androidx.fragment.app.b1;
import java.util.ArrayList;

/* loaded from: classes.dex */
class z0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b1.b f1778a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b1 f1779b;

    public z0(b1 b1Var, b1.b bVar) {
        this.f1779b = b1Var;
        this.f1778a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f1779b.f1667b;
        b1.b bVar = this.f1778a;
        if (arrayList.contains(bVar)) {
            bVar.getFinalState().a(bVar.getFragment().H);
        }
    }
}
