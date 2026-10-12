package androidx.core.view;

import android.R;
import android.annotation.SuppressLint;
import android.os.Build;
import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.WindowInsetsControllerCompat;
import gnu.expr.Declaration;

/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_DEFAULT = 1;

    @Deprecated
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;

    @Deprecated
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;

    /* renamed from: a, reason: collision with root package name */
    public final e f1371a;

    public interface OnControllableInsetsChangedListener {
        void onControllableInsetsChanged(@NonNull WindowInsetsControllerCompat windowInsetsControllerCompat, int i);
    }

    public static class e {
        public void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        public void b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        public int c() {
            return 0;
        }

        public void d(int i) {
        }

        public void e(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        public void f(int i) {
        }

        public void g(int i) {
        }

        public boolean isAppearanceLightNavigationBars() {
            return false;
        }

        public boolean isAppearanceLightStatusBars() {
            return false;
        }

        public void setAppearanceLightNavigationBars(boolean z) {
        }

        public void setAppearanceLightStatusBars(boolean z) {
        }
    }

    public WindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        this.f1371a = new d(windowInsetsController, this);
    }

    public WindowInsetsControllerCompat(@NonNull Window window, @NonNull View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            d dVar = new d(window.getInsetsController(), this);
            dVar.d = window;
            this.f1371a = dVar;
        } else if (i >= 26) {
            this.f1371a = new c(window, view);
        } else if (i >= 23) {
            this.f1371a = new b(window, view);
        } else {
            this.f1371a = new a(window, view);
        }
    }

    @NonNull
    @RequiresApi(30)
    @Deprecated
    public static WindowInsetsControllerCompat toWindowInsetsControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        return new WindowInsetsControllerCompat(windowInsetsController);
    }

    public void show(int i) {
        this.f1371a.g(i);
    }

    public void hide(int i) {
        this.f1371a.d(i);
    }

    public boolean isAppearanceLightStatusBars() {
        return this.f1371a.isAppearanceLightStatusBars();
    }

    public void setAppearanceLightStatusBars(boolean z) {
        this.f1371a.setAppearanceLightStatusBars(z);
    }

    public boolean isAppearanceLightNavigationBars() {
        return this.f1371a.isAppearanceLightNavigationBars();
    }

    public void setAppearanceLightNavigationBars(boolean z) {
        this.f1371a.setAppearanceLightNavigationBars(z);
    }

    public void controlWindowInsetsAnimation(int i, long j, @Nullable Interpolator interpolator, @Nullable CancellationSignal cancellationSignal, @NonNull WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.f1371a.b(i, j, interpolator, cancellationSignal, windowInsetsAnimationControlListenerCompat);
    }

    public void setSystemBarsBehavior(int i) {
        this.f1371a.f(i);
    }

    @SuppressLint({"WrongConstant"})
    public int getSystemBarsBehavior() {
        return this.f1371a.c();
    }

    public void addOnControllableInsetsChangedListener(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.f1371a.a(onControllableInsetsChangedListener);
    }

    public void removeOnControllableInsetsChangedListener(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.f1371a.e(onControllableInsetsChangedListener);
    }

    @RequiresApi(20)
    public static class a extends e {

        /* renamed from: a, reason: collision with root package name */
        public final Window f1372a;

        /* renamed from: b, reason: collision with root package name */
        public final View f1373b;

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final int c() {
            return 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void e(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        public a(Window window, View view) {
            this.f1372a = window;
            this.f1373b = view;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void g(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    if (i2 == 1) {
                        unsetSystemUiFlag(4);
                        unsetWindowFlag(1024);
                    } else if (i2 == 2) {
                        unsetSystemUiFlag(2);
                    } else if (i2 == 8) {
                        View viewFindViewById = this.f1373b;
                        boolean zIsInEditMode = viewFindViewById.isInEditMode();
                        Window window = this.f1372a;
                        if (zIsInEditMode || viewFindViewById.onCheckIsTextEditor()) {
                            viewFindViewById.requestFocus();
                        } else {
                            viewFindViewById = window.getCurrentFocus();
                        }
                        if (viewFindViewById == null) {
                            viewFindViewById = window.findViewById(R.id.content);
                        }
                        if (viewFindViewById != null && viewFindViewById.hasWindowFocus()) {
                            viewFindViewById.post(new androidx.activity.b(viewFindViewById, 4));
                        }
                    }
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void d(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    if (i2 == 1) {
                        setSystemUiFlag(4);
                    } else if (i2 == 2) {
                        setSystemUiFlag(2);
                    } else if (i2 == 8) {
                        Window window = this.f1372a;
                        ((InputMethodManager) window.getContext().getSystemService("input_method")).hideSoftInputFromWindow(window.getDecorView().getWindowToken(), 0);
                    }
                }
            }
        }

        public void setSystemUiFlag(int i) {
            View decorView = this.f1372a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public void unsetSystemUiFlag(int i) {
            View decorView = this.f1372a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        public void setWindowFlag(int i) {
            this.f1372a.addFlags(i);
        }

        public void unsetWindowFlag(int i) {
            this.f1372a.clearFlags(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void f(int i) {
            if (i == 0) {
                unsetSystemUiFlag(6144);
                return;
            }
            if (i == 1) {
                unsetSystemUiFlag(4096);
                setSystemUiFlag(2048);
            } else {
                if (i != 2) {
                    return;
                }
                unsetSystemUiFlag(2048);
                setSystemUiFlag(4096);
            }
        }
    }

    @RequiresApi(23)
    public static class b extends a {
        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean isAppearanceLightStatusBars() {
            return (this.f1372a.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void setAppearanceLightStatusBars(boolean z) {
            if (z) {
                unsetWindowFlag(Declaration.PUBLIC_ACCESS);
                setWindowFlag(Integer.MIN_VALUE);
                setSystemUiFlag(8192);
                return;
            }
            unsetSystemUiFlag(8192);
        }
    }

    @RequiresApi(26)
    public static class c extends b {
        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean isAppearanceLightNavigationBars() {
            return (this.f1372a.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void setAppearanceLightNavigationBars(boolean z) {
            if (z) {
                unsetWindowFlag(Declaration.PACKAGE_ACCESS);
                setWindowFlag(Integer.MIN_VALUE);
                setSystemUiFlag(16);
                return;
            }
            unsetSystemUiFlag(16);
        }
    }

    @RequiresApi(30)
    public static class d extends e {

        /* renamed from: a, reason: collision with root package name */
        public final WindowInsetsControllerCompat f1374a;

        /* renamed from: b, reason: collision with root package name */
        public final WindowInsetsController f1375b;
        public final SimpleArrayMap c = new SimpleArrayMap();
        public Window d;

        public d(WindowInsetsController windowInsetsController, WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this.f1375b = windowInsetsController;
            this.f1374a = windowInsetsControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void g(int i) {
            Window window = this.d;
            if (window != null && (i & 8) != 0 && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) window.getContext().getSystemService("input_method")).isActive();
            }
            this.f1375b.show(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void d(int i) {
            this.f1375b.hide(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean isAppearanceLightStatusBars() {
            return (this.f1375b.getSystemBarsAppearance() & 8) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void setAppearanceLightStatusBars(boolean z) {
            Window window = this.d;
            if (z) {
                if (window != null) {
                    setSystemUiFlag(8192);
                }
                this.f1375b.setSystemBarsAppearance(8, 8);
            } else {
                if (window != null) {
                    unsetSystemUiFlag(8192);
                }
                this.f1375b.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean isAppearanceLightNavigationBars() {
            return (this.f1375b.getSystemBarsAppearance() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void setAppearanceLightNavigationBars(boolean z) {
            Window window = this.d;
            if (z) {
                if (window != null) {
                    setSystemUiFlag(16);
                }
                this.f1375b.setSystemBarsAppearance(16, 16);
            } else {
                if (window != null) {
                    unsetSystemUiFlag(16);
                }
                this.f1375b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
            this.f1375b.controlWindowInsetsAnimation(i, j, interpolator, cancellationSignal, new r(windowInsetsAnimationControlListenerCompat));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void f(int i) {
            this.f1375b.setSystemBarsBehavior(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final int c() {
            return this.f1375b.getSystemBarsBehavior();
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.view.q, java.lang.Object] */
        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void a(final OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            SimpleArrayMap simpleArrayMap = this.c;
            if (simpleArrayMap.containsKey(onControllableInsetsChangedListener)) {
                return;
            }
            ?? r1 = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: androidx.core.view.q
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i) {
                    WindowInsetsControllerCompat.d dVar = this.f1413a;
                    WindowInsetsControllerCompat.OnControllableInsetsChangedListener onControllableInsetsChangedListener2 = onControllableInsetsChangedListener;
                    if (dVar.f1375b == windowInsetsController) {
                        onControllableInsetsChangedListener2.onControllableInsetsChanged(dVar.f1374a, i);
                    }
                }
            };
            simpleArrayMap.put(onControllableInsetsChangedListener, r1);
            this.f1375b.addOnControllableInsetsChangedListener(r1);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public final void e(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListenerF = p.f(this.c.remove(onControllableInsetsChangedListener));
            if (onControllableInsetsChangedListenerF != null) {
                this.f1375b.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListenerF);
            }
        }

        public void unsetSystemUiFlag(int i) {
            View decorView = this.d.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        public void setSystemUiFlag(int i) {
            View decorView = this.d.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }
    }
}
