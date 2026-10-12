package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;

/* loaded from: classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentTransitionImpl f1704a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1705b;
    public final /* synthetic */ Rect c;

    public j(FragmentTransitionImpl fragmentTransitionImpl, View view, Rect rect) {
        this.f1704a = fragmentTransitionImpl;
        this.f1705b = view;
        this.c = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1704a.getBoundsOnScreen(this.f1705b, this.c);
    }
}
