package com.google.android.material.transition;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PathParser;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.transition.PathMotion;
import androidx.transition.PatternPathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.Shapeable;
import com.google.appinventor.components.runtime.Component;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

/* loaded from: classes.dex */
public final class MaterialContainerTransform extends Transition {
    public static final int FADE_MODE_CROSS = 2;
    public static final int FADE_MODE_IN = 0;
    public static final int FADE_MODE_OUT = 1;
    public static final int FADE_MODE_THROUGH = 3;
    public static final int FIT_MODE_AUTO = 0;
    public static final int FIT_MODE_HEIGHT = 2;
    public static final int FIT_MODE_WIDTH = 1;
    public static final int TRANSITION_DIRECTION_AUTO = 0;
    public static final int TRANSITION_DIRECTION_ENTER = 1;
    public static final int TRANSITION_DIRECTION_RETURN = 2;
    public static final String[] k0 = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};
    public static final c l0 = new c(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));
    public static final c m0 = new c(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));
    public static final c n0 = new c(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));
    public static final c o0 = new c(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));
    public boolean I;
    public boolean J;
    public boolean K;
    public final boolean L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public View W;
    public View a0;
    public ShapeAppearanceModel b0;
    public ShapeAppearanceModel c0;
    public ProgressThresholds d0;
    public ProgressThresholds e0;
    public ProgressThresholds f0;
    public ProgressThresholds g0;
    public boolean h0;
    public float i0;
    public float j0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FitMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TransitionDirection {
    }

    public MaterialContainerTransform() {
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = R.id.content;
        this.N = -1;
        this.O = -1;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 1375731712;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.h0 = Build.VERSION.SDK_INT >= 28;
        this.i0 = -1.0f;
        this.j0 = -1.0f;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z) {
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = R.id.content;
        this.N = -1;
        this.O = -1;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 1375731712;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.h0 = Build.VERSION.SDK_INT >= 28;
        this.i0 = -1.0f;
        this.j0 = -1.0f;
        o(context, z);
        this.L = true;
    }

    @IdRes
    public int getStartViewId() {
        return this.N;
    }

    public void setStartViewId(@IdRes int i) {
        this.N = i;
    }

    @IdRes
    public int getEndViewId() {
        return this.O;
    }

    public void setEndViewId(@IdRes int i) {
        this.O = i;
    }

    @Nullable
    public View getStartView() {
        return this.W;
    }

    public void setStartView(@Nullable View view) {
        this.W = view;
    }

    @Nullable
    public View getEndView() {
        return this.a0;
    }

    public void setEndView(@Nullable View view) {
        this.a0 = view;
    }

    @Nullable
    public ShapeAppearanceModel getStartShapeAppearanceModel() {
        return this.b0;
    }

    public void setStartShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.b0 = shapeAppearanceModel;
    }

    @Nullable
    public ShapeAppearanceModel getEndShapeAppearanceModel() {
        return this.c0;
    }

    public void setEndShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.c0 = shapeAppearanceModel;
    }

    public boolean isElevationShadowEnabled() {
        return this.h0;
    }

    public void setElevationShadowEnabled(boolean z) {
        this.h0 = z;
    }

    public float getStartElevation() {
        return this.i0;
    }

    public void setStartElevation(float f) {
        this.i0 = f;
    }

    public float getEndElevation() {
        return this.j0;
    }

    public void setEndElevation(float f) {
        this.j0 = f;
    }

    @IdRes
    public int getDrawingViewId() {
        return this.M;
    }

    public void setDrawingViewId(@IdRes int i) {
        this.M = i;
    }

    @ColorInt
    public int getContainerColor() {
        return this.P;
    }

    public void setContainerColor(@ColorInt int i) {
        this.P = i;
    }

    @ColorInt
    public int getStartContainerColor() {
        return this.Q;
    }

    public void setStartContainerColor(@ColorInt int i) {
        this.Q = i;
    }

    @ColorInt
    public int getEndContainerColor() {
        return this.R;
    }

    public void setEndContainerColor(@ColorInt int i) {
        this.R = i;
    }

    public void setAllContainerColors(@ColorInt int i) {
        this.P = i;
        this.Q = i;
        this.R = i;
    }

    @ColorInt
    public int getScrimColor() {
        return this.S;
    }

    public void setScrimColor(@ColorInt int i) {
        this.S = i;
    }

    public int getTransitionDirection() {
        return this.T;
    }

    public void setTransitionDirection(int i) {
        this.T = i;
    }

    public int getFadeMode() {
        return this.U;
    }

    public void setFadeMode(int i) {
        this.U = i;
    }

    public int getFitMode() {
        return this.V;
    }

    public void setFitMode(int i) {
        this.V = i;
    }

    @Nullable
    public ProgressThresholds getFadeProgressThresholds() {
        return this.d0;
    }

    public void setFadeProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.d0 = progressThresholds;
    }

    @Nullable
    public ProgressThresholds getScaleProgressThresholds() {
        return this.e0;
    }

    public void setScaleProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.e0 = progressThresholds;
    }

    @Nullable
    public ProgressThresholds getScaleMaskProgressThresholds() {
        return this.f0;
    }

    public void setScaleMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f0 = progressThresholds;
    }

    @Nullable
    public ProgressThresholds getShapeMaskProgressThresholds() {
        return this.g0;
    }

    public void setShapeMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.g0 = progressThresholds;
    }

    public boolean isHoldAtEndEnabled() {
        return this.J;
    }

    public void setHoldAtEndEnabled(boolean z) {
        this.J = z;
    }

    public boolean isDrawDebugEnabled() {
        return this.I;
    }

    public void setDrawDebugEnabled(boolean z) {
        this.I = z;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.K = true;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return k0;
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) throws Resources.NotFoundException {
        m(transitionValues, this.W, this.N, this.b0);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) throws Resources.NotFoundException {
        m(transitionValues, this.a0, this.O, this.c0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void m(TransitionValues transitionValues, View view, int i, ShapeAppearanceModel shapeAppearanceModel) throws Resources.NotFoundException {
        RectF rectFB;
        if (i != -1) {
            View view2 = transitionValues.view;
            RectF rectF = u.f3500a;
            View viewFindViewById = view2.findViewById(i);
            if (viewFindViewById == null) {
                viewFindViewById = u.a(i, view2);
            }
            transitionValues.view = viewFindViewById;
        } else if (view != null) {
            transitionValues.view = view;
        } else {
            View view3 = transitionValues.view;
            int i2 = com.google.android.material.R.id.mtrl_motion_snapshot_view;
            if (view3.getTag(i2) instanceof View) {
                View view4 = (View) transitionValues.view.getTag(i2);
                transitionValues.view.setTag(i2, null);
                transitionValues.view = view4;
            }
        }
        View view5 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view5) && view5.getWidth() == 0 && view5.getHeight() == 0) {
            return;
        }
        if (view5.getParent() == null) {
            RectF rectF2 = u.f3500a;
            rectFB = new RectF(view5.getLeft(), view5.getTop(), view5.getRight(), view5.getBottom());
        } else {
            rectFB = u.b(view5);
        }
        transitionValues.values.put("materialContainerTransition:bounds", rectFB);
        Map<String, Object> map = transitionValues.values;
        if (shapeAppearanceModel == null) {
            int i3 = com.google.android.material.R.id.mtrl_motion_snapshot_view;
            if (view5.getTag(i3) instanceof ShapeAppearanceModel) {
                shapeAppearanceModel = (ShapeAppearanceModel) view5.getTag(i3);
            } else {
                Context context = view5.getContext();
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
                typedArrayObtainStyledAttributes.recycle();
                if (resourceId != -1) {
                    shapeAppearanceModel = ShapeAppearanceModel.builder(context, resourceId, 0).build();
                } else if (view5 instanceof Shapeable) {
                    shapeAppearanceModel = ((Shapeable) view5).getShapeAppearanceModel();
                } else {
                    shapeAppearanceModel = ShapeAppearanceModel.builder().build();
                }
            }
        }
        map.put("materialContainerTransition:shapeAppearance", shapeAppearanceModel.withTransformedCornerSizes(new s(rectFB)));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0135 A[PHI: r27
      0x0135: PHI (r27v1 android.view.View) = (r27v0 android.view.View), (r27v4 android.view.View) binds: [B:64:0x013a, B:61:0x0133] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.transition.Transition
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator createAnimator(@androidx.annotation.NonNull android.view.ViewGroup r29, @androidx.annotation.Nullable androidx.transition.TransitionValues r30, @androidx.annotation.Nullable androidx.transition.TransitionValues r31) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transition.MaterialContainerTransform.createAnimator(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ d f3402a;

        public a(d dVar) {
            this.f3402a = dVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            d dVar = this.f3402a;
            if (dVar.L != animatedFraction) {
                dVar.d(animatedFraction);
            }
        }
    }

    public class b extends r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f3403a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f3404b;
        public final /* synthetic */ View c;
        public final /* synthetic */ View d;

        public b(View view, d dVar, View view2, View view3) {
            this.f3403a = view;
            this.f3404b = dVar;
            this.c = view2;
            this.d = view3;
        }

        @Override // com.google.android.material.transition.r, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            ViewUtils.getOverlay(this.f3403a).add(this.f3404b);
            this.c.setAlpha(0.0f);
            this.d.setAlpha(0.0f);
        }

        @Override // com.google.android.material.transition.r, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform materialContainerTransform = MaterialContainerTransform.this;
            materialContainerTransform.removeListener(this);
            if (materialContainerTransform.J) {
                return;
            }
            this.c.setAlpha(1.0f);
            this.d.setAlpha(1.0f);
            ViewUtils.getOverlay(this.f3403a).remove(this.f3404b);
        }
    }

    public final void o(Context context, boolean z) {
        int i;
        int iResolveThemeDuration;
        int i2 = com.google.android.material.R.attr.motionEasingStandard;
        TimeInterpolator timeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        RectF rectF = u.f3500a;
        if (i2 != 0 && getInterpolator() == null) {
            setInterpolator(MotionUtils.resolveThemeInterpolator(context, i2, timeInterpolator));
        }
        int i3 = z ? com.google.android.material.R.attr.motionDurationLong1 : com.google.android.material.R.attr.motionDurationMedium2;
        if (i3 != 0 && getDuration() == -1 && (iResolveThemeDuration = MotionUtils.resolveThemeDuration(context, i3, -1)) != -1) {
            setDuration(iResolveThemeDuration);
        }
        if (this.K || (i = com.google.android.material.R.attr.motionPath) == 0) {
            return;
        }
        TypedValue typedValue = new TypedValue();
        boolean zResolveAttribute = context.getTheme().resolveAttribute(i, typedValue, true);
        PathMotion patternPathMotion = null;
        if (zResolveAttribute) {
            int i4 = typedValue.type;
            if (i4 == 16) {
                int i5 = typedValue.data;
                if (i5 != 0) {
                    if (i5 != 1) {
                        throw new IllegalArgumentException(_COROUTINE.a.d(i5, "Invalid motion path type: "));
                    }
                    patternPathMotion = new MaterialArcMotion();
                }
            } else {
                if (i4 != 3) {
                    throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
                }
                patternPathMotion = new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
            }
        }
        if (patternPathMotion != null) {
            setPathMotion(patternPathMotion);
        }
    }

    public final c n(boolean z, c cVar, c cVar2) {
        if (!z) {
            cVar = cVar2;
        }
        ProgressThresholds progressThresholds = this.d0;
        ProgressThresholds progressThresholds2 = cVar.f3405a;
        RectF rectF = u.f3500a;
        if (progressThresholds == null) {
            progressThresholds = progressThresholds2;
        }
        ProgressThresholds progressThresholds3 = this.e0;
        if (progressThresholds3 == null) {
            progressThresholds3 = cVar.f3406b;
        }
        ProgressThresholds progressThresholds4 = this.f0;
        if (progressThresholds4 == null) {
            progressThresholds4 = cVar.c;
        }
        ProgressThresholds progressThresholds5 = this.g0;
        if (progressThresholds5 == null) {
            progressThresholds5 = cVar.d;
        }
        return new c(progressThresholds, progressThresholds3, progressThresholds4, progressThresholds5);
    }

    public static final class d extends Drawable {
        public final c A;
        public final com.google.android.material.transition.a B;
        public final h C;
        public final boolean D;
        public final Paint E;
        public final Path F;
        public com.google.android.material.transition.c G;
        public j H;
        public RectF I;
        public float J;
        public float K;
        public float L;

        /* renamed from: a, reason: collision with root package name */
        public final View f3407a;

        /* renamed from: b, reason: collision with root package name */
        public final RectF f3408b;
        public final ShapeAppearanceModel c;
        public final float d;
        public final View e;
        public final RectF f;

        /* renamed from: g, reason: collision with root package name */
        public final ShapeAppearanceModel f3409g;
        public final float h;
        public final Paint i;
        public final Paint j;
        public final Paint k;
        public final Paint l;
        public final Paint m;
        public final k n;
        public final PathMeasure o;
        public final float p;
        public final float[] q;
        public final boolean r;
        public final float s;
        public final float t;
        public final boolean u;
        public final MaterialShapeDrawable v;
        public final RectF w;
        public final RectF x;
        public final RectF y;
        public final RectF z;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        public d(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, int i, int i2, int i3, int i4, boolean z, boolean z2, com.google.android.material.transition.a aVar, h hVar, c cVar, boolean z3) {
            Paint paint = new Paint();
            this.i = paint;
            Paint paint2 = new Paint();
            this.j = paint2;
            Paint paint3 = new Paint();
            this.k = paint3;
            this.l = new Paint();
            Paint paint4 = new Paint();
            this.m = paint4;
            this.n = new k();
            this.q = new float[]{rectF.centerX(), rectF.top};
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.E = paint5;
            this.F = new Path();
            this.f3407a = view;
            this.f3408b = rectF;
            this.c = shapeAppearanceModel;
            this.d = f;
            this.e = view2;
            this.f = rectF2;
            this.f3409g = shapeAppearanceModel2;
            this.h = f2;
            this.r = z;
            this.u = z2;
            this.B = aVar;
            this.C = hVar;
            this.A = cVar;
            this.D = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.s = r9.widthPixels;
            this.t = r9.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
            materialShapeDrawable.setShadowCompatibilityMode(2);
            materialShapeDrawable.setShadowBitmapDrawingEnable(false);
            materialShapeDrawable.setShadowColor(Component.COLOR_GRAY);
            RectF rectF3 = new RectF(rectF);
            this.w = rectF3;
            this.x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.y = rectF4;
            this.z = new RectF(rectF4);
            PointF pointF = new PointF(rectF.centerX(), rectF.top);
            PointF pointF2 = new PointF(rectF2.centerX(), rectF2.top);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(pointF.x, pointF.y, pointF2.x, pointF2.y), false);
            this.o = pathMeasure;
            this.p = pathMeasure.getLength();
            paint4.setStyle(Paint.Style.FILL);
            RectF rectF5 = u.f3500a;
            paint4.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i4, i4, Shader.TileMode.CLAMP));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            d(0.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            Paint paint = this.m;
            if (paint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), paint);
            }
            boolean z = this.D;
            int iSave = z ? canvas.save() : -1;
            boolean z2 = this.u;
            k kVar = this.n;
            if (z2 && this.J > 0.0f) {
                canvas.save();
                canvas.clipPath(kVar.f3430a, Region.Op.DIFFERENCE);
                if (Build.VERSION.SDK_INT > 28) {
                    ShapeAppearanceModel shapeAppearanceModel = kVar.e;
                    boolean zIsRoundRect = shapeAppearanceModel.isRoundRect(this.I);
                    Paint paint2 = this.l;
                    if (zIsRoundRect) {
                        float cornerSize = shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(this.I);
                        canvas.drawRoundRect(this.I, cornerSize, cornerSize, paint2);
                    } else {
                        canvas.drawPath(kVar.f3430a, paint2);
                    }
                } else {
                    MaterialShapeDrawable materialShapeDrawable = this.v;
                    RectF rectF = this.I;
                    materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                    materialShapeDrawable.setElevation(this.J);
                    materialShapeDrawable.setShadowVerticalOffset((int) this.K);
                    materialShapeDrawable.setShapeAppearanceModel(kVar.e);
                    materialShapeDrawable.draw(canvas);
                }
                canvas.restore();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                canvas.clipPath(kVar.f3430a);
            } else {
                canvas.clipPath(kVar.f3431b);
                canvas.clipPath(kVar.c, Region.Op.UNION);
            }
            c(canvas, this.i);
            if (this.G.c) {
                b(canvas);
                a(canvas);
            } else {
                a(canvas);
                b(canvas);
            }
            if (z) {
                canvas.restoreToCount(iSave);
                RectF rectF2 = this.w;
                Path path = this.F;
                PointF pointF = new PointF(rectF2.centerX(), rectF2.top);
                float f = this.L;
                Paint paint3 = this.E;
                if (f == 0.0f) {
                    path.reset();
                    path.moveTo(pointF.x, pointF.y);
                } else {
                    path.lineTo(pointF.x, pointF.y);
                    paint3.setColor(Component.COLOR_MAGENTA);
                    canvas.drawPath(path, paint3);
                }
                RectF rectF3 = this.x;
                paint3.setColor(-256);
                canvas.drawRect(rectF3, paint3);
                paint3.setColor(Component.COLOR_GREEN);
                canvas.drawRect(rectF2, paint3);
                RectF rectF4 = this.z;
                paint3.setColor(Component.COLOR_CYAN);
                canvas.drawRect(rectF4, paint3);
                RectF rectF5 = this.y;
                paint3.setColor(Component.COLOR_BLUE);
                canvas.drawRect(rectF5, paint3);
            }
        }

        public final void b(Canvas canvas) {
            c(canvas, this.j);
            Rect bounds = getBounds();
            RectF rectF = this.w;
            u.f(canvas, bounds, rectF.left, rectF.top, this.H.f3428a, this.G.f3416a, new l(this));
        }

        public final void a(Canvas canvas) {
            c(canvas, this.k);
            Rect bounds = getBounds();
            RectF rectF = this.y;
            u.f(canvas, bounds, rectF.left, rectF.top, this.H.f3429b, this.G.f3417b, new m(this));
        }

        public final void c(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        public final void d(float f) {
            float f2;
            float f3;
            RectF rectF;
            float f4;
            this.L = f;
            this.m.setAlpha((int) (this.r ? u.c(0.0f, 255.0f, f) : u.c(255.0f, 0.0f, f)));
            float f5 = this.p;
            PathMeasure pathMeasure = this.o;
            float[] fArr = this.q;
            pathMeasure.getPosTan(f5 * f, fArr, null);
            float fA = fArr[0];
            float fA2 = fArr[1];
            if (f > 1.0f || f < 0.0f) {
                if (f > 1.0f) {
                    f3 = (f - 1.0f) / 0.00999999f;
                    f2 = 0.99f;
                } else {
                    f2 = 0.01f;
                    f3 = (f / 0.01f) * (-1.0f);
                }
                pathMeasure.getPosTan(f5 * f2, fArr, null);
                float f6 = fArr[0];
                float f7 = fArr[1];
                fA = _COROUTINE.a.a(fA, f6, f3, fA);
                fA2 = _COROUTINE.a.a(fA2, f7, f3, fA2);
            }
            float f8 = fA2;
            float f9 = fA;
            c cVar = this.A;
            float fFloatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(cVar.f3406b.f3400a))).floatValue();
            float fFloatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(cVar.f3406b.f3401b))).floatValue();
            RectF rectF2 = this.f3408b;
            float fWidth = rectF2.width();
            float fHeight = rectF2.height();
            RectF rectF3 = this.f;
            j jVarEvaluate = this.C.evaluate(f, fFloatValue, fFloatValue2, fWidth, fHeight, rectF3.width(), rectF3.height());
            this.H = jVarEvaluate;
            float f10 = jVarEvaluate.c / 2.0f;
            float f11 = jVarEvaluate.d + f8;
            RectF rectF4 = this.w;
            rectF4.set(f9 - f10, f8, f10 + f9, f11);
            j jVar = this.H;
            float f12 = jVar.e / 2.0f;
            float f13 = jVar.f + f8;
            RectF rectF5 = this.y;
            rectF5.set(f9 - f12, f8, f12 + f9, f13);
            RectF rectF6 = this.x;
            rectF6.set(rectF4);
            RectF rectF7 = this.z;
            rectF7.set(rectF5);
            ProgressThresholds progressThresholds = cVar.c;
            float fFloatValue3 = ((Float) Preconditions.checkNotNull(Float.valueOf(progressThresholds.f3400a))).floatValue();
            float fFloatValue4 = ((Float) Preconditions.checkNotNull(Float.valueOf(progressThresholds.f3401b))).floatValue();
            j jVar2 = this.H;
            h hVar = this.C;
            boolean zShouldMaskStartBounds = hVar.shouldMaskStartBounds(jVar2);
            RectF rectF8 = zShouldMaskStartBounds ? rectF6 : rectF7;
            float fD = u.d(0.0f, 1.0f, fFloatValue3, fFloatValue4, f, false);
            if (!zShouldMaskStartBounds) {
                fD = 1.0f - fD;
            }
            hVar.applyMask(rectF8, fD, this.H);
            this.I = new RectF(Math.min(rectF6.left, rectF7.left), Math.min(rectF6.top, rectF7.top), Math.max(rectF6.right, rectF7.right), Math.max(rectF6.bottom, rectF7.bottom));
            k kVar = this.n;
            kVar.getClass();
            ProgressThresholds progressThresholds2 = cVar.d;
            float start = progressThresholds2.getStart();
            float end = progressThresholds2.getEnd();
            ShapeAppearanceModel shapeAppearanceModelBuild = this.c;
            if (f < start) {
                f4 = f;
                rectF = rectF7;
            } else {
                ShapeAppearanceModel shapeAppearanceModel = this.f3409g;
                if (f > end) {
                    f4 = f;
                    rectF = rectF7;
                    shapeAppearanceModelBuild = shapeAppearanceModel;
                } else {
                    rectF = rectF7;
                    t tVar = new t(rectF4, rectF, start, end, f);
                    f4 = f;
                    shapeAppearanceModelBuild = ((shapeAppearanceModelBuild.getTopLeftCornerSize().getCornerSize(rectF4) == 0.0f && shapeAppearanceModelBuild.getTopRightCornerSize().getCornerSize(rectF4) == 0.0f && shapeAppearanceModelBuild.getBottomRightCornerSize().getCornerSize(rectF4) == 0.0f && shapeAppearanceModelBuild.getBottomLeftCornerSize().getCornerSize(rectF4) == 0.0f) ? shapeAppearanceModel : shapeAppearanceModelBuild).toBuilder().setTopLeftCornerSize(tVar.apply(shapeAppearanceModelBuild.getTopLeftCornerSize(), shapeAppearanceModel.getTopLeftCornerSize())).setTopRightCornerSize(tVar.apply(shapeAppearanceModelBuild.getTopRightCornerSize(), shapeAppearanceModel.getTopRightCornerSize())).setBottomLeftCornerSize(tVar.apply(shapeAppearanceModelBuild.getBottomLeftCornerSize(), shapeAppearanceModel.getBottomLeftCornerSize())).setBottomRightCornerSize(tVar.apply(shapeAppearanceModelBuild.getBottomRightCornerSize(), shapeAppearanceModel.getBottomRightCornerSize())).build();
                }
            }
            kVar.e = shapeAppearanceModelBuild;
            Path path = kVar.f3431b;
            ShapeAppearancePathProvider shapeAppearancePathProvider = kVar.d;
            shapeAppearancePathProvider.calculatePath(shapeAppearanceModelBuild, 1.0f, rectF6, path);
            ShapeAppearanceModel shapeAppearanceModel2 = kVar.e;
            Path path2 = kVar.c;
            shapeAppearancePathProvider.calculatePath(shapeAppearanceModel2, 1.0f, rectF, path2);
            if (Build.VERSION.SDK_INT >= 23) {
                kVar.f3430a.op(path, path2, Path.Op.UNION);
            }
            this.J = u.c(this.d, this.h, f4);
            float fCenterX = ((this.I.centerX() / (this.s / 2.0f)) - 1.0f) * 0.3f;
            float fCenterY = (this.I.centerY() / this.t) * 1.5f;
            float f14 = this.J;
            float f15 = (int) (fCenterY * f14);
            this.K = f15;
            this.l.setShadowLayer(f14, (int) (fCenterX * f14), f15, 754974720);
            ProgressThresholds progressThresholds3 = cVar.f3405a;
            this.G = this.B.evaluate(f4, ((Float) Preconditions.checkNotNull(Float.valueOf(progressThresholds3.f3400a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(progressThresholds3.f3401b))).floatValue(), 0.35f);
            Paint paint = this.j;
            if (paint.getColor() != 0) {
                paint.setAlpha(this.G.f3416a);
            }
            Paint paint2 = this.k;
            if (paint2.getColor() != 0) {
                paint2.setAlpha(this.G.f3417b);
            }
            invalidateSelf();
        }
    }

    public static class ProgressThresholds {

        /* renamed from: a, reason: collision with root package name */
        public final float f3400a;

        /* renamed from: b, reason: collision with root package name */
        public final float f3401b;

        public ProgressThresholds(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            this.f3400a = f;
            this.f3401b = f2;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getStart() {
            return this.f3400a;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getEnd() {
            return this.f3401b;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final ProgressThresholds f3405a;

        /* renamed from: b, reason: collision with root package name */
        public final ProgressThresholds f3406b;
        public final ProgressThresholds c;
        public final ProgressThresholds d;

        public c(ProgressThresholds progressThresholds, ProgressThresholds progressThresholds2, ProgressThresholds progressThresholds3, ProgressThresholds progressThresholds4) {
            this.f3405a = progressThresholds;
            this.f3406b = progressThresholds2;
            this.c = progressThresholds3;
            this.d = progressThresholds4;
        }
    }
}
