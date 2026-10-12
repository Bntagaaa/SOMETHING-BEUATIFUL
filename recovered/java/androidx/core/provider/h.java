package androidx.core.provider;

import androidx.core.provider.k;
import androidx.core.util.Consumer;

/* loaded from: classes.dex */
class h implements Consumer<k.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f1175a;

    public h(c cVar) {
        this.f1175a = cVar;
    }

    @Override // androidx.core.util.Consumer
    public void accept(k.a aVar) {
        if (aVar == null) {
            aVar = new k.a(-3);
        }
        this.f1175a.a(aVar);
    }
}
