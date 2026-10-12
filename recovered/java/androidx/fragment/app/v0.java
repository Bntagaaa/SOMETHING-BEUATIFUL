package androidx.fragment.app;

import android.view.View;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class v0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1757a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayMap f1758b;

    public v0(ArrayList arrayList, ArrayMap arrayMap) {
        this.f1757a = arrayList;
        this.f1758b = arrayMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        ArrayList arrayList = this.f1757a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName != null) {
                Iterator it = this.f1758b.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (transitionName.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                ViewCompat.setTransitionName(view, str);
            }
        }
    }
}
