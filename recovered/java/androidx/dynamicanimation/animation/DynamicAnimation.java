package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements a.b {
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;

    /* renamed from: a, reason: collision with root package name */
    public float f1477a;

    /* renamed from: b, reason: collision with root package name */
    public float f1478b;
    public boolean c;
    public final Object d;
    public final FloatPropertyCompat e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public float f1479g;
    public float h;
    public long i;
    public float j;
    public final ArrayList k;
    public final ArrayList l;
    public static final ViewProperty TRANSLATION_X = new f("translationX");
    public static final ViewProperty TRANSLATION_Y = new g("translationY");
    public static final ViewProperty TRANSLATION_Z = new h("translationZ");
    public static final ViewProperty SCALE_X = new i("scaleX");
    public static final ViewProperty SCALE_Y = new j("scaleY");
    public static final ViewProperty ROTATION = new k("rotation");
    public static final ViewProperty ROTATION_X = new l("rotationX");
    public static final ViewProperty ROTATION_Y = new m("rotationY");
    public static final ViewProperty X = new n("x");
    public static final ViewProperty Y = new a("y");
    public static final ViewProperty Z = new b("z");
    public static final ViewProperty ALPHA = new c("alpha");
    public static final ViewProperty SCROLL_X = new d("scrollX");
    public static final ViewProperty SCROLL_Y = new e("scrollY");

    public interface OnAnimationEndListener {
        void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2);
    }

    public interface OnAnimationUpdateListener {
        void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2);
    }

    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
    }

    public static class o {

        /* renamed from: a, reason: collision with root package name */
        public float f1480a;

        /* renamed from: b, reason: collision with root package name */
        public float f1481b;
    }

    public abstract void c(float f2);

    public abstract boolean d(long j2);

    public static class f extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setTranslationX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getTranslationX();
        }
    }

    public static class g extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setTranslationY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getTranslationY();
        }
    }

    public static class h extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            ViewCompat.setTranslationZ(view, f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return ViewCompat.getTranslationZ(view);
        }
    }

    public static class i extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScaleX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScaleX();
        }
    }

    public static class j extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScaleY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScaleY();
        }
    }

    public static class k extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setRotation(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotation();
        }
    }

    public static class l extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setRotationX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotationX();
        }
    }

    public static class m extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setRotationY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotationY();
        }
    }

    public static class n extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setX(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getX();
        }
    }

    public static class a extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setY(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getY();
        }
    }

    public static class b extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            ViewCompat.setZ(view, f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return ViewCompat.getZ(view);
        }
    }

    public static class c extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setAlpha(f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getAlpha();
        }
    }

    public static class d extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScrollX((int) f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScrollX();
        }
    }

    public static class e extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f) {
            view.setScrollY((int) f);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScrollY();
        }
    }

    public DynamicAnimation(FloatValueHolder floatValueHolder) {
        this.f1477a = 0.0f;
        this.f1478b = Float.MAX_VALUE;
        this.c = false;
        this.f = false;
        this.f1479g = Float.MAX_VALUE;
        this.h = -3.4028235E38f;
        this.i = 0L;
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.d = null;
        this.e = new androidx.dynamicanimation.animation.d(floatValueHolder);
        this.j = 1.0f;
    }

    public DynamicAnimation(Object obj, FloatPropertyCompat floatPropertyCompat) {
        this.f1477a = 0.0f;
        this.f1478b = Float.MAX_VALUE;
        this.c = false;
        this.f = false;
        this.f1479g = Float.MAX_VALUE;
        this.h = -Float.MAX_VALUE;
        this.i = 0L;
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.d = obj;
        this.e = floatPropertyCompat;
        if (floatPropertyCompat == ROTATION || floatPropertyCompat == ROTATION_X || floatPropertyCompat == ROTATION_Y) {
            this.j = 0.1f;
            return;
        }
        if (floatPropertyCompat == ALPHA) {
            this.j = 0.00390625f;
        } else if (floatPropertyCompat == SCALE_X || floatPropertyCompat == SCALE_Y) {
            this.j = 0.00390625f;
        } else {
            this.j = 1.0f;
        }
    }

    public T setStartValue(float f2) {
        this.f1478b = f2;
        this.c = true;
        return this;
    }

    public T setStartVelocity(float f2) {
        this.f1477a = f2;
        return this;
    }

    public T setMaxValue(float f2) {
        this.f1479g = f2;
        return this;
    }

    public T setMinValue(float f2) {
        this.h = f2;
        return this;
    }

    public T addEndListener(OnAnimationEndListener onAnimationEndListener) {
        ArrayList arrayList = this.k;
        if (!arrayList.contains(onAnimationEndListener)) {
            arrayList.add(onAnimationEndListener);
        }
        return this;
    }

    public void removeEndListener(OnAnimationEndListener onAnimationEndListener) {
        ArrayList arrayList = this.k;
        int iIndexOf = arrayList.indexOf(onAnimationEndListener);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
        }
    }

    public T addUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        if (isRunning()) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        ArrayList arrayList = this.l;
        if (!arrayList.contains(onAnimationUpdateListener)) {
            arrayList.add(onAnimationUpdateListener);
        }
        return this;
    }

    public void removeUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        ArrayList arrayList = this.l;
        int iIndexOf = arrayList.indexOf(onAnimationUpdateListener);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
        }
    }

    public T setMinimumVisibleChange(@FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.j = f2;
        c(f2 * 0.75f);
        return this;
    }

    public float getMinimumVisibleChange() {
        return this.j;
    }

    public void start() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        boolean z = this.f;
        if (z || z) {
            return;
        }
        this.f = true;
        if (!this.c) {
            this.f1478b = this.e.getValue(this.d);
        }
        float f2 = this.f1478b;
        if (f2 > this.f1479g || f2 < this.h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        androidx.dynamicanimation.animation.a.getInstance().addAnimationFrameCallback(this, 0L);
    }

    public void cancel() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f) {
            a(true);
        }
    }

    public boolean isRunning() {
        return this.f;
    }

    @Override // androidx.dynamicanimation.animation.a.b
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean doAnimationFrame(long j2) {
        long j3 = this.i;
        if (j3 == 0) {
            this.i = j2;
            b(this.f1478b);
            return false;
        }
        this.i = j2;
        boolean zD = d(j2 - j3);
        float fMin = Math.min(this.f1478b, this.f1479g);
        this.f1478b = fMin;
        float fMax = Math.max(fMin, this.h);
        this.f1478b = fMax;
        b(fMax);
        if (zD) {
            a(false);
        }
        return zD;
    }

    public final void a(boolean z) {
        ArrayList arrayList;
        int i2 = 0;
        this.f = false;
        androidx.dynamicanimation.animation.a.getInstance().removeCallback(this);
        this.i = 0L;
        this.c = false;
        while (true) {
            arrayList = this.k;
            if (i2 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i2) != null) {
                ((OnAnimationEndListener) arrayList.get(i2)).onAnimationEnd(this, z, this.f1478b, this.f1477a);
            }
            i2++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    public final void b(float f2) {
        ArrayList arrayList;
        this.e.setValue(this.d, f2);
        int i2 = 0;
        while (true) {
            arrayList = this.l;
            if (i2 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i2) != null) {
                ((OnAnimationUpdateListener) arrayList.get(i2)).onAnimationUpdate(this, this.f1478b, this.f1477a);
            }
            i2++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }
}
