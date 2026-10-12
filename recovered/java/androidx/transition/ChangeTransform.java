package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ChangeTransform extends Transition {
    public static final String[] L = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};
    public static final Property M = new a(float[].class, "nonTranslations");
    public static final Property N = new b(PointF.class, "translations");
    public static final boolean O = true;
    public boolean I;
    public boolean J;
    public final Matrix K;

    public static class a extends Property<d, float[]> {
        @Override // android.util.Property
        public float[] get(d dVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(d dVar, float[] fArr) {
            dVar.getClass();
            System.arraycopy(fArr, 0, dVar.c, 0, fArr.length);
            dVar.a();
        }
    }

    public static class b extends Property<d, PointF> {
        @Override // android.util.Property
        public PointF get(d dVar) {
            return null;
        }

        @Override // android.util.Property
        public void set(d dVar, PointF pointF) {
            dVar.getClass();
            dVar.d = pointF.x;
            dVar.e = pointF.y;
            dVar.a();
        }
    }

    public ChangeTransform() {
        this.I = true;
        this.J = true;
        this.K = new Matrix();
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I = true;
        this.J = true;
        this.K = new Matrix();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f2301g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.I = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.J = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public boolean getReparentWithOverlay() {
        return this.I;
    }

    public void setReparentWithOverlay(boolean z) {
        this.I = z;
    }

    public boolean getReparent() {
        return this.J;
    }

    public void setReparent(boolean z) {
        this.J = z;
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return L;
    }

    public final void m(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        transitionValues.values.put("android:changeTransform:parent", view.getParent());
        transitionValues.values.put("android:changeTransform:transforms", new e(view));
        Matrix matrix = view.getMatrix();
        transitionValues.values.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.J) {
            Matrix matrix2 = new Matrix();
            f0.f2280a.transformMatrixToGlobal((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r2.getScrollX(), -r2.getScrollY());
            transitionValues.values.put("android:changeTransform:parentMatrix", matrix2);
            transitionValues.values.put("android:changeTransform:intermediateMatrix", view.getTag(R.id.transition_transform));
            transitionValues.values.put("android:changeTransform:intermediateParentMatrix", view.getTag(R.id.parent_matrix));
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
        if (O) {
            return;
        }
        ((ViewGroup) transitionValues.view.getParent()).startViewTransition(transitionValues.view);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x033f A[SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator createAnimator(@androidx.annotation.NonNull android.view.ViewGroup r27, androidx.transition.TransitionValues r28, androidx.transition.TransitionValues r29) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1179
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.createAnimator(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final float f2231a;

        /* renamed from: b, reason: collision with root package name */
        public final float f2232b;
        public final float c;
        public final float d;
        public final float e;
        public final float f;

        /* renamed from: g, reason: collision with root package name */
        public final float f2233g;
        public final float h;

        public e(View view) {
            this.f2231a = view.getTranslationX();
            this.f2232b = view.getTranslationY();
            this.c = ViewCompat.getTranslationZ(view);
            this.d = view.getScaleX();
            this.e = view.getScaleY();
            this.f = view.getRotationX();
            this.f2233g = view.getRotationY();
            this.h = view.getRotation();
        }

        public void restore(View view) {
            String[] strArr = ChangeTransform.L;
            view.setTranslationX(this.f2231a);
            view.setTranslationY(this.f2232b);
            ViewCompat.setTranslationZ(view, this.c);
            view.setScaleX(this.d);
            view.setScaleY(this.e);
            view.setRotationX(this.f);
            view.setRotationY(this.f2233g);
            view.setRotation(this.h);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return eVar.f2231a == this.f2231a && eVar.f2232b == this.f2232b && eVar.c == this.c && eVar.d == this.d && eVar.e == this.e && eVar.f == this.f && eVar.f2233g == this.f2233g && eVar.h == this.h;
        }

        public int hashCode() {
            float f = this.f2231a;
            int iFloatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
            float f2 = this.f2232b;
            int iFloatToIntBits2 = (iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.c;
            int iFloatToIntBits3 = (iFloatToIntBits2 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
            float f4 = this.d;
            int iFloatToIntBits4 = (iFloatToIntBits3 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31;
            float f5 = this.e;
            int iFloatToIntBits5 = (iFloatToIntBits4 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
            float f6 = this.f;
            int iFloatToIntBits6 = (iFloatToIntBits5 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
            float f7 = this.f2233g;
            int iFloatToIntBits7 = (iFloatToIntBits6 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
            float f8 = this.h;
            return iFloatToIntBits7 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0);
        }
    }

    public static class c extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public View f2227a;

        /* renamed from: b, reason: collision with root package name */
        public f f2228b;

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            transition.removeListener(this);
            int i = Build.VERSION.SDK_INT;
            View view = this.f2227a;
            if (i == 28) {
                if (!h.f2285g) {
                    try {
                        h.a();
                        Method declaredMethod = h.f2284b.getDeclaredMethod("removeGhost", View.class);
                        h.f = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                        Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e);
                    }
                    h.f2285g = true;
                }
                Method method = h.f;
                if (method != null) {
                    try {
                        method.invoke(null, view);
                    } catch (IllegalAccessException unused) {
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2.getCause());
                    }
                }
            } else {
                int i2 = i.f2288g;
                i iVar = (i) view.getTag(R.id.ghost_view);
                if (iVar != null) {
                    int i3 = iVar.d - 1;
                    iVar.d = i3;
                    if (i3 <= 0) {
                        ((g) iVar.getParent()).removeView(iVar);
                    }
                }
            }
            view.setTag(R.id.transition_transform, null);
            view.setTag(R.id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            this.f2228b.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.f2228b.setVisibility(0);
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f2229a = new Matrix();

        /* renamed from: b, reason: collision with root package name */
        public final View f2230b;
        public final float[] c;
        public float d;
        public float e;

        public d(View view, float[] fArr) {
            this.f2230b = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.c = fArr2;
            this.d = fArr2[2];
            this.e = fArr2[5];
            a();
        }

        public final void a() {
            float f = this.d;
            float[] fArr = this.c;
            fArr[2] = f;
            fArr[5] = this.e;
            Matrix matrix = this.f2229a;
            matrix.setValues(fArr);
            f0.f2280a.setAnimationMatrix(this.f2230b, matrix);
        }
    }
}
