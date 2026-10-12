package androidx.transition;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final h0 f2280a;

    /* renamed from: b, reason: collision with root package name */
    public static final Property f2281b;
    public static final Property c;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f2280a = new k0();
        } else if (i >= 23) {
            f2280a = new j0();
        } else if (i >= 22) {
            f2280a = new i0();
        } else {
            f2280a = new h0();
        }
        f2281b = new a(Float.class, "translationAlpha");
        c = new b(Rect.class, "clipBounds");
    }

    public static class a extends Property<View, Float> {
        @Override // android.util.Property
        public void set(View view, Float f) {
            f0.b(view, f.floatValue());
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(f0.f2280a.getTransitionAlpha(view));
        }
    }

    public static class b extends Property<View, Rect> {
        @Override // android.util.Property
        public Rect get(View view) {
            return ViewCompat.getClipBounds(view);
        }

        @Override // android.util.Property
        public void set(View view, Rect rect) {
            ViewCompat.setClipBounds(view, rect);
        }
    }

    public static void b(View view, float f) {
        f2280a.setTransitionAlpha(view, f);
    }

    public static void c(View view, int i) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        f2280a.setTransitionVisibility(view, i);
    }

    public static void a(View view, int i, int i2, int i3, int i4) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        f2280a.setLeftTopRightBottom(view, i, i2, i3, i4);
    }

    private f0() {
    }
}
