package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
class p0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f1724a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FragmentTransitionImpl f1725b;
    public final /* synthetic */ View c;
    public final /* synthetic */ Fragment d;
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1726g;
    public final /* synthetic */ Object h;

    public p0(Object obj, FragmentTransitionImpl fragmentTransitionImpl, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f1724a = obj;
        this.f1725b = fragmentTransitionImpl;
        this.c = view;
        this.d = fragment;
        this.e = arrayList;
        this.f = arrayList2;
        this.f1726g = arrayList3;
        this.h = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        FragmentTransitionImpl fragmentTransitionImpl = this.f1725b;
        View view = this.c;
        Object obj = this.f1724a;
        if (obj != null) {
            fragmentTransitionImpl.removeTarget(obj, view);
            this.f.addAll(s0.g(fragmentTransitionImpl, obj, this.d, this.e, view));
        }
        ArrayList<View> arrayList = this.f1726g;
        if (arrayList != null) {
            Object obj2 = this.h;
            if (obj2 != null) {
                ArrayList<View> arrayList2 = new ArrayList<>();
                arrayList2.add(view);
                fragmentTransitionImpl.replaceTargets(obj2, arrayList, arrayList2);
            }
            arrayList.clear();
            arrayList.add(view);
        }
    }
}
