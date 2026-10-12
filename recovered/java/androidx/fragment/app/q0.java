package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.collection.ArrayMap;

/* loaded from: classes.dex */
class q0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1729a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f1730b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ ArrayMap d;
    public final /* synthetic */ View e;
    public final /* synthetic */ FragmentTransitionImpl f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Rect f1731g;

    public q0(Fragment fragment, Fragment fragment2, boolean z, ArrayMap arrayMap, View view, FragmentTransitionImpl fragmentTransitionImpl, Rect rect) {
        this.f1729a = fragment;
        this.f1730b = fragment2;
        this.c = z;
        this.d = arrayMap;
        this.e = view;
        this.f = fragmentTransitionImpl;
        this.f1731g = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        s0.c(this.f1729a, this.f1730b, this.c, this.d, false);
        View view = this.e;
        if (view != null) {
            this.f.getBoundsOnScreen(view, this.f1731g);
        }
    }
}
