package androidx.core.provider;

import androidx.collection.SimpleArrayMap;
import androidx.core.provider.k;
import androidx.core.util.Consumer;
import java.util.ArrayList;

/* loaded from: classes.dex */
class j implements Consumer<k.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1178a;

    public j(String str) {
        this.f1178a = str;
    }

    @Override // androidx.core.util.Consumer
    public void accept(k.a aVar) {
        synchronized (k.c) {
            try {
                SimpleArrayMap simpleArrayMap = k.d;
                ArrayList arrayList = (ArrayList) simpleArrayMap.get(this.f1178a);
                if (arrayList == null) {
                    return;
                }
                simpleArrayMap.remove(this.f1178a);
                for (int i = 0; i < arrayList.size(); i++) {
                    ((Consumer) arrayList.get(i)).accept(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
