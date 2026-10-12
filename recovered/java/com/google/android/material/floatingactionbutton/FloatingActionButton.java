package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.expandable.ExpandableTransformationWidget;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.android.material.floatingactionbutton.m;
import com.google.android.material.floatingactionbutton.n;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.stateful.ExtendableSavedState;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, ExpandableTransformationWidget, Shapeable, CoordinatorLayout.AttachedBehavior {
    public static final int NO_CUSTOM_SIZE = 0;
    public static final int SIZE_AUTO = -1;
    public static final int SIZE_MINI = 1;
    public static final int SIZE_NORMAL = 0;
    public static final int q = R.style.Widget_Design_FloatingActionButton;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f3015b;
    public PorterDuff.Mode c;
    public ColorStateList d;
    public PorterDuff.Mode e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public int f3016g;
    public int h;
    public int i;
    public int j;
    public boolean k;
    public final Rect l;
    public final Rect m;
    public final AppCompatImageHelper n;
    public final ExpandableWidgetHelper o;
    public n p;

    public static abstract class OnVisibilityChangedListener {
        public void onHidden(FloatingActionButton floatingActionButton) {
        }

        public void onShown(FloatingActionButton floatingActionButton) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Size {
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        ColorStateList colorStateList;
        Drawable drawable;
        Drawable layerDrawable;
        int i2 = q;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.l = new Rect();
        this.m = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.FloatingActionButton, i, i2, new int[0]);
        this.f3015b = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.FloatingActionButton_backgroundTint);
        this.c = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.FloatingActionButton_rippleColor);
        this.f3016g = typedArrayObtainStyledAttributes.getInt(R.styleable.FloatingActionButton_fabSize, -1);
        this.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.k = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0));
        MotionSpec motionSpecCreateFromAttribute = MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, R.styleable.FloatingActionButton_showMotionSpec);
        MotionSpec motionSpecCreateFromAttribute2 = MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, R.styleable.FloatingActionButton_hideMotionSpec);
        ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder(context2, attributeSet, i, i2, ShapeAppearanceModel.PILL).build();
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_android_enabled, true));
        typedArrayObtainStyledAttributes.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.n = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i);
        this.o = new ExpandableWidgetHelper(this);
        b().i(shapeAppearanceModelBuild);
        m mVarB = b();
        ColorStateList colorStateList2 = this.f3015b;
        PorterDuff.Mode mode = this.c;
        ColorStateList colorStateList3 = this.f;
        n nVar = (n) mVarB;
        n.a aVar = new n.a((ShapeAppearanceModel) Preconditions.checkNotNull(nVar.f3042a));
        nVar.f3043b = aVar;
        aVar.setTintList(colorStateList2);
        if (mode != null) {
            nVar.f3043b.setTintMode(mode);
        }
        MaterialShapeDrawable materialShapeDrawable = nVar.f3043b;
        FloatingActionButton floatingActionButton = nVar.v;
        materialShapeDrawable.initializeElevationOverlay(floatingActionButton.getContext());
        if (dimensionPixelSize <= 0) {
            colorStateList = colorStateList3;
            drawable = null;
            nVar.d = null;
            layerDrawable = nVar.f3043b;
        } else {
            Context context3 = floatingActionButton.getContext();
            d dVar = new d((ShapeAppearanceModel) Preconditions.checkNotNull(nVar.f3042a));
            int color = ContextCompat.getColor(context3, R.color.design_fab_stroke_top_outer_color);
            int color2 = ContextCompat.getColor(context3, R.color.design_fab_stroke_top_inner_color);
            colorStateList = colorStateList3;
            int color3 = ContextCompat.getColor(context3, R.color.design_fab_stroke_end_inner_color);
            int color4 = ContextCompat.getColor(context3, R.color.design_fab_stroke_end_outer_color);
            dVar.i = color;
            dVar.j = color2;
            dVar.k = color3;
            dVar.l = color4;
            dVar.setBorderWidth(dimensionPixelSize);
            if (colorStateList2 != null) {
                dVar.m = colorStateList2.getColorForState(dVar.getState(), dVar.m);
            }
            dVar.p = colorStateList2;
            dVar.n = true;
            dVar.invalidateSelf();
            nVar.d = dVar;
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(nVar.d), (Drawable) Preconditions.checkNotNull(nVar.f3043b)});
            drawable = null;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(colorStateList), layerDrawable, drawable);
        nVar.c = rippleDrawable;
        nVar.e = rippleDrawable;
        b().k = dimensionPixelSize2;
        m mVarB2 = b();
        if (mVarB2.h != dimension) {
            mVarB2.h = dimension;
            mVarB2.f(dimension, mVarB2.i, mVarB2.j);
        }
        m mVarB3 = b();
        if (mVarB3.i != dimension2) {
            mVarB3.i = dimension2;
            mVarB3.f(mVarB3.h, dimension2, mVarB3.j);
        }
        m mVarB4 = b();
        if (mVarB4.j != dimension3) {
            mVarB4.j = dimension3;
            mVarB4.f(mVarB4.h, mVarB4.i, dimension3);
        }
        b().m = motionSpecCreateFromAttribute;
        b().n = motionSpecCreateFromAttribute2;
        b().f = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f;
    }

    public void setRippleColor(@ColorInt int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            b().h(this.f);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f3015b;
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f3015b != colorStateList) {
            this.f3015b = colorStateList;
            m mVarB = b();
            MaterialShapeDrawable materialShapeDrawable = mVarB.f3043b;
            if (materialShapeDrawable != null) {
                materialShapeDrawable.setTintList(colorStateList);
            }
            d dVar = mVarB.d;
            if (dVar != null) {
                if (colorStateList != null) {
                    dVar.m = colorStateList.getColorForState(dVar.getState(), dVar.m);
                }
                dVar.p = colorStateList;
                dVar.n = true;
                dVar.invalidateSelf();
            }
        }
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.c;
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.c != mode) {
            this.c = mode;
            MaterialShapeDrawable materialShapeDrawable = b().f3043b;
            if (materialShapeDrawable != null) {
                materialShapeDrawable.setTintMode(mode);
            }
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.d != colorStateList) {
            this.d = colorStateList;
            f();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.d;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.e != mode) {
            this.e = mode;
            f();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.e;
    }

    public final void f() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.d;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.e;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.n.setImageResource(i);
        f();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            m mVarB = b();
            float f = mVarB.p;
            mVarB.p = f;
            Matrix matrix = mVarB.A;
            mVarB.a(f, matrix);
            mVarB.v.setImageMatrix(matrix);
            if (this.d != null) {
                f();
            }
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        b().i(shapeAppearanceModel);
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return (ShapeAppearanceModel) Preconditions.checkNotNull(b().f3042a);
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return b().f;
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != b().f) {
            b().f = z;
            requestLayout();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    public void setMaxImageSize(int i) {
        this.j = i;
        m mVarB = b();
        if (mVarB.q != i) {
            mVarB.q = i;
            float f = mVarB.p;
            mVarB.p = f;
            Matrix matrix = mVarB.A;
            mVarB.a(f, matrix);
            mVarB.v.setImageMatrix(matrix);
        }
    }

    public void show() {
        show(null);
    }

    public void show(@Nullable OnVisibilityChangedListener onVisibilityChangedListener) {
        g(onVisibilityChangedListener, true);
    }

    public final void g(OnVisibilityChangedListener onVisibilityChangedListener, boolean z) {
        AnimatorSet animatorSetC;
        m mVarB = b();
        f fVar = onVisibilityChangedListener == null ? null : new f(this, onVisibilityChangedListener);
        if (mVarB.v.getVisibility() == 0 ? mVarB.r != 1 : mVarB.r == 2) {
            return;
        }
        Animator animator = mVarB.l;
        if (animator != null) {
            animator.cancel();
        }
        boolean z2 = mVarB.m == null;
        FloatingActionButton floatingActionButton = mVarB.v;
        boolean z3 = ViewCompat.isLaidOut(floatingActionButton) && !floatingActionButton.isInEditMode();
        Matrix matrix = mVarB.A;
        if (z3) {
            if (floatingActionButton.getVisibility() != 0) {
                floatingActionButton.setAlpha(0.0f);
                floatingActionButton.setScaleY(z2 ? 0.4f : 0.0f);
                floatingActionButton.setScaleX(z2 ? 0.4f : 0.0f);
                float f = z2 ? 0.4f : 0.0f;
                mVarB.p = f;
                mVarB.a(f, matrix);
                floatingActionButton.setImageMatrix(matrix);
            }
            MotionSpec motionSpec = mVarB.m;
            if (motionSpec != null) {
                animatorSetC = mVarB.b(motionSpec, 1.0f, 1.0f, 1.0f);
            } else {
                animatorSetC = mVarB.c(1.0f, 1.0f, 1.0f);
            }
            animatorSetC.addListener(new h(mVarB, z, fVar));
            ArrayList arrayList = mVarB.s;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    animatorSetC.addListener((Animator.AnimatorListener) it.next());
                }
            }
            animatorSetC.start();
            return;
        }
        floatingActionButton.internalSetVisibility(0, z);
        floatingActionButton.setAlpha(1.0f);
        floatingActionButton.setScaleY(1.0f);
        floatingActionButton.setScaleX(1.0f);
        mVarB.p = 1.0f;
        mVarB.a(1.0f, matrix);
        floatingActionButton.setImageMatrix(matrix);
        if (fVar != null) {
            fVar.onShown();
        }
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        m mVarB = b();
        if (mVarB.s == null) {
            mVarB.s = new ArrayList();
        }
        mVarB.s.add(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList arrayList = b().s;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    public void hide() {
        hide(null);
    }

    public void hide(@Nullable OnVisibilityChangedListener onVisibilityChangedListener) {
        d(onVisibilityChangedListener, true);
    }

    public final void d(OnVisibilityChangedListener onVisibilityChangedListener, boolean z) {
        AnimatorSet animatorSetC;
        m mVarB = b();
        f fVar = onVisibilityChangedListener == null ? null : new f(this, onVisibilityChangedListener);
        boolean z2 = true;
        if (mVarB.v.getVisibility() != 0 ? mVarB.r == 2 : mVarB.r != 1) {
            z2 = false;
        }
        if (z2) {
            return;
        }
        Animator animator = mVarB.l;
        if (animator != null) {
            animator.cancel();
        }
        FloatingActionButton floatingActionButton = mVarB.v;
        if (ViewCompat.isLaidOut(floatingActionButton) && !floatingActionButton.isInEditMode()) {
            MotionSpec motionSpec = mVarB.n;
            if (motionSpec != null) {
                animatorSetC = mVarB.b(motionSpec, 0.0f, 0.0f, 0.0f);
            } else {
                animatorSetC = mVarB.c(0.0f, 0.4f, 0.4f);
            }
            animatorSetC.addListener(new g(mVarB, z, fVar));
            ArrayList arrayList = mVarB.t;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    animatorSetC.addListener((Animator.AnimatorListener) it.next());
                }
            }
            animatorSetC.start();
            return;
        }
        floatingActionButton.internalSetVisibility(z ? 8 : 4, z);
        if (fVar != null) {
            fVar.onHidden();
        }
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        b().addOnHideAnimationListener(animatorListener);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        b().removeOnHideAnimationListener(animatorListener);
    }

    @Override // com.google.android.material.expandable.ExpandableWidget
    public boolean setExpanded(boolean z) {
        return this.o.setExpanded(z);
    }

    @Override // com.google.android.material.expandable.ExpandableWidget
    public boolean isExpanded() {
        return this.o.isExpanded();
    }

    @Override // com.google.android.material.expandable.ExpandableTransformationWidget
    public void setExpandedComponentIdHint(@IdRes int i) {
        this.o.setExpandedComponentIdHint(i);
    }

    @Override // com.google.android.material.expandable.ExpandableTransformationWidget
    public int getExpandedComponentIdHint() {
        return this.o.getExpandedComponentIdHint();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.k != z) {
            this.k = z;
            ((n) b()).l();
        }
    }

    public boolean getUseCompatPadding() {
        return this.k;
    }

    public void setSize(int i) {
        this.h = 0;
        if (i != this.f3016g) {
            this.f3016g = i;
            requestLayout();
        }
    }

    public int getSize() {
        return this.f3016g;
    }

    public boolean isOrWillBeHidden() {
        m mVarB = b();
        if (mVarB.v.getVisibility() == 0) {
            if (mVarB.r != 1) {
                return false;
            }
        } else if (mVarB.r == 2) {
            return false;
        }
        return true;
    }

    public boolean isOrWillBeShown() {
        m mVarB = b();
        if (mVarB.v.getVisibility() != 0) {
            if (mVarB.r != 2) {
                return false;
            }
        } else if (mVarB.r == 1) {
            return false;
        }
        return true;
    }

    public void setCustomSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i != this.h) {
            this.h = i;
            requestLayout();
        }
    }

    @Px
    public int getCustomSize() {
        return this.h;
    }

    public void clearCustomSize() {
        setCustomSize(0);
    }

    public class a implements ShadowViewDelegate {
        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public float getRadius() {
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            return floatingActionButton.c(floatingActionButton.f3016g) / 2.0f;
        }

        public a() {
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public void setShadowPadding(int i, int i2, int i3, int i4) {
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.l.set(i, i2, i3, i4);
            int i5 = floatingActionButton.i;
            floatingActionButton.setPadding(i + i5, i2 + i5, i3 + i5, i4 + i5);
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public boolean isCompatPaddingEnabled() {
            return FloatingActionButton.this.k;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int iC = c(this.f3016g);
        this.i = (iC - this.j) / 2;
        b().l();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(iC, size);
        } else if (mode == 0) {
            size = iC;
        } else if (mode != 1073741824) {
            throw new IllegalArgumentException();
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            iC = Math.min(iC, size2);
        } else if (mode2 != 0) {
            if (mode2 != 1073741824) {
                throw new IllegalArgumentException();
            }
            iC = size2;
        }
        int iMin = Math.min(size, iC);
        Rect rect = this.l;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    public final int c(int i) {
        int i2 = this.h;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            if (i == 1) {
                return resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
            }
            return resources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
        }
        if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
            return c(1);
        }
        return c(0);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m mVarB = b();
        MaterialShapeDrawable materialShapeDrawable = mVarB.f3043b;
        if (materialShapeDrawable != null) {
            MaterialShapeUtils.setParentAbsoluteElevation(mVarB.v, materialShapeDrawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m mVarB = b();
        ViewTreeObserver viewTreeObserver = mVarB.v.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = mVarB.B;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            mVarB.B = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        m mVarB = b();
        getDrawableState();
        n nVar = (n) mVarB;
        if (Build.VERSION.SDK_INT == 21) {
            FloatingActionButton floatingActionButton = nVar.v;
            if (floatingActionButton.isEnabled()) {
                floatingActionButton.setElevation(nVar.h);
                if (floatingActionButton.isPressed()) {
                    floatingActionButton.setTranslationZ(nVar.j);
                    return;
                } else if (floatingActionButton.isFocused() || floatingActionButton.isHovered()) {
                    floatingActionButton.setTranslationZ(nVar.i);
                    return;
                } else {
                    floatingActionButton.setTranslationZ(0.0f);
                    return;
                }
            }
            floatingActionButton.setElevation(0.0f);
            floatingActionButton.setTranslationZ(0.0f);
            return;
        }
        nVar.getClass();
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        b().getClass();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        extendableSavedState.extendableStates.put("expandableWidgetHelper", this.o.onSaveInstanceState());
        return extendableSavedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.o.onRestoreInstanceState((Bundle) Preconditions.checkNotNull(extendableSavedState.extendableStates.get("expandableWidgetHelper")));
    }

    @Deprecated
    public boolean getContentRect(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        e(rect);
        return true;
    }

    public void getMeasuredContentRect(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        e(rect);
    }

    public final void e(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.l;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    @Nullable
    public Drawable getContentBackground() {
        return b().e;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            Rect rect = this.m;
            if (getContentRect(rect) && !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean isAutoHideEnabled() {
            return super.isAutoHideEnabled();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ void setAutoHideEnabled(boolean z) {
            super.setAutoHideEnabled(z);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        @VisibleForTesting
        public /* bridge */ /* synthetic */ void setInternalAutoHideListener(OnVisibilityChangedListener onVisibilityChangedListener) {
            super.setInternalAutoHideListener(onVisibilityChangedListener);
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a, reason: collision with root package name */
        public Rect f3017a;

        /* renamed from: b, reason: collision with root package name */
        public OnVisibilityChangedListener f3018b;
        public boolean c;

        public BaseBehavior() {
            this.c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.c = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void setAutoHideEnabled(boolean z) {
            this.c = z;
        }

        public boolean isAutoHideEnabled() {
            return this.c;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
                    b(view, floatingActionButton);
                }
            }
            return false;
        }

        @VisibleForTesting
        public void setInternalAutoHideListener(OnVisibilityChangedListener onVisibilityChangedListener) {
            this.f3018b = onVisibilityChangedListener;
        }

        public final boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!(this.c && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == appBarLayout.getId() && floatingActionButton.getUserSetVisibility() == 0)) {
                return false;
            }
            if (this.f3017a == null) {
                this.f3017a = new Rect();
            }
            Rect rect = this.f3017a;
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.d(this.f3018b, false);
            } else {
                floatingActionButton.g(this.f3018b, false);
            }
            return true;
        }

        public final boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!(this.c && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.d(this.f3018b, false);
            } else {
                floatingActionButton.g(this.f3018b, false);
            }
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i) {
            int i2;
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                View view = dependencies.get(i4);
                if (!(view instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) && b(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i);
            Rect rect = floatingActionButton.l;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin) {
                i2 = rect.right;
            } else {
                i2 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) {
                i3 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin) {
                i3 = -rect.top;
            }
            if (i3 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i3);
            }
            if (i2 == 0) {
                return true;
            }
            ViewCompat.offsetLeftAndRight(floatingActionButton, i2);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.l;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeDrawable materialShapeDrawable = b().f3043b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(f);
        }
    }

    public float getCompatElevation() {
        return b().getElevation();
    }

    public void setCompatElevation(float f) {
        m mVarB = b();
        if (mVarB.h != f) {
            mVarB.h = f;
            mVarB.f(f, mVarB.i, mVarB.j);
        }
    }

    public void setCompatElevationResource(@DimenRes int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return b().i;
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        m mVarB = b();
        if (mVarB.i != f) {
            mVarB.i = f;
            mVarB.f(mVarB.h, f, mVarB.j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public float getCompatPressedTranslationZ() {
        return b().j;
    }

    public void setCompatPressedTranslationZ(float f) {
        m mVarB = b();
        if (mVarB.j != f) {
            mVarB.j = f;
            mVarB.f(mVarB.h, mVarB.i, f);
        }
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return b().m;
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        b().m = motionSpec;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return b().n;
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        b().n = motionSpec;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public void addTransformationCallback(@NonNull TransformationCallback<? extends FloatingActionButton> transformationCallback) {
        m mVarB = b();
        b bVar = new b(transformationCallback);
        if (mVarB.u == null) {
            mVarB.u = new ArrayList();
        }
        mVarB.u.add(bVar);
    }

    public void removeTransformationCallback(@NonNull TransformationCallback<? extends FloatingActionButton> transformationCallback) {
        m mVarB = b();
        b bVar = new b(transformationCallback);
        ArrayList arrayList = mVarB.u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(bVar);
    }

    public class b<T extends FloatingActionButton> implements m.d {

        /* renamed from: a, reason: collision with root package name */
        public final TransformationCallback f3020a;

        public b(TransformationCallback transformationCallback) {
            this.f3020a = transformationCallback;
        }

        @Override // com.google.android.material.floatingactionbutton.m.d
        public void onTranslationChanged() {
            this.f3020a.onTranslationChanged(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.m.d
        public void onScaleChanged() {
            this.f3020a.onScaleChanged(FloatingActionButton.this);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof b) && ((b) obj).f3020a.equals(this.f3020a);
        }

        public int hashCode() {
            return this.f3020a.hashCode();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        b().g();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        b().g();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        b().g();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        ArrayList arrayList = b().u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((m.d) it.next()).onScaleChanged();
            }
        }
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        ArrayList arrayList = b().u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((m.d) it.next()).onScaleChanged();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z) {
        m mVarB = b();
        mVarB.f3044g = z;
        mVarB.l();
    }

    public final m b() {
        if (this.p == null) {
            this.p = new n(this, new a());
        }
        return this.p;
    }
}
