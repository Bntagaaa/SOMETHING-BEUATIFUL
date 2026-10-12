package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {

    /* renamed from: a, reason: collision with root package name */
    public c f1341a;

    public WindowInsetsAnimationCompat(int i, @Nullable Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f1341a = new b(a.a.j(i, interpolator, j));
        } else {
            this.f1341a = new a(i, interpolator, j);
        }
    }

    public int getTypeMask() {
        return this.f1341a.getTypeMask();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getFraction() {
        return this.f1341a.getFraction();
    }

    public float getInterpolatedFraction() {
        return this.f1341a.getInterpolatedFraction();
    }

    @Nullable
    public Interpolator getInterpolator() {
        return this.f1341a.getInterpolator();
    }

    public long getDurationMillis() {
        return this.f1341a.getDurationMillis();
    }

    public void setFraction(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f1341a.setFraction(f);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAlpha() {
        return this.f1341a.getAlpha();
    }

    public void setAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f1341a.setAlpha(f);
    }

    public static final class BoundsCompat {

        /* renamed from: a, reason: collision with root package name */
        public final Insets f1342a;

        /* renamed from: b, reason: collision with root package name */
        public final Insets f1343b;

        public BoundsCompat(@NonNull Insets insets, @NonNull Insets insets2) {
            this.f1342a = insets;
            this.f1343b = insets2;
        }

        public BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.f1342a = b.getLowerBounds(bounds);
            this.f1343b = b.getHigherBounds(bounds);
        }

        @NonNull
        public Insets getLowerBound() {
            return this.f1342a;
        }

        @NonNull
        public Insets getUpperBound() {
            return this.f1343b;
        }

        @NonNull
        public BoundsCompat inset(@NonNull Insets insets) {
            return new BoundsCompat(WindowInsetsCompat.a(this.f1342a, insets.left, insets.top, insets.right, insets.bottom), WindowInsetsCompat.a(this.f1343b, insets.left, insets.top, insets.right, insets.bottom));
        }

        public String toString() {
            return "Bounds{lower=" + this.f1342a + " upper=" + this.f1343b + "}";
        }

        @NonNull
        @RequiresApi(30)
        public WindowInsetsAnimation.Bounds toBounds() {
            return b.createPlatformBounds(this);
        }

        @NonNull
        @RequiresApi(30)
        public static BoundsCompat toBoundsCompat(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }
    }

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;

        /* renamed from: a, reason: collision with root package name */
        public WindowInsets f1344a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1345b;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface DispatchMode {
        }

        public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        @NonNull
        public abstract WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list);

        @NonNull
        public BoundsCompat onStart(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull BoundsCompat boundsCompat) {
            return boundsCompat;
        }

        public Callback(int i) {
            this.f1345b = i;
        }

        public final int getDispatchMode() {
            return this.f1345b;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int f1357a;

        /* renamed from: b, reason: collision with root package name */
        public float f1358b;
        public final Interpolator c;
        public final long d;
        public float e;

        public c(int i, Interpolator interpolator, long j) {
            this.f1357a = i;
            this.c = interpolator;
            this.d = j;
        }

        public int getTypeMask() {
            return this.f1357a;
        }

        public float getFraction() {
            return this.f1358b;
        }

        public float getInterpolatedFraction() {
            Interpolator interpolator = this.c;
            if (interpolator != null) {
                return interpolator.getInterpolation(this.f1358b);
            }
            return this.f1358b;
        }

        @Nullable
        public Interpolator getInterpolator() {
            return this.c;
        }

        public long getDurationMillis() {
            return this.d;
        }

        public float getAlpha() {
            return this.e;
        }

        public void setFraction(float f) {
            this.f1358b = f;
        }

        public void setAlpha(float f) {
            this.e = f;
        }
    }

    @RequiresApi(21)
    public static class a extends c {
        public static final PathInterpolator f = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

        /* renamed from: g, reason: collision with root package name */
        public static final FastOutLinearInInterpolator f1346g = new FastOutLinearInInterpolator();
        public static final DecelerateInterpolator h = new DecelerateInterpolator();

        @RequiresApi(21)
        /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a, reason: collision with other inner class name */
        public static class ViewOnApplyWindowInsetsListenerC0017a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a, reason: collision with root package name */
            public final Callback f1347a;

            /* renamed from: b, reason: collision with root package name */
            public WindowInsetsCompat f1348b;

            public ViewOnApplyWindowInsetsListenerC0017a(View view, Callback callback) {
                this.f1347a = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.f1348b = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                Interpolator interpolator;
                if (!view.isLaidOut()) {
                    this.f1348b = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return a.e(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.f1348b == null) {
                    this.f1348b = ViewCompat.getRootWindowInsets(view);
                }
                if (this.f1348b == null) {
                    this.f1348b = windowInsetsCompat;
                    return a.e(view, windowInsets);
                }
                Callback callbackF = a.f(view);
                if (callbackF != null && Objects.equals(callbackF.f1344a, windowInsets)) {
                    return a.e(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f1348b;
                int i = 0;
                for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                    if (!windowInsetsCompat.getInsets(i2).equals(windowInsetsCompat2.getInsets(i2))) {
                        i |= i2;
                    }
                }
                if (i == 0) {
                    return a.e(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat3 = this.f1348b;
                if ((i & 8) != 0) {
                    if (windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom > windowInsetsCompat3.getInsets(WindowInsetsCompat.Type.ime()).bottom) {
                        interpolator = a.f;
                    } else {
                        interpolator = a.f1346g;
                    }
                } else {
                    interpolator = a.h;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i, interpolator, 160L);
                windowInsetsAnimationCompat.setFraction(0.0f);
                ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                Insets insets = windowInsetsCompat.getInsets(i);
                Insets insets2 = windowInsetsCompat3.getInsets(i);
                BoundsCompat boundsCompat = new BoundsCompat(Insets.of(Math.min(insets.left, insets2.left), Math.min(insets.top, insets2.top), Math.min(insets.right, insets2.right), Math.min(insets.bottom, insets2.bottom)), Insets.of(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom)));
                a.b(view, windowInsetsAnimationCompat, windowInsets, false);
                duration.addUpdateListener(new C0018a(windowInsetsAnimationCompat, windowInsetsCompat, windowInsetsCompat3, i, view));
                duration.addListener(new b(view, windowInsetsAnimationCompat));
                OneShotPreDrawListener.add(view, new c(view, windowInsetsAnimationCompat, boundsCompat, duration));
                this.f1348b = windowInsetsCompat;
                return a.e(view, windowInsets);
            }

            /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$a, reason: collision with other inner class name */
            public class C0018a implements ValueAnimator.AnimatorUpdateListener {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ WindowInsetsAnimationCompat f1349a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ WindowInsetsCompat f1350b;
                public final /* synthetic */ WindowInsetsCompat c;
                public final /* synthetic */ int d;
                public final /* synthetic */ View e;

                public C0018a(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i, View view) {
                    this.f1349a = windowInsetsAnimationCompat;
                    this.f1350b = windowInsetsCompat;
                    this.c = windowInsetsCompat2;
                    this.d = i;
                    this.e = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float f;
                    int i;
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.f1349a;
                    windowInsetsAnimationCompat.setFraction(animatedFraction);
                    float interpolatedFraction = windowInsetsAnimationCompat.getInterpolatedFraction();
                    PathInterpolator pathInterpolator = a.f;
                    WindowInsetsCompat windowInsetsCompat = this.f1350b;
                    WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
                    int i2 = 1;
                    while (i2 <= 256) {
                        if ((this.d & i2) == 0) {
                            builder.setInsets(i2, windowInsetsCompat.getInsets(i2));
                            f = interpolatedFraction;
                            i = 1;
                        } else {
                            Insets insets = windowInsetsCompat.getInsets(i2);
                            Insets insets2 = this.c.getInsets(i2);
                            float f2 = 1.0f - interpolatedFraction;
                            f = interpolatedFraction;
                            i = 1;
                            builder.setInsets(i2, WindowInsetsCompat.a(insets, (int) (((insets.left - insets2.left) * f2) + 0.5d), (int) (((insets.top - insets2.top) * f2) + 0.5d), (int) (((insets.right - insets2.right) * f2) + 0.5d), (int) (((insets.bottom - insets2.bottom) * f2) + 0.5d)));
                        }
                        i2 <<= i;
                        interpolatedFraction = f;
                    }
                    a.c(this.e, builder.build(), Collections.singletonList(windowInsetsAnimationCompat));
                }
            }

            /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$b */
            public class b extends AnimatorListenerAdapter {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ WindowInsetsAnimationCompat f1351a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ View f1352b;

                public b(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                    this.f1351a = windowInsetsAnimationCompat;
                    this.f1352b = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.f1351a;
                    windowInsetsAnimationCompat.setFraction(1.0f);
                    a.a(this.f1352b, windowInsetsAnimationCompat);
                }
            }

            /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$c */
            public class c implements Runnable {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ View f1353a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ WindowInsetsAnimationCompat f1354b;
                public final /* synthetic */ BoundsCompat c;
                public final /* synthetic */ ValueAnimator d;

                public c(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat, ValueAnimator valueAnimator) {
                    this.f1353a = view;
                    this.f1354b = windowInsetsAnimationCompat;
                    this.c = boundsCompat;
                    this.d = valueAnimator;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.d(this.f1353a, this.f1354b, this.c);
                    this.d.start();
                }
            }
        }

        public static WindowInsets e(View view, WindowInsets windowInsets) {
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        public static void b(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z) {
            Callback callbackF = f(view);
            if (callbackF != null) {
                callbackF.f1344a = windowInsets;
                if (!z) {
                    callbackF.onPrepare(windowInsetsAnimationCompat);
                    z = callbackF.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    b(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsets, z);
                }
            }
        }

        public static void d(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callbackF = f(view);
            if (callbackF != null) {
                callbackF.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (callbackF.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    d(viewGroup.getChildAt(i), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        public static void c(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback callbackF = f(view);
            if (callbackF != null) {
                windowInsetsCompat = callbackF.onProgress(windowInsetsCompat, list);
                if (callbackF.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    c(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        public static void a(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callbackF = f(view);
            if (callbackF != null) {
                callbackF.onEnd(windowInsetsAnimationCompat);
                if (callbackF.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    a(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        public static Callback f(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof ViewOnApplyWindowInsetsListenerC0017a) {
                return ((ViewOnApplyWindowInsetsListenerC0017a) tag).f1347a;
            }
            return null;
        }
    }

    @RequiresApi(30)
    public static class b extends c {
        public final WindowInsetsAnimation f;

        public b(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f = windowInsetsAnimation;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public int getTypeMask() {
            return this.f.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        @Nullable
        public Interpolator getInterpolator() {
            return this.f.getInterpolator();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public long getDurationMillis() {
            return this.f.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public float getFraction() {
            return this.f.getFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public void setFraction(float f) {
            this.f.setFraction(f);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.c
        public float getInterpolatedFraction() {
            return this.f.getInterpolatedFraction();
        }

        @RequiresApi(30)
        public static class a extends WindowInsetsAnimation.Callback {

            /* renamed from: a, reason: collision with root package name */
            public final Callback f1355a;

            /* renamed from: b, reason: collision with root package name */
            public List f1356b;
            public ArrayList c;
            public final HashMap d;

            public a(Callback callback) {
                super(callback.getDispatchMode());
                this.d = new HashMap();
                this.f1355a = callback;
            }

            public final WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) this.d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat == null) {
                    windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(0, null, 0L);
                    if (Build.VERSION.SDK_INT >= 30) {
                        windowInsetsAnimationCompat.f1341a = new b(windowInsetsAnimation);
                    }
                    this.d.put(windowInsetsAnimation, windowInsetsAnimationCompat);
                }
                return windowInsetsAnimationCompat;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onPrepare(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.f1355a.onPrepare(a(windowInsetsAnimation));
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            @NonNull
            public WindowInsetsAnimation.Bounds onStart(@NonNull WindowInsetsAnimation windowInsetsAnimation, @NonNull WindowInsetsAnimation.Bounds bounds) {
                return this.f1355a.onStart(a(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            @NonNull
            public WindowInsets onProgress(@NonNull WindowInsets windowInsets, @NonNull List<WindowInsetsAnimation> list) {
                ArrayList arrayList = this.c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.c = arrayList2;
                    this.f1356b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimationK = a.a.k(list.get(size));
                    WindowInsetsAnimationCompat windowInsetsAnimationCompatA = a(windowInsetsAnimationK);
                    windowInsetsAnimationCompatA.setFraction(windowInsetsAnimationK.getFraction());
                    this.c.add(windowInsetsAnimationCompatA);
                }
                return this.f1355a.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.f1356b).toWindowInsets();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onEnd(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.f1355a.onEnd(a(windowInsetsAnimation));
                this.d.remove(windowInsetsAnimation);
            }
        }

        public static void setCallback(@NonNull View view, @Nullable Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new a(callback) : null);
        }

        @NonNull
        public static WindowInsetsAnimation.Bounds createPlatformBounds(@NonNull BoundsCompat boundsCompat) {
            a.a.n();
            return a.a.i(boundsCompat.getLowerBound().toPlatformInsets(), boundsCompat.getUpperBound().toPlatformInsets());
        }

        @NonNull
        public static Insets getLowerBounds(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getLowerBound());
        }

        @NonNull
        public static Insets getHigherBounds(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getUpperBound());
        }
    }
}
