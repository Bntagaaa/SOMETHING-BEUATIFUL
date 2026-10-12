package androidx.transition;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

@RequiresApi(21)
/* loaded from: classes.dex */
class h implements f {

    /* renamed from: b, reason: collision with root package name */
    public static Class f2284b;
    public static boolean c;
    public static Method d;
    public static boolean e;
    public static Method f;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f2285g;

    /* renamed from: a, reason: collision with root package name */
    public final View f2286a;

    @Override // androidx.transition.f
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
    }

    public h(View view) {
        this.f2286a = view;
    }

    @Override // androidx.transition.f
    public void setVisibility(int i) {
        this.f2286a.setVisibility(i);
    }

    public static void a() {
        if (c) {
            return;
        }
        try {
            f2284b = Class.forName("android.view.GhostView");
        } catch (ClassNotFoundException e2) {
            Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e2);
        }
        c = true;
    }
}
