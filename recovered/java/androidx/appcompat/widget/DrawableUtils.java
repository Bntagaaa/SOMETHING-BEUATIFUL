package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class DrawableUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f361a = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f362b = new int[0];
    public static final Rect INSETS_NONE = new Rect();

    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        return true;
    }

    private DrawableUtils() {
    }

    @NonNull
    public static Rect getOpticalBounds(@NonNull Drawable drawable) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            Insets insetsA = b.a(drawable);
            return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
        }
        Drawable drawableUnwrap = DrawableCompat.unwrap(drawable);
        if (i >= 29) {
            boolean z = a.f363a;
        } else if (a.f363a) {
            try {
                Object objInvoke = a.f364b.invoke(drawableUnwrap, new Object[0]);
                if (objInvoke != null) {
                    return new Rect(a.c.getInt(objInvoke), a.d.getInt(objInvoke), a.e.getInt(objInvoke), a.f.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return INSETS_NONE;
    }

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i = Build.VERSION.SDK_INT;
        int[] iArr = f361a;
        int[] iArr2 = f362b;
        if (i != 21 || !"android.graphics.drawable.VectorDrawable".equals(name)) {
            if (i < 29 || i >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
                return;
            }
            int[] state = drawable.getState();
            if (state == null || state.length == 0) {
                drawable.setState(iArr);
            } else {
                drawable.setState(iArr2);
            }
            drawable.setState(state);
            return;
        }
        int[] state2 = drawable.getState();
        if (state2 == null || state2.length == 0) {
            drawable.setState(iArr);
        } else {
            drawable.setState(iArr2);
        }
        drawable.setState(state2);
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    @RequiresApi(18)
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final boolean f363a;

        /* renamed from: b, reason: collision with root package name */
        public static final Method f364b;
        public static final Field c;
        public static final Field d;
        public static final Field e;
        public static final Field f;

        /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
        static {
            /*
                r0 = 1
                r1 = 0
                r2 = 0
                java.lang.String r3 = "android.graphics.Insets"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.NoSuchFieldException -> L48 java.lang.ClassNotFoundException -> L4c java.lang.NoSuchMethodException -> L50
                java.lang.Class<android.graphics.drawable.Drawable> r4 = android.graphics.drawable.Drawable.class
                java.lang.String r5 = "getOpticalInsets"
                java.lang.Class[] r6 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchFieldException -> L48 java.lang.ClassNotFoundException -> L4c java.lang.NoSuchMethodException -> L50
                java.lang.reflect.Method r4 = r4.getMethod(r5, r6)     // Catch: java.lang.NoSuchFieldException -> L48 java.lang.ClassNotFoundException -> L4c java.lang.NoSuchMethodException -> L50
                java.lang.String r5 = "left"
                java.lang.reflect.Field r5 = r3.getField(r5)     // Catch: java.lang.NoSuchFieldException -> L3c java.lang.ClassNotFoundException -> L40 java.lang.NoSuchMethodException -> L44
                java.lang.String r6 = "top"
                java.lang.reflect.Field r6 = r3.getField(r6)     // Catch: java.lang.NoSuchFieldException -> L32 java.lang.ClassNotFoundException -> L36 java.lang.NoSuchMethodException -> L39
                java.lang.String r7 = "right"
                java.lang.reflect.Field r7 = r3.getField(r7)     // Catch: java.lang.Throwable -> L2f
                java.lang.String r8 = "bottom"
                java.lang.reflect.Field r3 = r3.getField(r8)     // Catch: java.lang.Throwable -> L2d
                r8 = 1
                goto L56
            L2d:
                goto L54
            L2f:
                r7 = r1
                goto L54
            L32:
                r6 = r1
            L34:
                r7 = r6
                goto L54
            L36:
                r6 = r1
                goto L34
            L39:
                r6 = r1
                goto L34
            L3c:
                r5 = r1
            L3e:
                r6 = r5
                goto L34
            L40:
                r5 = r1
            L42:
                r6 = r5
                goto L34
            L44:
                r5 = r1
            L46:
                r6 = r5
                goto L34
            L48:
                r4 = r1
                r5 = r4
                goto L3e
            L4c:
                r4 = r1
                r5 = r4
                goto L42
            L50:
                r4 = r1
                r5 = r4
                goto L46
            L54:
                r3 = r1
                r8 = 0
            L56:
                if (r8 == 0) goto L65
                androidx.appcompat.widget.DrawableUtils.a.f364b = r4
                androidx.appcompat.widget.DrawableUtils.a.c = r5
                androidx.appcompat.widget.DrawableUtils.a.d = r6
                androidx.appcompat.widget.DrawableUtils.a.e = r7
                androidx.appcompat.widget.DrawableUtils.a.f = r3
                androidx.appcompat.widget.DrawableUtils.a.f363a = r0
                goto L71
            L65:
                androidx.appcompat.widget.DrawableUtils.a.f364b = r1
                androidx.appcompat.widget.DrawableUtils.a.c = r1
                androidx.appcompat.widget.DrawableUtils.a.d = r1
                androidx.appcompat.widget.DrawableUtils.a.e = r1
                androidx.appcompat.widget.DrawableUtils.a.f = r1
                androidx.appcompat.widget.DrawableUtils.a.f363a = r2
            L71:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DrawableUtils.a.<clinit>():void");
        }

        private a() {
        }
    }

    @RequiresApi(29)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Insets a(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }
}
