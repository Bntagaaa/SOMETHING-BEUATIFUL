package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    public static final int FAB_ANIMATION_MODE_SCALE = 0;
    public static final int FAB_ANIMATION_MODE_SLIDE = 1;
    public static final int r0 = R.style.Widget_MaterialComponents_BottomAppBar;
    public Integer U;
    public final int V;
    public final MaterialShapeDrawable W;
    public AnimatorSet a0;
    public AnimatorSet b0;
    public int c0;
    public int d0;
    public boolean e0;
    public final boolean f0;
    public final boolean g0;
    public final boolean h0;
    public int i0;
    public boolean j0;
    public boolean k0;
    public Behavior l0;
    public int m0;
    public int n0;
    public int o0;
    public final AnimatorListenerAdapter p0;
    public final TransformationCallback q0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAnimationMode {
    }

    public interface e {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public class a extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.j0) {
                return;
            }
            bottomAppBar.t(bottomAppBar.c0, bottomAppBar.k0);
        }

        public a() {
        }
    }

    public class b implements TransformationCallback<FloatingActionButton> {
        @Override // com.google.android.material.animation.TransformationCallback
        public void onScaleChanged(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.W.setInterpolation(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        public b() {
        }

        @Override // com.google.android.material.animation.TransformationCallback
        public void onTranslationChanged(@NonNull FloatingActionButton floatingActionButton) {
            float translationX = floatingActionButton.getTranslationX();
            int i = BottomAppBar.r0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.s().getHorizontalOffset() != translationX) {
                bottomAppBar.s().e = translationX;
                bottomAppBar.W.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (bottomAppBar.s().d != fMax) {
                bottomAppBar.s().b(fMax);
                bottomAppBar.W.invalidateSelf();
            }
            bottomAppBar.W.setInterpolation(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    public class c implements ViewUtils.OnApplyWindowInsetsListener {
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
            boolean z;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.f0) {
                bottomAppBar.m0 = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z2 = false;
            if (bottomAppBar.g0) {
                z = bottomAppBar.o0 != windowInsetsCompat.getSystemWindowInsetLeft();
                bottomAppBar.o0 = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z = false;
            }
            if (bottomAppBar.h0) {
                boolean z3 = bottomAppBar.n0 != windowInsetsCompat.getSystemWindowInsetRight();
                bottomAppBar.n0 = windowInsetsCompat.getSystemWindowInsetRight();
                z2 = z3;
            }
            if (!z && !z2) {
                return windowInsetsCompat;
            }
            AnimatorSet animatorSet = bottomAppBar.b0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = bottomAppBar.a0;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            bottomAppBar.v();
            bottomAppBar.u();
            return windowInsetsCompat;
        }

        public c() {
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = r0;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.W = materialShapeDrawable;
        this.i0 = 0;
        this.j0 = false;
        this.k0 = true;
        this.p0 = new a();
        this.q0 = new b();
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.BottomAppBar, i, i2, new int[0]);
        ColorStateList colorStateList = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.BottomAppBar_backgroundTint);
        int i3 = R.styleable.BottomAppBar_navigationIconTint;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            setNavigationIconTint(typedArrayObtainStyledAttributes.getColor(i3, -1));
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.c0 = typedArrayObtainStyledAttributes.getInt(R.styleable.BottomAppBar_fabAlignmentMode, 0);
        this.d0 = typedArrayObtainStyledAttributes.getInt(R.styleable.BottomAppBar_fabAnimationMode, 0);
        this.e0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomAppBar_hideOnScroll, false);
        this.f0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.g0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.h0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        this.V = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        materialShapeDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder().setTopEdge(new BottomAppBarTopEdgeTreatment(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).build());
        materialShapeDrawable.setShadowCompatibilityMode(2);
        materialShapeDrawable.setPaintStyle(Paint.Style.FILL);
        materialShapeDrawable.initializeElevationOverlay(context2);
        setElevation(dimensionPixelSize);
        DrawableCompat.setTintList(materialShapeDrawable, colorStateList);
        ViewCompat.setBackground(this, materialShapeDrawable);
        ViewUtils.doOnApplyWindowInsets(this, attributeSet, i, i2, new c());
    }

    public void setNavigationIconTint(@ColorInt int i) {
        this.U = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public int getFabAlignmentMode() {
        return this.c0;
    }

    public void setFabAlignmentMode(int i) {
        setFabAlignmentModeAndReplaceMenu(i, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i, @MenuRes int i2) {
        this.i0 = i2;
        this.j0 = true;
        t(i, this.k0);
        if (this.c0 != i && ViewCompat.isLaidOut(this)) {
            AnimatorSet animatorSet = this.a0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (this.d0 != 1) {
                createFabDefaultXAnimation(i, arrayList);
            } else {
                View viewQ = q();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewQ instanceof FloatingActionButton ? (FloatingActionButton) viewQ : null, "translationX", r(i));
                objectAnimatorOfFloat.setDuration(300L);
                arrayList.add(objectAnimatorOfFloat);
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            this.a0 = animatorSet2;
            animatorSet2.addListener(new com.google.android.material.bottomappbar.a(this));
            this.a0.start();
        }
        this.c0 = i;
    }

    public int getFabAnimationMode() {
        return this.d0;
    }

    public void setFabAnimationMode(int i) {
        this.d0 = i;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.W, colorStateList);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.W.getTintList();
    }

    public float getFabCradleMargin() {
        return s().f2811b;
    }

    public void setFabCradleMargin(@Dimension float f2) {
        if (f2 != getFabCradleMargin()) {
            s().f2811b = f2;
            this.W.invalidateSelf();
        }
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return s().f2810a;
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            s().f2810a = f2;
            this.W.invalidateSelf();
        }
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return s().d;
    }

    public void setCradleVerticalOffset(@Dimension float f2) {
        if (f2 != getCradleVerticalOffset()) {
            s().b(f2);
            this.W.invalidateSelf();
            v();
        }
    }

    public boolean getHideOnScroll() {
        return this.e0;
    }

    public void setHideOnScroll(boolean z) {
        this.e0 = z;
    }

    public void performHide() {
        performHide(true);
    }

    public void performHide(boolean z) {
        getBehavior().slideDown(this, z);
    }

    public void performShow() {
        performShow(true);
    }

    public void performShow(boolean z) {
        getBehavior().slideUp(this, z);
    }

    public boolean isScrolledDown() {
        return getBehavior().isScrolledDown();
    }

    public boolean isScrolledUp() {
        return getBehavior().isScrolledUp();
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        MaterialShapeDrawable materialShapeDrawable = this.W;
        materialShapeDrawable.setElevation(f2);
        getBehavior().setAdditionalHiddenOffsetY(this, materialShapeDrawable.getShadowRadius() - materialShapeDrawable.getShadowOffsetY());
    }

    public void replaceMenu(@MenuRes int i) {
        if (i != 0) {
            this.i0 = 0;
            getMenu().clear();
            inflateMenu(i);
        }
    }

    public void createFabDefaultXAnimation(int i, List<Animator> list) {
        View viewQ = q();
        FloatingActionButton floatingActionButton = viewQ instanceof FloatingActionButton ? (FloatingActionButton) viewQ : null;
        if (floatingActionButton == null || floatingActionButton.isOrWillBeHidden()) {
            return;
        }
        floatingActionButton.hide(new d(i));
    }

    public final View q() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public class d extends FloatingActionButton.OnVisibilityChangedListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2807a;

        public d(int i) {
            this.f2807a = i;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
        public void onHidden(@NonNull FloatingActionButton floatingActionButton) {
            int i = BottomAppBar.r0;
            floatingActionButton.setTranslationX(BottomAppBar.this.r(this.f2807a));
            floatingActionButton.show(new a());
        }

        public class a extends FloatingActionButton.OnVisibilityChangedListener {
            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
            public void onShown(FloatingActionButton floatingActionButton) {
                int i = BottomAppBar.r0;
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null && this.U != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            DrawableCompat.setTint(drawable, this.U.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public final void t(int i, boolean z) {
        if (!ViewCompat.isLaidOut(this)) {
            this.j0 = false;
            replaceMenu(this.i0);
            return;
        }
        AnimatorSet animatorSet = this.b0;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ArrayList arrayList = new ArrayList();
        View viewQ = q();
        ActionMenuView actionMenuView = null;
        FloatingActionButton floatingActionButton = viewQ instanceof FloatingActionButton ? (FloatingActionButton) viewQ : null;
        if (floatingActionButton == null || !floatingActionButton.isOrWillBeShown()) {
            i = 0;
            z = false;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                actionMenuView = (ActionMenuView) childAt;
                break;
            }
            i2++;
        }
        if (actionMenuView != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            if (Math.abs(actionMenuView.getTranslationX() - getActionMenuViewTranslationX(actionMenuView, i, z)) > 1.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                objectAnimatorOfFloat2.addListener(new com.google.android.material.bottomappbar.c(this, actionMenuView, i, z));
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.setDuration(150L);
                animatorSet2.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
                arrayList.add(animatorSet2);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                arrayList.add(objectAnimatorOfFloat);
            }
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(arrayList);
        this.b0 = animatorSet3;
        animatorSet3.addListener(new com.google.android.material.bottomappbar.b(this));
        this.b0.start();
    }

    public final float r(int i) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - (this.V + (zIsLayoutRtl ? this.o0 : this.n0))) * (zIsLayoutRtl ? -1 : 1);
        }
        return 0.0f;
    }

    public final void u() {
        ActionMenuView actionMenuView;
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                actionMenuView = null;
                break;
            }
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                actionMenuView = (ActionMenuView) childAt;
                break;
            }
            i++;
        }
        if (actionMenuView == null || this.b0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        View viewQ = q();
        FloatingActionButton floatingActionButton = viewQ instanceof FloatingActionButton ? (FloatingActionButton) viewQ : null;
        if (!(floatingActionButton != null && floatingActionButton.isOrWillBeShown())) {
            w(actionMenuView, 0, false, false);
        } else {
            w(actionMenuView, this.c0, this.k0, false);
        }
    }

    public final void w(ActionMenuView actionMenuView, int i, boolean z, boolean z2) {
        com.google.android.material.bottomappbar.d dVar = new com.google.android.material.bottomappbar.d(this, actionMenuView, i, z);
        if (z2) {
            actionMenuView.post(dVar);
        } else {
            dVar.run();
        }
    }

    public int getActionMenuViewTranslationX(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int measuredWidth = zIsLayoutRtl ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                if (zIsLayoutRtl) {
                    measuredWidth = Math.min(measuredWidth, childAt.getLeft());
                } else {
                    measuredWidth = Math.max(measuredWidth, childAt.getRight());
                }
            }
        }
        return measuredWidth - ((zIsLayoutRtl ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zIsLayoutRtl ? this.n0 : -this.o0));
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            AnimatorSet animatorSet = this.b0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.a0;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            v();
        }
        u();
    }

    public final BottomAppBarTopEdgeTreatment s() {
        return (BottomAppBarTopEdgeTreatment) this.W.getShapeAppearanceModel().getTopEdge();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v() {
        /*
            r4 = this;
            com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment r0 = r4.s()
            int r1 = r4.c0
            float r1 = r4.r(r1)
            r0.e = r1
            android.view.View r0 = r4.q()
            com.google.android.material.shape.MaterialShapeDrawable r1 = r4.W
            boolean r2 = r4.k0
            if (r2 == 0) goto L2d
            android.view.View r2 = r4.q()
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r3 == 0) goto L21
            com.google.android.material.floatingactionbutton.FloatingActionButton r2 = (com.google.android.material.floatingactionbutton.FloatingActionButton) r2
            goto L22
        L21:
            r2 = 0
        L22:
            if (r2 == 0) goto L2d
            boolean r2 = r2.isOrWillBeShown()
            if (r2 == 0) goto L2d
            r2 = 1065353216(0x3f800000, float:1.0)
            goto L2e
        L2d:
            r2 = 0
        L2e:
            r1.setInterpolation(r2)
            if (r0 == 0) goto L46
            com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment r1 = r4.s()
            float r1 = r1.d
            float r1 = -r1
            r0.setTranslationY(r1)
            int r1 = r4.c0
            float r1 = r4.r(r1)
            r0.setTranslationX(r1)
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.v():void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.l0 == null) {
            this.l0 = new Behavior();
        }
        return this.l0;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.W);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        public final Rect e;
        public WeakReference f;

        /* renamed from: g, reason: collision with root package name */
        public int f2802g;
        public final View.OnLayoutChangeListener h;

        public class a implements View.OnLayoutChangeListener {
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Behavior behavior = Behavior.this;
                BottomAppBar bottomAppBar = (BottomAppBar) behavior.f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.getMeasuredContentRect(behavior.e);
                int iHeight = behavior.e.height();
                float f = iHeight;
                float fabDiameter = bottomAppBar.s().getFabDiameter();
                MaterialShapeDrawable materialShapeDrawable = bottomAppBar.W;
                if (f != fabDiameter) {
                    bottomAppBar.s().setFabDiameter(f);
                    materialShapeDrawable.invalidateSelf();
                }
                float cornerSize = floatingActionButton.getShapeAppearanceModel().getTopLeftCornerSize().getCornerSize(new RectF(behavior.e));
                if (cornerSize != bottomAppBar.s().getFabCornerRadius()) {
                    bottomAppBar.s().setFabCornerSize(cornerSize);
                    materialShapeDrawable.invalidateSelf();
                }
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (behavior.f2802g == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.m0 + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.o0;
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.n0;
                    boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(floatingActionButton);
                    int i9 = bottomAppBar.V;
                    if (zIsLayoutRtl) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += i9;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += i9;
                    }
                }
            }

            public a() {
            }
        }

        public Behavior() {
            this.h = new a();
            this.e = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = new a();
            this.e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i) {
            this.f = new WeakReference(bottomAppBar);
            int i2 = BottomAppBar.r0;
            View viewQ = bottomAppBar.q();
            if (viewQ != null && !ViewCompat.isLaidOut(viewQ)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) viewQ.getLayoutParams();
                layoutParams.anchorGravity = 49;
                this.f2802g = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (viewQ instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewQ;
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                    }
                    floatingActionButton.addOnLayoutChangeListener(this.h);
                    floatingActionButton.addOnHideAnimationListener(bottomAppBar.p0);
                    floatingActionButton.addOnShowAnimationListener(new com.google.android.material.bottomappbar.e(bottomAppBar));
                    floatingActionButton.addTransformationCallback(bottomAppBar.q0);
                }
                bottomAppBar.v();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view, view2, i, i2);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        fVar.f2809b = this.c0;
        fVar.c = this.k0;
        return fVar;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        this.c0 = fVar.f2809b;
        this.k0 = fVar.c;
    }

    public static class f extends AbsSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public int f2809b;
        public boolean c;

        public f(Parcelable parcelable) {
            super(parcelable);
        }

        public f(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2809b = parcel.readInt();
            this.c = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2809b);
            parcel.writeInt(this.c ? 1 : 0);
        }

        public class a implements Parcelable.ClassLoaderCreator<f> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public f createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new f(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            public f createFromParcel(@NonNull Parcel parcel) {
                return new f(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            public f[] newArray(int i) {
                return new f[i];
            }
        }
    }
}
