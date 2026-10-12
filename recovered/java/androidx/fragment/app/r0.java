package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.s0;
import java.util.ArrayList;

/* loaded from: classes.dex */
class r0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentTransitionImpl f1734a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayMap f1735b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ s0.b d;
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ View f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Fragment f1736g;
    public final /* synthetic */ Fragment h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ ArrayList j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Rect l;

    public r0(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap arrayMap, Object obj, s0.b bVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f1734a = fragmentTransitionImpl;
        this.f1735b = arrayMap;
        this.c = obj;
        this.d = bVar;
        this.e = arrayList;
        this.f = view;
        this.f1736g = fragment;
        this.h = fragment2;
        this.i = z;
        this.j = arrayList2;
        this.k = obj2;
        this.l = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        FragmentTransitionImpl fragmentTransitionImpl = this.f1734a;
        ArrayMap arrayMap = this.f1735b;
        s0.b bVar = this.d;
        Object obj = this.c;
        ArrayMap arrayMapD = s0.d(arrayMap, obj, bVar);
        ArrayList<View> arrayList = this.e;
        if (arrayMapD != null) {
            arrayList.addAll(arrayMapD.values());
            arrayList.add(this.f);
        }
        Fragment fragment = this.f1736g;
        Fragment fragment2 = this.h;
        boolean z = this.i;
        s0.c(fragment, fragment2, z, arrayMapD, false);
        if (obj != null) {
            fragmentTransitionImpl.swapSharedElementTargets(obj, this.j, arrayList);
            View viewI = s0.i(arrayMapD, bVar, this.k, z);
            if (viewI != null) {
                fragmentTransitionImpl.getBoundsOnScreen(viewI, this.l);
            }
        }
    }
}
