package androidx.fragment.app;

import androidx.fragment.app.b1;
import java.util.ArrayList;

/* loaded from: classes.dex */
class a1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b1.b f1660a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b1 f1661b;

    public a1(b1 b1Var, b1.b bVar) {
        this.f1661b = b1Var;
        this.f1660a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        b1 b1Var = this.f1661b;
        ArrayList arrayList = b1Var.f1667b;
        b1.b bVar = this.f1660a;
        arrayList.remove(bVar);
        b1Var.c.remove(bVar);
    }
}
