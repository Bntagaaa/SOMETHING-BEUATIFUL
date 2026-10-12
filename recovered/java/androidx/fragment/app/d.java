package androidx.fragment.app;

import androidx.fragment.app.b1;
import java.util.ArrayList;

/* loaded from: classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1683a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b1.c f1684b;
    public final /* synthetic */ c c;

    public d(c cVar, ArrayList arrayList, b1.c cVar2) {
        this.c = cVar;
        this.f1683a = arrayList;
        this.f1684b = cVar2;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f1683a;
        b1.c cVar = this.f1684b;
        if (arrayList.contains(cVar)) {
            arrayList.remove(cVar);
            this.c.getClass();
            cVar.getFinalState().a(cVar.getFragment().H);
        }
    }
}
