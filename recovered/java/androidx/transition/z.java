package androidx.transition;

import android.os.Build;
import android.view.ViewGroup;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class z {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f2314a = true;

    /* renamed from: b, reason: collision with root package name */
    public static Method f2315b;
    public static boolean c;

    public static void a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (f2314a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                f2314a = false;
            }
        }
    }

    private z() {
    }
}
