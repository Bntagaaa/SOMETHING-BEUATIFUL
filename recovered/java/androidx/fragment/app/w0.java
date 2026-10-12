package androidx.fragment.app;

import android.view.View;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
class w0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1761a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayMap f1762b;

    public w0(ArrayList arrayList, ArrayMap arrayMap) {
        this.f1761a = arrayList;
        this.f1762b = arrayMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f1761a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            ViewCompat.setTransitionName(view, (String) this.f1762b.get(ViewCompat.getTransitionName(view)));
        }
    }
}
