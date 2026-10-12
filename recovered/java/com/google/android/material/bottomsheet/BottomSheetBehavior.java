package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int SAVE_ALL = -1;
    public static final int SAVE_FIT_TO_CONTENTS = 2;
    public static final int SAVE_HIDEABLE = 4;
    public static final int SAVE_NONE = 0;
    public static final int SAVE_PEEK_HEIGHT = 1;
    public static final int SAVE_SKIP_COLLAPSED = 8;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    public static final int d0 = R.style.Widget_Design_BottomSheet_Modal;
    public ValueAnimator A;
    public int B;
    public int C;
    public int D;
    public float E;
    public int F;
    public final float G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public int L;
    public ViewDragHelper M;
    public boolean N;
    public int O;
    public boolean P;
    public int Q;
    public int R;
    public int S;
    public WeakReference T;
    public WeakReference U;
    public final ArrayList V;
    public VelocityTracker W;
    public int X;
    public int Y;
    public boolean Z;

    /* renamed from: a, reason: collision with root package name */
    public int f2819a;
    public HashMap a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2820b;
    public int b0;
    public boolean c;
    public final ViewDragHelper.Callback c0;
    public final float d;
    public int e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f2821g;
    public final int h;
    public final MaterialShapeDrawable i;
    public final ColorStateList j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public int v;
    public int w;
    public final ShapeAppearanceModel x;
    public boolean y;
    public final c z;

    public static abstract class BottomSheetCallback {
        public void a(View view) {
        }

        public abstract void onSlide(@NonNull View view, float f);

        public abstract void onStateChanged(@NonNull View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface SaveFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface State {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isNestedScrollingCheckEnabled() {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldExpandOnUpwardDrag(long j, @FloatRange(from = 0.0d, to = 100.0d) float f) {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldSkipHalfExpandedStateWhenDragging() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    public class b extends ViewDragHelper.Callback {

        /* renamed from: a, reason: collision with root package name */
        public long f2825a;

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.J) {
                    bottomSheetBehavior.g(1);
                }
            }
        }

        public b() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.K;
            if (i2 == 1 || bottomSheetBehavior.Z) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.X == i) {
                WeakReference weakReference = bottomSheetBehavior.U;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f2825a = System.currentTimeMillis();
            WeakReference weakReference2 = bottomSheetBehavior.T;
            return weakReference2 != null && weakReference2.get() == view;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.c(i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onViewReleased(@androidx.annotation.NonNull android.view.View r9, float r10, float r11) {
            /*
                Method dump skipped, instructions count: 265
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.b.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i, bottomSheetBehavior.getExpandedOffset(), bottomSheetBehavior.H ? bottomSheetBehavior.S : bottomSheetBehavior.F);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (bottomSheetBehavior.H) {
                return bottomSheetBehavior.S;
            }
            return bottomSheetBehavior.F;
        }
    }

    public BottomSheetBehavior() {
        this.f2819a = 0;
        this.f2820b = true;
        this.c = false;
        this.k = -1;
        this.l = -1;
        this.z = new c();
        this.E = 0.5f;
        this.G = -1.0f;
        this.J = true;
        this.K = 4;
        this.L = 4;
        this.V = new ArrayList();
        this.b0 = -1;
        this.c0 = new b();
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.f2819a = 0;
        this.f2820b = true;
        this.c = false;
        this.k = -1;
        this.l = -1;
        this.z = new c();
        this.E = 0.5f;
        this.G = -1.0f;
        this.J = true;
        this.K = 4;
        this.L = 4;
        this.V = new ArrayList();
        this.b0 = -1;
        this.c0 = new b();
        this.h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        int i2 = R.styleable.BottomSheetBehavior_Layout_backgroundTint;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.j = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, i2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.x = ShapeAppearanceModel.builder(context, attributeSet, R.attr.bottomSheetStyle, d0).build();
        }
        ShapeAppearanceModel shapeAppearanceModel = this.x;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.i = materialShapeDrawable;
            materialShapeDrawable.initializeElevationOverlay(context);
            ColorStateList colorStateList = this.j;
            if (colorStateList != null) {
                this.i.setFillColor(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.i.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.A = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.A.addUpdateListener(new com.google.android.material.bottomsheet.a(this));
        this.G = typedArrayObtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        int i3 = R.styleable.BottomSheetBehavior_Layout_android_maxWidth;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, -1));
        }
        int i4 = R.styleable.BottomSheetBehavior_Layout_android_maxHeight;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, -1));
        }
        int i5 = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i5);
        if (typedValuePeekValue != null && (i = typedValuePeekValue.data) == -1) {
            setPeekHeight(i);
        } else {
            setPeekHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(i5, -1));
        }
        setHideable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setGestureInsetBottomIgnored(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        setFitToContents(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        setDraggable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        setSaveFlags(typedArrayObtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        setHalfExpandedRatio(typedArrayObtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        int i6 = R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i6);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            setExpandedOffset(typedValuePeekValue2.data);
        } else {
            setExpandedOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i6, 0));
        }
        this.o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.p = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.q = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.r = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.s = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.t = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.u = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        this.d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        int i = this.f2819a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.e = savedState.c;
            }
            if (i == -1 || (i & 2) == 2) {
                this.f2820b = savedState.d;
            }
            if (i == -1 || (i & 4) == 4) {
                this.H = savedState.e;
            }
            if (i == -1 || (i & 8) == 8) {
                this.I = savedState.f;
            }
        }
        int i2 = savedState.f2822b;
        if (i2 == 1 || i2 == 2) {
            this.K = 4;
            this.L = 4;
        } else {
            this.K = i2;
            this.L = i2;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.T = null;
        this.M = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.T = null;
        this.M = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        v.measure(e(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.k, marginLayoutParams.width), e(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, this.l, marginLayoutParams.height));
        return true;
    }

    public static int e(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        int i2 = 0;
        if (this.T == null) {
            this.f2821g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z = (Build.VERSION.SDK_INT < 29 || isGestureInsetBottomIgnored() || this.f) ? false : true;
            if (this.o || this.p || this.q || this.s || this.t || this.u || z) {
                ViewUtils.doOnApplyWindowInsets(v, new com.google.android.material.bottomsheet.b(this, z));
            }
            this.T = new WeakReference(v);
            MaterialShapeDrawable materialShapeDrawable = this.i;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.i;
                float elevation = this.G;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(v);
                }
                materialShapeDrawable2.setElevation(elevation);
                boolean z2 = this.K == 3;
                this.y = z2;
                this.i.setInterpolation(z2 ? 0.0f : 1.0f);
            } else {
                ColorStateList colorStateList = this.j;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v, colorStateList);
                }
            }
            j();
            if (ViewCompat.getImportantForAccessibility(v) == 0) {
                ViewCompat.setImportantForAccessibility(v, 1);
            }
        }
        if (this.M == null) {
            this.M = ViewDragHelper.create(coordinatorLayout, this.c0);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.R = coordinatorLayout.getWidth();
        this.S = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.Q = height;
        int i3 = this.S;
        int i4 = i3 - height;
        int i5 = this.w;
        if (i4 < i5) {
            if (this.r) {
                this.Q = i3;
            } else {
                this.Q = i3 - i5;
            }
        }
        this.C = Math.max(0, i3 - this.Q);
        this.D = (int) ((1.0f - this.E) * this.S);
        a();
        int i6 = this.K;
        if (i6 == 3) {
            ViewCompat.offsetTopAndBottom(v, getExpandedOffset());
        } else if (i6 == 6) {
            ViewCompat.offsetTopAndBottom(v, this.D);
        } else if (this.H && i6 == 5) {
            ViewCompat.offsetTopAndBottom(v, this.S);
        } else if (i6 == 4) {
            ViewCompat.offsetTopAndBottom(v, this.F);
        } else if (i6 == 1 || i6 == 2) {
            ViewCompat.offsetTopAndBottom(v, top - v.getTop());
        }
        this.U = new WeakReference(d(v));
        while (true) {
            ArrayList arrayList = this.V;
            if (i2 >= arrayList.size()) {
                return true;
            }
            ((BottomSheetCallback) arrayList.get(i2)).a(v);
            i2++;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v.isShown() || !this.J) {
            this.N = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.X = -1;
            VelocityTracker velocityTracker = this.W;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.W = null;
            }
        }
        if (this.W == null) {
            this.W = VelocityTracker.obtain();
        }
        this.W.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.Y = (int) motionEvent.getY();
            if (this.K != 2) {
                WeakReference weakReference = this.U;
                View view = weakReference != null ? (View) weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.Y)) {
                    this.X = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.Z = true;
                }
            }
            this.N = this.X == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.Y);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.Z = false;
            this.X = -1;
            if (this.N) {
                this.N = false;
                return false;
            }
        }
        if (this.N || (viewDragHelper = this.M) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            WeakReference weakReference2 = this.U;
            View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view2 == null || this.N || this.K == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.M == null || Math.abs(this.Y - motionEvent.getY()) <= this.M.getTouchSlop()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.K;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.M;
        if (viewDragHelper != null && (this.J || i == 1)) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            this.X = -1;
            VelocityTracker velocityTracker = this.W;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.W = null;
            }
        }
        if (this.W == null) {
            this.W = VelocityTracker.obtain();
        }
        this.W.addMovement(motionEvent);
        if (this.M != null && ((this.J || this.K == 1) && actionMasked == 2 && !this.N && Math.abs(this.Y - motionEvent.getY()) > this.M.getTouchSlop())) {
            this.M.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.N;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        this.O = 0;
        this.P = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.U;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (!isNestedScrollingCheckEnabled() || view == view2) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < getExpandedOffset()) {
                    int expandedOffset = top - getExpandedOffset();
                    iArr[1] = expandedOffset;
                    ViewCompat.offsetTopAndBottom(v, -expandedOffset);
                    g(3);
                } else {
                    if (!this.J) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    g(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i5 = this.F;
                if (i4 <= i5 || this.H) {
                    if (!this.J) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    g(1);
                } else {
                    int i6 = top - i5;
                    iArr[1] = i6;
                    ViewCompat.offsetTopAndBottom(v, -i6);
                    g(4);
                }
            }
            c(v.getTop());
            this.O = i2;
            this.P = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ba  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStopNestedScroll(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r3, @androidx.annotation.NonNull V r4, @androidx.annotation.NonNull android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.getExpandedOffset()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.g(r0)
            return
        Lf:
            boolean r3 = r2.isNestedScrollingCheckEnabled()
            if (r3 == 0) goto L24
            java.lang.ref.WeakReference r3 = r2.U
            if (r3 == 0) goto L23
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto L23
            boolean r3 = r2.P
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r2.O
            r5 = 6
            if (r3 <= 0) goto L39
            boolean r3 = r2.f2820b
            if (r3 == 0) goto L2f
            goto Lbb
        L2f:
            int r3 = r4.getTop()
            int r6 = r2.D
            if (r3 <= r6) goto Lbb
            goto Lba
        L39:
            boolean r3 = r2.H
            if (r3 == 0) goto L5a
            android.view.VelocityTracker r3 = r2.W
            if (r3 != 0) goto L43
            r3 = 0
            goto L52
        L43:
            r6 = 1000(0x3e8, float:1.401E-42)
            float r1 = r2.d
            r3.computeCurrentVelocity(r6, r1)
            android.view.VelocityTracker r3 = r2.W
            int r6 = r2.X
            float r3 = r3.getYVelocity(r6)
        L52:
            boolean r3 = r2.h(r4, r3)
            if (r3 == 0) goto L5a
            r0 = 5
            goto Lbb
        L5a:
            int r3 = r2.O
            r6 = 4
            if (r3 != 0) goto L9f
            int r3 = r4.getTop()
            boolean r1 = r2.f2820b
            if (r1 == 0) goto L79
            int r5 = r2.C
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.F
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto La3
            goto Lbb
        L79:
            int r1 = r2.D
            if (r3 >= r1) goto L8f
            int r1 = r2.F
            int r1 = r3 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r3 >= r1) goto L88
            goto Lbb
        L88:
            boolean r3 = r2.shouldSkipHalfExpandedStateWhenDragging()
            if (r3 == 0) goto Lba
            goto La3
        L8f:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.F
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto La3
            goto Lba
        L9f:
            boolean r3 = r2.f2820b
            if (r3 == 0) goto La5
        La3:
            r0 = 4
            goto Lbb
        La5:
            int r3 = r4.getTop()
            int r0 = r2.D
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.F
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto La3
        Lba:
            r0 = 6
        Lbb:
            r3 = 0
            r2.i(r4, r3, r0)
            r2.P = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
        WeakReference weakReference;
        return isNestedScrollingCheckEnabled() && (weakReference = this.U) != null && view == weakReference.get() && (this.K != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2));
    }

    public boolean isFitToContents() {
        return this.f2820b;
    }

    public void setFitToContents(boolean z) {
        if (this.f2820b == z) {
            return;
        }
        this.f2820b = z;
        if (this.T != null) {
            a();
        }
        g((this.f2820b && this.K == 6) ? 3 : this.K);
        j();
    }

    public void setMaxWidth(@Px int i) {
        this.k = i;
    }

    @Px
    public int getMaxWidth() {
        return this.k;
    }

    public void setMaxHeight(@Px int i) {
        this.l = i;
    }

    @Px
    public int getMaxHeight() {
        return this.l;
    }

    public void setPeekHeight(int i) {
        setPeekHeight(i, false);
    }

    public final void setPeekHeight(int i, boolean z) {
        if (i == -1) {
            if (this.f) {
                return;
            } else {
                this.f = true;
            }
        } else {
            if (!this.f && this.e == i) {
                return;
            }
            this.f = false;
            this.e = Math.max(0, i);
        }
        m(z);
    }

    public final void m(boolean z) {
        View view;
        if (this.T != null) {
            a();
            if (this.K != 4 || (view = (View) this.T.get()) == null) {
                return;
            }
            if (z) {
                setState(4);
            } else {
                view.requestLayout();
            }
        }
    }

    public int getPeekHeight() {
        if (this.f) {
            return -1;
        }
        return this.e;
    }

    public void setHalfExpandedRatio(@FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.E = f;
        if (this.T != null) {
            this.D = (int) ((1.0f - f) * this.S);
        }
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getHalfExpandedRatio() {
        return this.E;
    }

    public void setExpandedOffset(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.B = i;
    }

    public int getExpandedOffset() {
        if (this.f2820b) {
            return this.C;
        }
        return Math.max(this.B, this.r ? 0 : this.w);
    }

    public void setHideable(boolean z) {
        if (this.H != z) {
            this.H = z;
            if (!z && this.K == 5) {
                setState(4);
            }
            j();
        }
    }

    public boolean isHideable() {
        return this.H;
    }

    public void setSkipCollapsed(boolean z) {
        this.I = z;
    }

    public boolean getSkipCollapsed() {
        return this.I;
    }

    public void setDraggable(boolean z) {
        this.J = z;
    }

    public boolean isDraggable() {
        return this.J;
    }

    public void setSaveFlags(int i) {
        this.f2819a = i;
    }

    public int getSaveFlags() {
        return this.f2819a;
    }

    @Deprecated
    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        Log.w("BottomSheetBehavior", "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        ArrayList arrayList = this.V;
        arrayList.clear();
        if (bottomSheetCallback != null) {
            arrayList.add(bottomSheetCallback);
        }
    }

    public void addBottomSheetCallback(@NonNull BottomSheetCallback bottomSheetCallback) {
        ArrayList arrayList = this.V;
        if (arrayList.contains(bottomSheetCallback)) {
            return;
        }
        arrayList.add(bottomSheetCallback);
    }

    public void removeBottomSheetCallback(@NonNull BottomSheetCallback bottomSheetCallback) {
        this.V.remove(bottomSheetCallback);
    }

    public void setState(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(_COROUTINE.a.m(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.H && i == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i);
            return;
        }
        int i2 = (i == 6 && this.f2820b && f(i) <= this.C) ? 3 : i;
        WeakReference weakReference = this.T;
        if (weakReference == null || weakReference.get() == null) {
            g(i);
            return;
        }
        View view = (View) this.T.get();
        a aVar = new a(view, i2);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view)) {
            view.post(aVar);
        } else {
            aVar.run();
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f2823a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2824b;

        public a(View view, int i) {
            this.f2823a = view;
            this.f2824b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = BottomSheetBehavior.STATE_DRAGGING;
            BottomSheetBehavior.this.i(this.f2823a, false, this.f2824b);
        }
    }

    public void setGestureInsetBottomIgnored(boolean z) {
        this.n = z;
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.n;
    }

    public int getState() {
        return this.K;
    }

    public final void g(int i) {
        View view;
        if (this.K == i) {
            return;
        }
        this.K = i;
        if (i == 4 || i == 3 || i == 6 || (this.H && i == 5)) {
            this.L = i;
        }
        WeakReference weakReference = this.T;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = 0;
        if (i == 3) {
            l(true);
        } else if (i == 6 || i == 5 || i == 4) {
            l(false);
        }
        k(i);
        while (true) {
            ArrayList arrayList = this.V;
            if (i2 < arrayList.size()) {
                ((BottomSheetCallback) arrayList.get(i2)).onStateChanged(view, i);
                i2++;
            } else {
                j();
                return;
            }
        }
    }

    public final void k(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.y != z) {
            this.y = z;
            if (this.i == null || (valueAnimator = this.A) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.A.reverse();
                return;
            }
            float f = z ? 0.0f : 1.0f;
            this.A.setFloatValues(1.0f - f, f);
            this.A.start();
        }
    }

    public final int b() {
        int i;
        if (this.f) {
            return Math.min(Math.max(this.f2821g, this.S - ((this.R * 9) / 16)), this.Q) + this.v;
        }
        if (!this.n && !this.o && (i = this.m) > 0) {
            return Math.max(this.e, i + this.h);
        }
        return this.e + this.v;
    }

    public final void a() {
        int iB = b();
        if (this.f2820b) {
            this.F = Math.max(this.S - iB, this.C);
        } else {
            this.F = this.S - iB;
        }
    }

    public final boolean h(View view, float f) {
        if (this.I) {
            return true;
        }
        if (view.getTop() < this.F) {
            return false;
        }
        return Math.abs(((f * 0.1f) + ((float) view.getTop())) - ((float) this.F)) / ((float) b()) > 0.5f;
    }

    public static View d(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewD = d(viewGroup.getChildAt(i));
            if (viewD != null) {
                return viewD;
            }
        }
        return null;
    }

    public final void i(View view, boolean z, int i) {
        int iF = f(i);
        ViewDragHelper viewDragHelper = this.M;
        if (viewDragHelper != null && (!z ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), iF) : viewDragHelper.settleCapturedViewAt(view.getLeft(), iF))) {
            g(2);
            k(i);
            this.z.a(i);
            return;
        }
        g(i);
    }

    public final int f(int i) {
        if (i == 3) {
            return getExpandedOffset();
        }
        if (i == 4) {
            return this.F;
        }
        if (i == 5) {
            return this.S;
        }
        if (i == 6) {
            return this.D;
        }
        throw new IllegalArgumentException(_COROUTINE.a.d(i, "Invalid state to get top offset: "));
    }

    public final void c(int i) {
        float f;
        float expandedOffset;
        View view = (View) this.T.get();
        if (view != null) {
            ArrayList arrayList = this.V;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.F;
            if (i > i2 || i2 == getExpandedOffset()) {
                int i3 = this.F;
                f = i3 - i;
                expandedOffset = this.S - i3;
            } else {
                int i4 = this.F;
                f = i4 - i;
                expandedOffset = i4 - getExpandedOffset();
            }
            float f2 = f / expandedOffset;
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                ((BottomSheetCallback) arrayList.get(i5)).onSlide(view, f2);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void disableShapeAnimations() {
        this.A = null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setHideableInternal(boolean z) {
        this.H = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getLastStableState() {
        return this.L;
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        public int f2827a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2828b;
        public final Runnable c = new a();

        public class a implements Runnable {
            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.f2828b = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.M;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    cVar.a(cVar.f2827a);
                    return;
                }
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.K == 2) {
                    bottomSheetBehavior.g(cVar.f2827a);
                }
            }

            public a() {
            }
        }

        public c() {
        }

        public final void a(int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            WeakReference weakReference = bottomSheetBehavior.T;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f2827a = i;
            if (this.f2828b) {
                return;
            }
            ViewCompat.postOnAnimation((View) bottomSheetBehavior.T.get(), this.c);
            this.f2828b = true;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public final int f2822b;
        public final int c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2822b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt() == 1;
            this.e = parcel.readInt() == 1;
            this.f = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f2822b = bottomSheetBehavior.K;
            this.c = bottomSheetBehavior.e;
            this.d = bottomSheetBehavior.f2820b;
            this.e = bottomSheetBehavior.H;
            this.f = bottomSheetBehavior.I;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f2822b = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2822b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d ? 1 : 0);
            parcel.writeInt(this.e ? 1 : 0);
            parcel.writeInt(this.f ? 1 : 0);
        }

        public class a implements Parcelable.ClassLoaderCreator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> from(@NonNull V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (!(behavior instanceof BottomSheetBehavior)) {
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        return (BottomSheetBehavior) behavior;
    }

    public void setUpdateImportantForAccessibilityOnSiblings(boolean z) {
        this.c = z;
    }

    public final void l(boolean z) {
        HashMap map;
        WeakReference weakReference = this.T;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.a0 != null) {
                    return;
                } else {
                    this.a0 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.T.get()) {
                    if (z) {
                        this.a0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.c) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.c && (map = this.a0) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, ((Integer) this.a0.get(childAt)).intValue());
                    }
                }
            }
            if (!z) {
                this.a0 = null;
            } else if (this.c) {
                ((View) this.T.get()).sendAccessibilityEvent(8);
            }
        }
    }

    public final void j() {
        View view;
        WeakReference weakReference = this.T;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        int i = this.b0;
        if (i != -1) {
            ViewCompat.removeAccessibilityAction(view, i);
        }
        if (!this.f2820b && this.K != 6) {
            this.b0 = ViewCompat.addAccessibilityAction(view, view.getResources().getString(R.string.bottomsheet_action_expand_halfway), new com.google.android.material.bottomsheet.c(this, 6));
        }
        if (this.H && this.K != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new com.google.android.material.bottomsheet.c(this, 5));
        }
        int i2 = this.K;
        if (i2 == 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new com.google.android.material.bottomsheet.c(this, this.f2820b ? 4 : 6));
            return;
        }
        if (i2 == 4) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new com.google.android.material.bottomsheet.c(this, this.f2820b ? 3 : 6));
        } else {
            if (i2 != 6) {
                return;
            }
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new com.google.android.material.bottomsheet.c(this, 4));
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new com.google.android.material.bottomsheet.c(this, 3));
        }
    }
}
