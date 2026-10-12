package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.s;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public class WindowInsetsCompat {

    @NonNull
    public static final WindowInsetsCompat CONSUMED;

    /* renamed from: a, reason: collision with root package name */
    public final k f1361a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            CONSUMED = j.q;
        } else {
            CONSUMED = k.f1369b;
        }
    }

    public WindowInsetsCompat(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f1361a = new j(this, windowInsets);
            return;
        }
        if (i2 >= 29) {
            this.f1361a = new i(this, windowInsets);
        } else if (i2 >= 28) {
            this.f1361a = new h(this, windowInsets);
        } else {
            this.f1361a = new g(this, windowInsets);
        }
    }

    public WindowInsetsCompat(@Nullable WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            k kVar = windowInsetsCompat.f1361a;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && (kVar instanceof j)) {
                this.f1361a = new j(this, (j) kVar);
            } else if (i2 >= 29 && (kVar instanceof i)) {
                this.f1361a = new i(this, (i) kVar);
            } else if (i2 >= 28 && (kVar instanceof h)) {
                this.f1361a = new h(this, (h) kVar);
            } else if (kVar instanceof g) {
                this.f1361a = new g(this, (g) kVar);
            } else if (kVar instanceof f) {
                this.f1361a = new f(this, (f) kVar);
            } else {
                this.f1361a = new k(this);
            }
            kVar.e(this);
            return;
        }
        this.f1361a = new k(this);
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets, @Nullable View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) Preconditions.checkNotNull(windowInsets));
        if (view != null && ViewCompat.isAttachedToWindow(view)) {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
            k kVar = windowInsetsCompat.f1361a;
            kVar.p(rootWindowInsets);
            kVar.d(view.getRootView());
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.f1361a.j().left;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.f1361a.j().top;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.f1361a.j().right;
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.f1361a.j().bottom;
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.f1361a.j().equals(Insets.NONE);
    }

    public boolean hasInsets() {
        Insets insets = getInsets(-1);
        Insets insets2 = Insets.NONE;
        return (insets.equals(insets2) && getInsetsIgnoringVisibility((-1) ^ Type.ime()).equals(insets2) && getDisplayCutout() == null) ? false : true;
    }

    public boolean isConsumed() {
        return this.f1361a.m();
    }

    public boolean isRound() {
        return this.f1361a.n();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.f1361a.c();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i2, int i3, int i4, int i5) {
        return new Builder(this).setSystemWindowInsets(Insets.of(i2, i3, i4, i5)).build();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(@NonNull Rect rect) {
        return new Builder(this).setSystemWindowInsets(Insets.of(rect)).build();
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.f1361a.h().top;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.f1361a.h().left;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.f1361a.h().right;
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.f1361a.h().bottom;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.f1361a.h().equals(Insets.NONE);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.f1361a.b();
    }

    @Nullable
    public DisplayCutoutCompat getDisplayCutout() {
        return this.f1361a.f();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.f1361a.a();
    }

    @NonNull
    @Deprecated
    public Insets getSystemWindowInsets() {
        return this.f1361a.j();
    }

    @NonNull
    @Deprecated
    public Insets getStableInsets() {
        return this.f1361a.h();
    }

    @NonNull
    @Deprecated
    public Insets getMandatorySystemGestureInsets() {
        return this.f1361a.g();
    }

    @NonNull
    @Deprecated
    public Insets getTappableElementInsets() {
        return this.f1361a.k();
    }

    @NonNull
    @Deprecated
    public Insets getSystemGestureInsets() {
        return this.f1361a.i();
    }

    @NonNull
    public WindowInsetsCompat inset(@NonNull Insets insets) {
        return inset(insets.left, insets.top, insets.right, insets.bottom);
    }

    @NonNull
    public WindowInsetsCompat inset(@IntRange(from = 0) int i2, @IntRange(from = 0) int i3, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5) {
        return this.f1361a.l(i2, i3, i4, i5);
    }

    @NonNull
    public Insets getInsets(int i2) {
        return this.f1361a.getInsets(i2);
    }

    @NonNull
    public Insets getInsetsIgnoringVisibility(int i2) {
        return this.f1361a.getInsetsIgnoringVisibility(i2);
    }

    public boolean isVisible(int i2) {
        return this.f1361a.isVisible(i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ObjectsCompat.equals(this.f1361a, ((WindowInsetsCompat) obj).f1361a);
        }
        return false;
    }

    public int hashCode() {
        k kVar = this.f1361a;
        if (kVar == null) {
            return 0;
        }
        return kVar.hashCode();
    }

    @Nullable
    @RequiresApi(20)
    public WindowInsets toWindowInsets() {
        k kVar = this.f1361a;
        if (kVar instanceof f) {
            return ((f) kVar).c;
        }
        return null;
    }

    public static class k {

        /* renamed from: b, reason: collision with root package name */
        public static final WindowInsetsCompat f1369b = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsCompat f1370a;

        public void d(@NonNull View view) {
        }

        public void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
        }

        @Nullable
        public DisplayCutoutCompat f() {
            return null;
        }

        public boolean isVisible(int i) {
            return true;
        }

        public boolean m() {
            return false;
        }

        public boolean n() {
            return false;
        }

        public void o(@NonNull Insets insets) {
        }

        public void p(@Nullable WindowInsetsCompat windowInsetsCompat) {
        }

        public void setOverriddenInsets(Insets[] insetsArr) {
        }

        public void setStableInsets(Insets insets) {
        }

        public k(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f1370a = windowInsetsCompat;
        }

        @NonNull
        public WindowInsetsCompat c() {
            return this.f1370a;
        }

        @NonNull
        public WindowInsetsCompat b() {
            return this.f1370a;
        }

        @NonNull
        public WindowInsetsCompat a() {
            return this.f1370a;
        }

        @NonNull
        public Insets j() {
            return Insets.NONE;
        }

        @NonNull
        public Insets h() {
            return Insets.NONE;
        }

        @NonNull
        public Insets i() {
            return j();
        }

        @NonNull
        public Insets g() {
            return j();
        }

        @NonNull
        public Insets k() {
            return j();
        }

        @NonNull
        public WindowInsetsCompat l(int i, int i2, int i3, int i4) {
            return f1369b;
        }

        @NonNull
        public Insets getInsets(int i) {
            return Insets.NONE;
        }

        @NonNull
        public Insets getInsetsIgnoringVisibility(int i) {
            if ((i & 8) != 0) {
                throw new IllegalArgumentException("Unable to query the maximum insets for IME");
            }
            return Insets.NONE;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return n() == kVar.n() && m() == kVar.m() && ObjectsCompat.equals(j(), kVar.j()) && ObjectsCompat.equals(h(), kVar.h()) && ObjectsCompat.equals(f(), kVar.f());
        }

        public int hashCode() {
            return ObjectsCompat.hash(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), f());
        }
    }

    @RequiresApi(20)
    public static class f extends k {
        public static boolean h = false;
        public static Method i;
        public static Class j;
        public static Field k;
        public static Field l;
        public final WindowInsets c;
        public Insets[] d;
        public Insets e;
        public WindowInsetsCompat f;

        /* renamed from: g, reason: collision with root package name */
        public Insets f1368g;

        public f(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.e = null;
            this.c = windowInsets;
        }

        public f(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull f fVar) {
            this(windowInsetsCompat, new WindowInsets(fVar.c));
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public boolean n() {
            return this.c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets getInsets(int i2) {
            return q(i2, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets getInsetsIgnoringVisibility(int i2) {
            return q(i2, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @SuppressLint({"WrongConstant"})
        public boolean isVisible(int i2) {
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i2 & i3) != 0 && !isTypeVisible(i3)) {
                    return false;
                }
            }
            return true;
        }

        @NonNull
        @SuppressLint({"WrongConstant"})
        private Insets q(int i2, boolean z) {
            Insets insetsMax = Insets.NONE;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    insetsMax = Insets.max(insetsMax, getInsetsForType(i3, z));
                }
            }
            return insetsMax;
        }

        @NonNull
        public Insets getInsetsForType(int i2, boolean z) {
            Insets stableInsets;
            int i3;
            DisplayCutoutCompat displayCutoutCompatF;
            if (i2 == 1) {
                if (z) {
                    return Insets.of(0, Math.max(r().top, j().top), 0, 0);
                }
                return Insets.of(0, j().top, 0, 0);
            }
            if (i2 == 2) {
                if (z) {
                    Insets insetsR = r();
                    Insets insetsH = h();
                    return Insets.of(Math.max(insetsR.left, insetsH.left), 0, Math.max(insetsR.right, insetsH.right), Math.max(insetsR.bottom, insetsH.bottom));
                }
                Insets insetsJ = j();
                WindowInsetsCompat windowInsetsCompat = this.f;
                stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                int iMin = insetsJ.bottom;
                if (stableInsets != null) {
                    iMin = Math.min(iMin, stableInsets.bottom);
                }
                return Insets.of(insetsJ.left, 0, insetsJ.right, iMin);
            }
            if (i2 != 8) {
                if (i2 == 16) {
                    return i();
                }
                if (i2 == 32) {
                    return g();
                }
                if (i2 == 64) {
                    return k();
                }
                if (i2 == 128) {
                    WindowInsetsCompat windowInsetsCompat2 = this.f;
                    if (windowInsetsCompat2 != null) {
                        displayCutoutCompatF = windowInsetsCompat2.getDisplayCutout();
                    } else {
                        displayCutoutCompatF = f();
                    }
                    if (displayCutoutCompatF != null) {
                        return Insets.of(displayCutoutCompatF.getSafeInsetLeft(), displayCutoutCompatF.getSafeInsetTop(), displayCutoutCompatF.getSafeInsetRight(), displayCutoutCompatF.getSafeInsetBottom());
                    }
                    return Insets.NONE;
                }
                return Insets.NONE;
            }
            Insets[] insetsArr = this.d;
            stableInsets = insetsArr != null ? insetsArr[Type.a(8)] : null;
            if (stableInsets != null) {
                return stableInsets;
            }
            Insets insetsJ2 = j();
            Insets insetsR2 = r();
            int i4 = insetsJ2.bottom;
            if (i4 > insetsR2.bottom) {
                return Insets.of(0, 0, 0, i4);
            }
            Insets insets = this.f1368g;
            if (insets != null && !insets.equals(Insets.NONE) && (i3 = this.f1368g.bottom) > insetsR2.bottom) {
                return Insets.of(0, 0, 0, i3);
            }
            return Insets.NONE;
        }

        public boolean isTypeVisible(int i2) {
            if (i2 != 1 && i2 != 2) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 8 && i2 != 128) {
                    return true;
                }
            }
            return !getInsetsForType(i2, false).equals(Insets.NONE);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public final Insets j() {
            if (this.e == null) {
                WindowInsets windowInsets = this.c;
                this.e = Insets.of(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            }
            return this.e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public WindowInsetsCompat l(int i2, int i3, int i4, int i5) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.c));
            builder.setSystemWindowInsets(WindowInsetsCompat.a(j(), i2, i3, i4, i5));
            builder.setStableInsets(WindowInsetsCompat.a(h(), i2, i3, i4, i5));
            return builder.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.f1361a.p(this.f);
            windowInsetsCompat.f1361a.o(this.f1368g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void p(@Nullable WindowInsetsCompat windowInsetsCompat) {
            this.f = windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void o(@NonNull Insets insets) {
            this.f1368g = insets;
        }

        private Insets r() {
            WindowInsetsCompat windowInsetsCompat = this.f;
            if (windowInsetsCompat != null) {
                return windowInsetsCompat.getStableInsets();
            }
            return Insets.NONE;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void d(@NonNull View view) throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
            Insets insetsS = s(view);
            if (insetsS == null) {
                insetsS = Insets.NONE;
            }
            o(insetsS);
        }

        @Nullable
        private Insets s(@NonNull View view) throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!h) {
                t();
            }
            Method method = i;
            if (method != null && j != null && k != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) k.get(l.get(objInvoke));
                    if (rect != null) {
                        return Insets.of(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void setOverriddenInsets(Insets[] insetsArr) {
            this.d = insetsArr;
        }

        @SuppressLint({"PrivateApi"})
        private static void t() throws ClassNotFoundException, SecurityException {
            try {
                i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                j = cls;
                k = cls.getDeclaredField("mVisibleInsets");
                l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                k.setAccessible(true);
                l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            h = true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f1368g, ((f) obj).f1368g);
            }
            return false;
        }
    }

    @RequiresApi(21)
    public static class g extends f {
        public Insets m;

        public g(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.m = null;
        }

        public g(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull g gVar) {
            super(windowInsetsCompat, gVar);
            this.m = null;
            this.m = gVar.m;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public boolean m() {
            return this.c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public WindowInsetsCompat b() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public WindowInsetsCompat c() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public final Insets h() {
            if (this.m == null) {
                WindowInsets windowInsets = this.c;
                this.m = Insets.of(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
            }
            return this.m;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void setStableInsets(@Nullable Insets insets) {
            this.m = insets;
        }
    }

    @RequiresApi(28)
    public static class h extends g {
        public h(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        public h(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull h hVar) {
            super(windowInsetsCompat, hVar);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @Nullable
        public DisplayCutoutCompat f() {
            DisplayCutout displayCutout = this.c.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new DisplayCutoutCompat(displayCutout);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public WindowInsetsCompat a() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Objects.equals(this.c, hVar.c) && Objects.equals(this.f1368g, hVar.f1368g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public int hashCode() {
            return this.c.hashCode();
        }
    }

    @RequiresApi(29)
    public static class i extends h {
        public Insets n;
        public Insets o;
        public Insets p;

        @Override // androidx.core.view.WindowInsetsCompat.g, androidx.core.view.WindowInsetsCompat.k
        public void setStableInsets(@Nullable Insets insets) {
        }

        public i(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.n = null;
            this.o = null;
            this.p = null;
        }

        public i(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull i iVar) {
            super(windowInsetsCompat, iVar);
            this.n = null;
            this.o = null;
            this.p = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets i() {
            if (this.n == null) {
                this.n = Insets.toCompatInsets(this.c.getSystemGestureInsets());
            }
            return this.n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets g() {
            if (this.o == null) {
                this.o = Insets.toCompatInsets(this.c.getMandatorySystemGestureInsets());
            }
            return this.o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets k() {
            if (this.p == null) {
                this.p = Insets.toCompatInsets(this.c.getTappableElementInsets());
            }
            return this.p;
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public WindowInsetsCompat l(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.inset(i, i2, i3, i4));
        }
    }

    public static Insets a(Insets insets, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, insets.left - i2);
        int iMax2 = Math.max(0, insets.top - i3);
        int iMax3 = Math.max(0, insets.right - i4);
        int iMax4 = Math.max(0, insets.bottom - i5);
        return (iMax == i2 && iMax2 == i3 && iMax3 == i4 && iMax4 == i5) ? insets : Insets.of(iMax, iMax2, iMax3, iMax4);
    }

    @RequiresApi(30)
    public static class j extends i {
        public static final WindowInsetsCompat q = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public final void d(@NonNull View view) {
        }

        public j(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        public j(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull j jVar) {
            super(windowInsetsCompat, jVar);
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets getInsets(int i) {
            return Insets.toCompatInsets(this.c.getInsets(l.a(i)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        @NonNull
        public Insets getInsetsIgnoringVisibility(int i) {
            return Insets.toCompatInsets(this.c.getInsetsIgnoringVisibility(l.a(i)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public boolean isVisible(int i) {
            return this.c.isVisible(l.a(i));
        }
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final e f1362a;

        public Builder() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f1362a = new d();
            } else if (i >= 29) {
                this.f1362a = new c();
            } else {
                this.f1362a = new b();
            }
        }

        public Builder(@NonNull WindowInsetsCompat windowInsetsCompat) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f1362a = new d(windowInsetsCompat);
            } else if (i >= 29) {
                this.f1362a = new c(windowInsetsCompat);
            } else {
                this.f1362a = new b(windowInsetsCompat);
            }
        }

        @NonNull
        @Deprecated
        public Builder setSystemWindowInsets(@NonNull Insets insets) {
            this.f1362a.h(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSystemGestureInsets(@NonNull Insets insets) {
            this.f1362a.g(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setMandatorySystemGestureInsets(@NonNull Insets insets) {
            this.f1362a.e(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setTappableElementInsets(@NonNull Insets insets) {
            this.f1362a.i(insets);
            return this;
        }

        @NonNull
        public Builder setInsets(int i, @NonNull Insets insets) {
            this.f1362a.c(i, insets);
            return this;
        }

        @NonNull
        public Builder setInsetsIgnoringVisibility(int i, @NonNull Insets insets) {
            this.f1362a.d(i, insets);
            return this;
        }

        @NonNull
        public Builder setVisible(int i, boolean z) {
            this.f1362a.j(i, z);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setStableInsets(@NonNull Insets insets) {
            this.f1362a.f(insets);
            return this;
        }

        @NonNull
        public Builder setDisplayCutout(@Nullable DisplayCutoutCompat displayCutoutCompat) {
            this.f1362a.b(displayCutoutCompat);
            return this;
        }

        @NonNull
        public WindowInsetsCompat build() {
            return this.f1362a.a();
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsCompat f1366a;

        /* renamed from: b, reason: collision with root package name */
        public Insets[] f1367b;

        public void b(@Nullable DisplayCutoutCompat displayCutoutCompat) {
        }

        public void e(@NonNull Insets insets) {
        }

        public void f(@NonNull Insets insets) {
        }

        public void g(@NonNull Insets insets) {
        }

        public void h(@NonNull Insets insets) {
        }

        public void i(@NonNull Insets insets) {
        }

        public void j(int i, boolean z) {
        }

        public e() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        public e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f1366a = windowInsetsCompat;
        }

        public void c(int i, @NonNull Insets insets) {
            if (this.f1367b == null) {
                this.f1367b = new Insets[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.f1367b[Type.a(i2)] = insets;
                }
            }
        }

        public void d(int i, @NonNull Insets insets) {
            if (i == 8) {
                throw new IllegalArgumentException("Ignoring visibility inset not available for IME");
            }
        }

        public final void applyInsetTypes() {
            Insets[] insetsArr = this.f1367b;
            if (insetsArr != null) {
                Insets insets = insetsArr[0];
                Insets insets2 = insetsArr[1];
                WindowInsetsCompat windowInsetsCompat = this.f1366a;
                if (insets2 == null) {
                    insets2 = windowInsetsCompat.getInsets(2);
                }
                if (insets == null) {
                    insets = windowInsetsCompat.getInsets(1);
                }
                h(Insets.max(insets, insets2));
                Insets insets3 = this.f1367b[Type.a(16)];
                if (insets3 != null) {
                    g(insets3);
                }
                Insets insets4 = this.f1367b[Type.a(32)];
                if (insets4 != null) {
                    e(insets4);
                }
                Insets insets5 = this.f1367b[Type.a(64)];
                if (insets5 != null) {
                    i(insets5);
                }
            }
        }

        @NonNull
        public WindowInsetsCompat a() {
            applyInsetTypes();
            return this.f1366a;
        }
    }

    @RequiresApi(api = 20)
    public static class b extends e {
        public static Field e = null;
        public static boolean f = false;

        /* renamed from: g, reason: collision with root package name */
        public static Constructor f1365g = null;
        public static boolean h = false;
        public WindowInsets c;
        public Insets d;

        public b() {
            this.c = k();
        }

        public b(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.c = windowInsetsCompat.toWindowInsets();
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void h(@NonNull Insets insets) {
            WindowInsets windowInsets = this.c;
            if (windowInsets != null) {
                this.c = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, insets.bottom);
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void f(@Nullable Insets insets) {
            this.d = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        @NonNull
        public WindowInsetsCompat a() {
            applyInsetTypes();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.c);
            windowInsetsCompat.f1361a.setOverriddenInsets(this.f1367b);
            windowInsetsCompat.f1361a.setStableInsets(this.d);
            return windowInsetsCompat;
        }

        @Nullable
        private static WindowInsets k() {
            if (!f) {
                try {
                    e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e2);
                }
                f = true;
            }
            Field field = e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e3);
                }
            }
            if (!h) {
                try {
                    f1365g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e4) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e4);
                }
                h = true;
            }
            Constructor constructor = f1365g;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e5) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e5);
                }
            }
            return null;
        }
    }

    @RequiresApi(api = 29)
    public static class c extends e {
        public final WindowInsets.Builder c;

        public c() {
            this.c = s.e();
        }

        public c(@NonNull WindowInsetsCompat windowInsetsCompat) {
            WindowInsets.Builder builderE;
            super(windowInsetsCompat);
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                builderE = s.f(windowInsets);
            } else {
                builderE = s.e();
            }
            this.c = builderE;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void h(@NonNull Insets insets) {
            this.c.setSystemWindowInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void g(@NonNull Insets insets) {
            this.c.setSystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void e(@NonNull Insets insets) {
            this.c.setMandatorySystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void i(@NonNull Insets insets) {
            this.c.setTappableElementInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void f(@NonNull Insets insets) {
            this.c.setStableInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void b(@Nullable DisplayCutoutCompat displayCutoutCompat) {
            this.c.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.f1286a : null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        @NonNull
        public WindowInsetsCompat a() {
            applyInsetTypes();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.c.build());
            windowInsetsCompat.f1361a.setOverriddenInsets(this.f1367b);
            return windowInsetsCompat;
        }
    }

    @RequiresApi(30)
    public static class d extends c {
        public d() {
        }

        public d(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void c(int i, @NonNull Insets insets) {
            this.c.setInsets(l.a(i), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void d(int i, @NonNull Insets insets) throws IllegalArgumentException {
            this.c.setInsetsIgnoringVisibility(l.a(i), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        public void j(int i, boolean z) {
            this.c.setVisible(l.a(i), z);
        }
    }

    public static final class Type {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface InsetsType {
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 7;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int tappableElement() {
            return 64;
        }

        private Type() {
        }

        public static int a(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "type needs to be >= FIRST and <= LAST, type="));
        }
    }

    @RequiresApi(30)
    public static final class l {
        private l() {
        }

        public static int a(int i) {
            int iStatusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i2 |= iStatusBars;
                }
            }
            return i2;
        }
    }

    @RequiresApi(21)
    @SuppressLint({"SoonBlockedPrivateApi"})
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final Field f1363a;

        /* renamed from: b, reason: collision with root package name */
        public static final Field f1364b;
        public static final Field c;
        public static final boolean d;

        private a() {
        }

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f1363a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f1364b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                c = declaredField3;
                declaredField3.setAccessible(true);
                d = true;
            } catch (ReflectiveOperationException e) {
                Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e.getMessage(), e);
            }
        }

        @Nullable
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) throws IllegalAccessException, IllegalArgumentException {
            if (!d || !view.isAttachedToWindow()) {
                return null;
            }
            try {
                Object obj = f1363a.get(view.getRootView());
                if (obj == null) {
                    return null;
                }
                Rect rect = (Rect) f1364b.get(obj);
                Rect rect2 = (Rect) c.get(obj);
                if (rect == null || rect2 == null) {
                    return null;
                }
                WindowInsetsCompat windowInsetsCompatBuild = new Builder().setStableInsets(Insets.of(rect)).setSystemWindowInsets(Insets.of(rect2)).build();
                windowInsetsCompatBuild.f1361a.p(windowInsetsCompatBuild);
                windowInsetsCompatBuild.f1361a.d(view.getRootView());
                return windowInsetsCompatBuild;
            } catch (IllegalAccessException e) {
                Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e.getMessage(), e);
                return null;
            }
        }
    }
}
