package androidx.fragment.app;

import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
class u0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1752a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1753b;
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ ArrayList d;
    public final /* synthetic */ ArrayList e;

    public u0(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f1752a = i;
        this.f1753b = arrayList;
        this.c = arrayList2;
        this.d = arrayList3;
        this.e = arrayList4;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i = 0; i < this.f1752a; i++) {
            ViewCompat.setTransitionName((View) this.f1753b.get(i), (String) this.c.get(i));
            ViewCompat.setTransitionName((View) this.d.get(i), (String) this.e.get(i));
        }
    }
}
