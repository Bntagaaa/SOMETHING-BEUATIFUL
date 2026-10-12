package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.StateListAnimator;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class m {
    public static final TimeInterpolator C = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
    public static final int[] D = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] E = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    public static final int[] F = {R.attr.state_focused, R.attr.state_enabled};
    public static final int[] G = {R.attr.state_hovered, R.attr.state_enabled};
    public static final int[] H = {R.attr.state_enabled};
    public static final int[] I = new int[0];
    public ViewTreeObserver.OnPreDrawListener B;

    /* renamed from: a, reason: collision with root package name */
    public ShapeAppearanceModel f3042a;

    /* renamed from: b, reason: collision with root package name */
    public MaterialShapeDrawable f3043b;
    public Drawable c;
    public com.google.android.material.floatingactionbutton.d d;
    public LayerDrawable e;
    public boolean f;
    public float h;
    public float i;
    public float j;
    public int k;
    public Animator l;
    public MotionSpec m;
    public MotionSpec n;
    public float o;
    public int q;
    public ArrayList s;
    public ArrayList t;
    public ArrayList u;
    public final FloatingActionButton v;
    public final ShadowViewDelegate w;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3044g = true;
    public float p = 1.0f;
    public int r = 0;
    public final Rect x = new Rect();
    public final RectF y = new RectF();
    public final RectF z = new RectF();
    public final Matrix A = new Matrix();

    public class a extends g {
        @Override // com.google.android.material.floatingactionbutton.m.g
        public float getTargetShadowSize() {
            return 0.0f;
        }
    }

    public interface d {
        void onScaleChanged();

        void onTranslationChanged();
    }

    public interface e {
        void onHidden();

        void onShown();
    }

    public boolean j() {
        return true;
    }

    public m(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        this.v = floatingActionButton;
        this.w = shadowViewDelegate;
        StateListAnimator stateListAnimator = new StateListAnimator();
        n nVar = (n) this;
        stateListAnimator.addState(D, d(new c(nVar)));
        stateListAnimator.addState(E, d(new b(nVar)));
        stateListAnimator.addState(F, d(new b(nVar)));
        stateListAnimator.addState(G, d(new b(nVar)));
        stateListAnimator.addState(H, d(new f(nVar)));
        stateListAnimator.addState(I, d(new a(nVar)));
        this.o = floatingActionButton.getRotation();
    }

    public void h(ColorStateList colorStateList) {
        Drawable drawable = this.c;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, RippleUtils.sanitizeRippleDrawableColor(colorStateList));
        }
    }

    public float getElevation() {
        return this.h;
    }

    public final void a(float f2, Matrix matrix) {
        matrix.reset();
        if (this.v.getDrawable() == null || this.q == 0) {
            return;
        }
        RectF rectF = this.y;
        RectF rectF2 = this.z;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        float f3 = this.q;
        rectF2.set(0.0f, 0.0f, f3, f3);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        float f4 = this.q / 2.0f;
        matrix.postScale(f2, f2, f4, f4);
    }

    public final void i(ShapeAppearanceModel shapeAppearanceModel) {
        this.f3042a = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f3043b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Object obj = this.c;
        if (obj instanceof Shapeable) {
            ((Shapeable) obj).setShapeAppearanceModel(shapeAppearanceModel);
        }
        com.google.android.material.floatingactionbutton.d dVar = this.d;
        if (dVar != null) {
            dVar.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    public void f(float f2, float f3, float f4) {
        l();
        MaterialShapeDrawable materialShapeDrawable = this.f3043b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(f2);
        }
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.t == null) {
            this.t = new ArrayList();
        }
        this.t.add(animatorListener);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList arrayList = this.t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    public final AnimatorSet b(MotionSpec motionSpec, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f2};
        FloatingActionButton floatingActionButton = this.v;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        motionSpec.getTiming("opacity").apply(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        motionSpec.getTiming("scale").apply(objectAnimatorOfFloat2);
        int i = Build.VERSION.SDK_INT;
        if (i == 26) {
            k kVar = new k();
            kVar.f3041a = new FloatEvaluator();
            objectAnimatorOfFloat2.setEvaluator(kVar);
        }
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        motionSpec.getTiming("scale").apply(objectAnimatorOfFloat3);
        if (i == 26) {
            k kVar2 = new k();
            kVar2.f3041a = new FloatEvaluator();
            objectAnimatorOfFloat3.setEvaluator(kVar2);
        }
        arrayList.add(objectAnimatorOfFloat3);
        Matrix matrix = this.A;
        a(f4, matrix);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(floatingActionButton, new ImageMatrixProperty(), new i(this), new Matrix(matrix));
        motionSpec.getTiming("iconScale").apply(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet c(float f2, float f3, float f4) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        FloatingActionButton floatingActionButton = this.v;
        valueAnimatorOfFloat.addUpdateListener(new j(this, floatingActionButton.getAlpha(), f2, floatingActionButton.getScaleX(), f3, floatingActionButton.getScaleY(), this.p, f4, new Matrix(this.A)));
        arrayList.add(valueAnimatorOfFloat);
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        animatorSet.setDuration(MotionUtils.resolveThemeDuration(floatingActionButton.getContext(), com.google.android.material.R.attr.motionDurationLong1, floatingActionButton.getContext().getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(MotionUtils.resolveThemeInterpolator(floatingActionButton.getContext(), com.google.android.material.R.attr.motionEasingStandard, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    public final void g() {
        ArrayList arrayList = this.u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((d) it.next()).onTranslationChanged();
            }
        }
    }

    public final void l() {
        Rect rect = this.x;
        e(rect);
        Preconditions.checkNotNull(this.e, "Didn't initialize content background");
        boolean zJ = j();
        ShadowViewDelegate shadowViewDelegate = this.w;
        if (zJ) {
            shadowViewDelegate.setBackgroundDrawable(new InsetDrawable((Drawable) this.e, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            shadowViewDelegate.setBackgroundDrawable(this.e);
        }
        shadowViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void e(Rect rect) {
        int iC;
        if (this.f) {
            int i = this.k;
            FloatingActionButton floatingActionButton = this.v;
            iC = (i - floatingActionButton.c(floatingActionButton.f3016g)) / 2;
        } else {
            iC = 0;
        }
        int iMax = Math.max(iC, (int) Math.ceil(this.f3044g ? getElevation() + this.j : 0.0f));
        int iMax2 = Math.max(iC, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    public static ValueAnimator d(g gVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(C);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(gVar);
        valueAnimator.addUpdateListener(gVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public abstract class g extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3045a;

        /* renamed from: b, reason: collision with root package name */
        public float f3046b;
        public float c;
        public final /* synthetic */ n d;

        public abstract float getTargetShadowSize();

        public g(n nVar) {
            this.d = nVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            boolean z = this.f3045a;
            n nVar = this.d;
            if (!z) {
                MaterialShapeDrawable materialShapeDrawable = nVar.f3043b;
                this.f3046b = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.getElevation();
                this.c = getTargetShadowSize();
                this.f3045a = true;
            }
            float f = this.f3046b;
            float animatedFraction = (int) ((valueAnimator.getAnimatedFraction() * (this.c - f)) + f);
            MaterialShapeDrawable materialShapeDrawable2 = nVar.f3043b;
            if (materialShapeDrawable2 != null) {
                materialShapeDrawable2.setElevation(animatedFraction);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            float f = (int) this.c;
            MaterialShapeDrawable materialShapeDrawable = this.d.f3043b;
            if (materialShapeDrawable != null) {
                materialShapeDrawable.setElevation(f);
            }
            this.f3045a = false;
        }
    }

    public class f extends g {
        public final /* synthetic */ n e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(n nVar) {
            super(nVar);
            this.e = nVar;
        }

        @Override // com.google.android.material.floatingactionbutton.m.g
        public float getTargetShadowSize() {
            return this.e.h;
        }
    }

    public class b extends g {
        public final /* synthetic */ n e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(n nVar) {
            super(nVar);
            this.e = nVar;
        }

        @Override // com.google.android.material.floatingactionbutton.m.g
        public float getTargetShadowSize() {
            n nVar = this.e;
            return nVar.h + nVar.i;
        }
    }

    public class c extends g {
        public final /* synthetic */ n e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(n nVar) {
            super(nVar);
            this.e = nVar;
        }

        @Override // com.google.android.material.floatingactionbutton.m.g
        public float getTargetShadowSize() {
            n nVar = this.e;
            return nVar.h + nVar.j;
        }
    }

    public void k() {
        MaterialShapeDrawable materialShapeDrawable = this.f3043b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShadowCompatRotation((int) this.o);
        }
    }
}
