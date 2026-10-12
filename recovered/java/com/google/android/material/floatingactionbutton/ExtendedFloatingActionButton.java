package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;

/* loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    public static final int F = R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    public static final Property G = new c(Float.class, "width");
    public static final Property H = new d(Float.class, "height");
    public static final Property I = new e(Float.class, "paddingStart");
    public static final Property J = new f(Float.class, "paddingEnd");
    public int A;
    public final ExtendedFloatingActionButtonBehavior B;
    public boolean C;
    public boolean D;
    public boolean E;

    @NonNull
    protected ColorStateList originalTextCsl;
    public int t;
    public final g u;
    public final g v;
    public final i w;
    public final h x;
    public final int y;
    public int z;

    public static abstract class OnChangedCallback {
        public void onExtended(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onHidden(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onShown(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void onShrunken(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    public interface j {
        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    public class a implements j {
        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.A;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.z;
        }

        public a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getWidth() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return (extendedFloatingActionButton.getMeasuredWidth() - (((extendedFloatingActionButton.g() - extendedFloatingActionButton.getIconSize()) / 2) * 2)) + extendedFloatingActionButton.z + extendedFloatingActionButton.A;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(-2, -2);
        }
    }

    public class g extends com.google.android.material.floatingactionbutton.c {

        /* renamed from: g, reason: collision with root package name */
        public final j f3012g;
        public final boolean h;

        @Override // com.google.android.material.floatingactionbutton.o
        public void performNow() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.C = this.h;
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            j jVar = this.f3012g;
            layoutParams.width = jVar.getLayoutParams().width;
            layoutParams.height = jVar.getLayoutParams().height;
            ViewCompat.setPaddingRelative(extendedFloatingActionButton, jVar.getPaddingStart(), extendedFloatingActionButton.getPaddingTop(), jVar.getPaddingEnd(), extendedFloatingActionButton.getPaddingBottom());
            extendedFloatingActionButton.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public boolean shouldCancel() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return this.h == extendedFloatingActionButton.C || extendedFloatingActionButton.getIcon() == null || TextUtils.isEmpty(extendedFloatingActionButton.getText());
        }

        public g(com.google.android.material.floatingactionbutton.a aVar, j jVar, boolean z) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f3012g = jVar;
            this.h = z;
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public void onChange(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback == null) {
                return;
            }
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (this.h) {
                onChangedCallback.onExtended(extendedFloatingActionButton);
            } else {
                onChangedCallback.onShrunken(extendedFloatingActionButton);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public int getDefaultMotionSpecResource() {
            if (this.h) {
                return R.animator.mtrl_extended_fab_change_size_expand_motion_spec;
            }
            return R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        @NonNull
        public AnimatorSet createAnimator() {
            MotionSpec currentMotionSpec = getCurrentMotionSpec();
            boolean zHasPropertyValues = currentMotionSpec.hasPropertyValues("width");
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            j jVar = this.f3012g;
            if (zHasPropertyValues) {
                PropertyValuesHolder[] propertyValues = currentMotionSpec.getPropertyValues("width");
                propertyValues[0].setFloatValues(extendedFloatingActionButton.getWidth(), jVar.getWidth());
                currentMotionSpec.setPropertyValues("width", propertyValues);
            }
            if (currentMotionSpec.hasPropertyValues("height")) {
                PropertyValuesHolder[] propertyValues2 = currentMotionSpec.getPropertyValues("height");
                propertyValues2[0].setFloatValues(extendedFloatingActionButton.getHeight(), jVar.getHeight());
                currentMotionSpec.setPropertyValues("height", propertyValues2);
            }
            if (currentMotionSpec.hasPropertyValues("paddingStart")) {
                PropertyValuesHolder[] propertyValues3 = currentMotionSpec.getPropertyValues("paddingStart");
                propertyValues3[0].setFloatValues(ViewCompat.getPaddingStart(extendedFloatingActionButton), jVar.getPaddingStart());
                currentMotionSpec.setPropertyValues("paddingStart", propertyValues3);
            }
            if (currentMotionSpec.hasPropertyValues("paddingEnd")) {
                PropertyValuesHolder[] propertyValues4 = currentMotionSpec.getPropertyValues("paddingEnd");
                propertyValues4[0].setFloatValues(ViewCompat.getPaddingEnd(extendedFloatingActionButton), jVar.getPaddingEnd());
                currentMotionSpec.setPropertyValues("paddingEnd", propertyValues4);
            }
            if (currentMotionSpec.hasPropertyValues("labelOpacity")) {
                PropertyValuesHolder[] propertyValues5 = currentMotionSpec.getPropertyValues("labelOpacity");
                boolean z = this.h;
                propertyValues5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                currentMotionSpec.setPropertyValues("labelOpacity", propertyValues5);
            }
            return a(currentMotionSpec);
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.C = this.h;
            extendedFloatingActionButton.D = true;
            extendedFloatingActionButton.setHorizontallyScrolling(true);
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.D = false;
            extendedFloatingActionButton.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            j jVar = this.f3012g;
            layoutParams.width = jVar.getLayoutParams().width;
            layoutParams.height = jVar.getLayoutParams().height;
        }
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        int i3 = F;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i2, i3), attributeSet, i2);
        this.t = 0;
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        i iVar = new i(aVar);
        this.w = iVar;
        h hVar = new h(aVar);
        this.x = hVar;
        this.C = true;
        this.D = false;
        this.E = false;
        Context context2 = getContext();
        this.B = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.ExtendedFloatingActionButton, i2, i3, new int[0]);
        MotionSpec motionSpecCreateFromAttribute = MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, R.styleable.ExtendedFloatingActionButton_showMotionSpec);
        MotionSpec motionSpecCreateFromAttribute2 = MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, R.styleable.ExtendedFloatingActionButton_hideMotionSpec);
        MotionSpec motionSpecCreateFromAttribute3 = MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, R.styleable.ExtendedFloatingActionButton_extendMotionSpec);
        MotionSpec motionSpecCreateFromAttribute4 = MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        this.z = ViewCompat.getPaddingStart(this);
        this.A = ViewCompat.getPaddingEnd(this);
        com.google.android.material.floatingactionbutton.a aVar2 = new com.google.android.material.floatingactionbutton.a();
        g gVar = new g(aVar2, new a(), true);
        this.v = gVar;
        g gVar2 = new g(aVar2, new b(), false);
        this.u = gVar2;
        iVar.setMotionSpec(motionSpecCreateFromAttribute);
        hVar.setMotionSpec(motionSpecCreateFromAttribute2);
        gVar.setMotionSpec(motionSpecCreateFromAttribute3);
        gVar2.setMotionSpec(motionSpecCreateFromAttribute4);
        typedArrayObtainStyledAttributes.recycle();
        setShapeAppearanceModel(ShapeAppearanceModel.builder(context2, attributeSet, i2, i3, ShapeAppearanceModel.PILL).build());
        this.originalTextCsl = getTextColors();
    }

    public class b implements j {
        public b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getWidth() {
            return ExtendedFloatingActionButton.this.g();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getHeight() {
            return ExtendedFloatingActionButton.this.g();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getPaddingStart() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return (extendedFloatingActionButton.g() - extendedFloatingActionButton.getIconSize()) / 2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public int getPaddingEnd() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return (extendedFloatingActionButton.g() - extendedFloatingActionButton.getIconSize()) / 2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.j
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i2) {
        super.setTextColor(i2);
        this.originalTextCsl = getTextColors();
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.originalTextCsl = getTextColors();
    }

    public void silentlyUpdateTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.C && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.C = false;
            this.u.performNow();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.B;
    }

    public void setExtended(boolean z) {
        if (this.C == z) {
            return;
        }
        g gVar = z ? this.v : this.u;
        if (gVar.shouldCancel()) {
            return;
        }
        gVar.performNow();
    }

    public final boolean isExtended() {
        return this.C;
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.E = z;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        super.setPaddingRelative(i2, i3, i4, i5);
        if (!this.C || this.D) {
            return;
        }
        this.z = i2;
        this.A = i4;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        super.setPadding(i2, i3, i4, i5);
        if (!this.C || this.D) {
            return;
        }
        this.z = ViewCompat.getPaddingStart(this);
        this.A = ViewCompat.getPaddingEnd(this);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.w.addAnimationListener(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.w.removeAnimationListener(animatorListener);
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.x.addAnimationListener(animatorListener);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.x.removeAnimationListener(animatorListener);
    }

    public void addOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.u.addAnimationListener(animatorListener);
    }

    public void removeOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.u.removeAnimationListener(animatorListener);
    }

    public void addOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.v.addAnimationListener(animatorListener);
    }

    public void removeOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.v.removeAnimationListener(animatorListener);
    }

    public void hide() {
        h(this.x, null);
    }

    public void hide(@NonNull OnChangedCallback onChangedCallback) {
        h(this.x, onChangedCallback);
    }

    public void show() {
        h(this.w, null);
    }

    public void show(@NonNull OnChangedCallback onChangedCallback) {
        h(this.w, onChangedCallback);
    }

    public void extend() {
        h(this.v, null);
    }

    public void extend(@NonNull OnChangedCallback onChangedCallback) {
        h(this.v, onChangedCallback);
    }

    public void shrink() {
        h(this.u, null);
    }

    public void shrink(@NonNull OnChangedCallback onChangedCallback) {
        h(this.u, onChangedCallback);
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return this.w.getMotionSpec();
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        this.w.setMotionSpec(motionSpec);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        setShowMotionSpec(MotionSpec.createFromResource(getContext(), i2));
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return this.x.getMotionSpec();
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        this.x.setMotionSpec(motionSpec);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        setHideMotionSpec(MotionSpec.createFromResource(getContext(), i2));
    }

    @Nullable
    public MotionSpec getExtendMotionSpec() {
        return this.v.getMotionSpec();
    }

    public void setExtendMotionSpec(@Nullable MotionSpec motionSpec) {
        this.v.setMotionSpec(motionSpec);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i2) {
        setExtendMotionSpec(MotionSpec.createFromResource(getContext(), i2));
    }

    @Nullable
    public MotionSpec getShrinkMotionSpec() {
        return this.u.getMotionSpec();
    }

    public void setShrinkMotionSpec(@Nullable MotionSpec motionSpec) {
        this.u.setMotionSpec(motionSpec);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i2) {
        setShrinkMotionSpec(MotionSpec.createFromResource(getContext(), i2));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(com.google.android.material.floatingactionbutton.c r3, com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.OnChangedCallback r4) {
        /*
            r2 = this;
            boolean r0 = r3.shouldCancel()
            if (r0 == 0) goto L7
            return
        L7:
            boolean r0 = androidx.core.view.ViewCompat.isLaidOut(r2)
            if (r0 != 0) goto L23
            int r0 = r2.getVisibility()
            if (r0 == 0) goto L19
            int r0 = r2.t
            r1 = 2
            if (r0 != r1) goto L1f
            goto L55
        L19:
            int r0 = r2.t
            r1 = 1
            if (r0 == r1) goto L1f
            goto L55
        L1f:
            boolean r0 = r2.E
            if (r0 == 0) goto L55
        L23:
            boolean r0 = r2.isInEditMode()
            if (r0 != 0) goto L55
            r0 = 0
            r2.measure(r0, r0)
            android.animation.AnimatorSet r0 = r3.createAnimator()
            com.google.android.material.floatingactionbutton.e r1 = new com.google.android.material.floatingactionbutton.e
            r1.<init>(r3, r4)
            r0.addListener(r1)
            java.util.List r3 = r3.getListeners()
            java.util.Iterator r3 = r3.iterator()
        L41:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L51
            java.lang.Object r4 = r3.next()
            android.animation.Animator$AnimatorListener r4 = (android.animation.Animator.AnimatorListener) r4
            r0.addListener(r4)
            goto L41
        L51:
            r0.start()
            return
        L55:
            r3.performNow()
            r3.onChange(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.h(com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$OnChangedCallback):void");
    }

    public class c extends Property<View, Float> {
        @Override // android.util.Property
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }

        @Override // android.util.Property
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }
    }

    public class d extends Property<View, Float> {
        @Override // android.util.Property
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }

        @Override // android.util.Property
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }
    }

    public class e extends Property<View, Float> {
        @Override // android.util.Property
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.setPaddingRelative(view, f.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }

        @Override // android.util.Property
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }
    }

    public class f extends Property<View, Float> {
        @Override // android.util.Property
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }

        @Override // android.util.Property
        @NonNull
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }
    }

    public final int g() {
        int i2 = this.y;
        if (i2 >= 0) {
            return i2;
        }
        return getIconSize() + (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2);
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a, reason: collision with root package name */
        public Rect f3008a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f3009b;
        public boolean c;

        public ExtendedFloatingActionButtonBehavior() {
            this.f3009b = false;
            this.c = true;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f3009b = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.c = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void setAutoHideEnabled(boolean z) {
            this.f3009b = z;
        }

        public boolean isAutoHideEnabled() {
            return this.f3009b;
        }

        public void setAutoShrinkEnabled(boolean z) {
            this.c = z;
        }

        public boolean isAutoShrinkEnabled() {
            return this.c;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, (CoordinatorLayout) extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
                    b(view, extendedFloatingActionButton);
                }
            }
            return false;
        }

        public final boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            if ((!this.f3009b && !this.c) || layoutParams.getAnchorId() != appBarLayout.getId()) {
                return false;
            }
            if (this.f3008a == null) {
                this.f3008a = new Rect();
            }
            Rect rect = this.f3008a;
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                shrinkOrHide(extendedFloatingActionButton);
                return true;
            }
            extendOrShow(extendedFloatingActionButton);
            return true;
        }

        public final boolean b(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            if ((!this.f3009b && !this.c) || layoutParams.getAnchorId() != view.getId()) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                shrinkOrHide(extendedFloatingActionButton);
                return true;
            }
            extendOrShow(extendedFloatingActionButton);
            return true;
        }

        public void shrinkOrHide(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            com.google.android.material.floatingactionbutton.c cVar = this.c ? extendedFloatingActionButton.u : extendedFloatingActionButton.x;
            int i = ExtendedFloatingActionButton.F;
            extendedFloatingActionButton.h(cVar, null);
        }

        public void extendOrShow(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            com.google.android.material.floatingactionbutton.c cVar = this.c ? extendedFloatingActionButton.v : extendedFloatingActionButton.w;
            int i = ExtendedFloatingActionButton.F;
            extendedFloatingActionButton.h(cVar, null);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) && b(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i);
            return true;
        }
    }

    public class i extends com.google.android.material.floatingactionbutton.c {
        public i(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public void performNow() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.setAlpha(1.0f);
            extendedFloatingActionButton.setScaleY(1.0f);
            extendedFloatingActionButton.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public void onChange(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.onShown(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.t = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.t = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public boolean shouldCancel() {
            int i = ExtendedFloatingActionButton.F;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (extendedFloatingActionButton.getVisibility() != 0) {
                if (extendedFloatingActionButton.t != 2) {
                    return false;
                }
            } else if (extendedFloatingActionButton.t == 1) {
                return false;
            }
            return true;
        }
    }

    public class h extends com.google.android.material.floatingactionbutton.c {

        /* renamed from: g, reason: collision with root package name */
        public boolean f3013g;

        public h(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public void performNow() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public void onChange(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.onHidden(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public boolean shouldCancel() {
            int i = ExtendedFloatingActionButton.F;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (extendedFloatingActionButton.getVisibility() == 0) {
                if (extendedFloatingActionButton.t != 1) {
                    return false;
                }
            } else if (extendedFloatingActionButton.t == 2) {
                return false;
            }
            return true;
        }

        @Override // com.google.android.material.floatingactionbutton.o
        public int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f3013g = false;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.t = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationCancel() {
            super.onAnimationCancel();
            this.f3013g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.c, com.google.android.material.floatingactionbutton.o
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.t = 0;
            if (this.f3013g) {
                return;
            }
            extendedFloatingActionButton.setVisibility(8);
        }
    }
}
