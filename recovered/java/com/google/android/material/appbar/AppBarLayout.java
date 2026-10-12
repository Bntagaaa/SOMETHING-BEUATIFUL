package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    public static final int t = R.style.Widget_Design_AppBarLayout;

    /* renamed from: a, reason: collision with root package name */
    public int f2744a;

    /* renamed from: b, reason: collision with root package name */
    public int f2745b;
    public int c;
    public int d;
    public boolean e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public WindowInsetsCompat f2746g;
    public ArrayList h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public int m;
    public WeakReference n;
    public ValueAnimator o;
    public final ArrayList p;
    public int[] q;
    public Drawable r;
    public Behavior s;

    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t, int i);
    }

    public static abstract class ChildScrollEffect {
        public abstract void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f);
    }

    public interface LiftOnScrollListener {
        void onUpdate(@Dimension float f, @ColorInt int i);
    }

    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = t;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.f2745b = -1;
        this.c = -1;
        this.d = -1;
        this.f = 0;
        this.p = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i3 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context3, attributeSet, k.f2778a, i, i2, new int[0]);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayObtainStyledAttributes.getResourceId(0, 0)));
            }
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.AppBarLayout, i, i2, new int[0]);
            ViewCompat.setBackground(this, typedArrayObtainStyledAttributes2.getDrawable(R.styleable.AppBarLayout_android_background));
            if (getBackground() instanceof ColorDrawable) {
                ColorDrawable colorDrawable = (ColorDrawable) getBackground();
                MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(colorDrawable.getColor()));
                materialShapeDrawable.initializeElevationOverlay(context2);
                ViewCompat.setBackground(this, materialShapeDrawable);
            }
            int i4 = R.styleable.AppBarLayout_expanded;
            if (typedArrayObtainStyledAttributes2.hasValue(i4)) {
                this.f = typedArrayObtainStyledAttributes2.getBoolean(i4, false) ? 1 : 2;
                requestLayout();
            }
            if (typedArrayObtainStyledAttributes2.hasValue(R.styleable.AppBarLayout_elevation)) {
                k.a(this, typedArrayObtainStyledAttributes2.getDimensionPixelSize(r13, 0));
            }
            if (i3 >= 26) {
                int i5 = R.styleable.AppBarLayout_android_keyboardNavigationCluster;
                if (typedArrayObtainStyledAttributes2.hasValue(i5)) {
                    setKeyboardNavigationCluster(typedArrayObtainStyledAttributes2.getBoolean(i5, false));
                }
                int i6 = R.styleable.AppBarLayout_android_touchscreenBlocksFocus;
                if (typedArrayObtainStyledAttributes2.hasValue(i6)) {
                    setTouchscreenBlocksFocus(typedArrayObtainStyledAttributes2.getBoolean(i6, false));
                }
            }
            this.l = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.AppBarLayout_liftOnScroll, false);
            this.m = typedArrayObtainStyledAttributes2.getResourceId(R.styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
            setStatusBarForeground(typedArrayObtainStyledAttributes2.getDrawable(R.styleable.AppBarLayout_statusBarForeground));
            typedArrayObtainStyledAttributes2.recycle();
            ViewCompat.setOnApplyWindowInsetsListener(this, new a());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public class a implements OnApplyWindowInsetsListener {
        public a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            AppBarLayout appBarLayout = AppBarLayout.this;
            WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(appBarLayout) ? windowInsetsCompat : null;
            if (!ObjectsCompat.equals(appBarLayout.f2746g, windowInsetsCompat2)) {
                appBarLayout.f2746g = windowInsetsCompat2;
                appBarLayout.setWillNotDraw(!(appBarLayout.r != null && appBarLayout.c() > 0));
                appBarLayout.requestLayout();
            }
            return windowInsetsCompat;
        }
    }

    public void addOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.h == null) {
            this.h = new ArrayList();
        }
        if (baseOnOffsetChangedListener == null || this.h.contains(baseOnOffsetChangedListener)) {
            return;
        }
        this.h.add(baseOnOffsetChangedListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void removeOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        ArrayList arrayList = this.h;
        if (arrayList == null || baseOnOffsetChangedListener == null) {
            return;
        }
        arrayList.remove(baseOnOffsetChangedListener);
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void addLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        this.p.add(liftOnScrollListener);
    }

    public boolean removeLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        return this.p.remove(liftOnScrollListener);
    }

    public void clearLiftOnScrollListener() {
        this.p.clear();
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.r = drawableMutate;
            boolean z = false;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.r.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.r, ViewCompat.getLayoutDirection(this));
                this.r.setVisible(getVisibility() == 0, false);
                this.r.setCallback(this);
            }
            if (this.r != null && c() > 0) {
                z = true;
            }
            setWillNotDraw(true ^ z);
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i));
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.r;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.r == null || c() <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(0.0f, -this.f2744a);
        this.r.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.r;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !ViewCompat.getFitsSystemWindows(childAt)) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = MathUtils.clamp(c() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i2));
                } else if (mode == 0) {
                    measuredHeight += c();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        d();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = false;
        if (ViewCompat.getFitsSystemWindows(this) && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !ViewCompat.getFitsSystemWindows(childAt)) {
                int iC = c();
                for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                    ViewCompat.offsetTopAndBottom(getChildAt(childCount), iC);
                }
            }
        }
        d();
        this.e = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((LayoutParams) getChildAt(i5).getLayoutParams()).getScrollInterpolator() != null) {
                this.e = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), c());
        }
        if (this.i) {
            return;
        }
        if (this.l) {
            z2 = true;
            break;
        }
        int childCount3 = getChildCount();
        for (int i6 = 0; i6 < childCount3; i6++) {
            int i7 = ((LayoutParams) getChildAt(i6).getLayoutParams()).f2750a;
            if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                z2 = true;
                break;
            }
        }
        if (this.j != z2) {
            this.j = z2;
            refreshDrawableState();
        }
    }

    public final void d() {
        Behavior behavior = this.s;
        BaseBehavior.SavedState savedStateJ = (behavior == null || this.f2745b == -1 || this.f != 0) ? null : behavior.j(AbsSavedState.EMPTY_STATE, this);
        this.f2745b = -1;
        this.c = -1;
        this.d = -1;
        if (savedStateJ != null) {
            Behavior behavior2 = this.s;
            if (behavior2.n != null) {
                return;
            }
            behavior2.n = savedStateJ;
        }
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.s = behavior;
        return behavior;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.isLaidOut(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        this.f = (z ? 1 : 2) | (z2 ? 4 : 0) | 8;
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.n = null;
    }

    public final int getTotalScrollRange() {
        int i = this.f2745b;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.f2750a;
            if ((i3 & 1) == 0) {
                break;
            }
            int iC = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + minimumHeight;
            if (i2 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                iC -= c();
            }
            minimumHeight = iC;
            if ((i3 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.f2745b = iMax;
        return iMax;
    }

    public final int a() {
        int iMin;
        int minimumHeight;
        int i = this.c;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.f2750a;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if ((i3 & 8) != 0) {
                    minimumHeight = ViewCompat.getMinimumHeight(childAt);
                } else if ((i3 & 2) != 0) {
                    minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                } else {
                    iMin = i4 + measuredHeight;
                    if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - c());
                    }
                    i2 += iMin;
                }
                iMin = minimumHeight + i4;
                if (childCount == 0) {
                    iMin = Math.min(iMin, measuredHeight - c());
                }
                i2 += iMin;
            }
        }
        int iMax = Math.max(0, i2);
        this.c = iMax;
        return iMax;
    }

    public final int b() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + childAt.getMeasuredHeight();
            int i3 = layoutParams.f2750a;
            if ((i3 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight;
            if ((i3 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.d = iMax;
        return iMax;
    }

    public final void e(int i) {
        this.f2744a = i;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        ArrayList arrayList = this.h;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = (BaseOnOffsetChangedListener) this.h.get(i2);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i);
                }
            }
        }
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int iC = c();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + iC;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.q == null) {
            this.q = new int[4];
        }
        int[] iArr = this.q;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.j;
        int i2 = R.attr.state_liftable;
        if (!z) {
            i2 = -i2;
        }
        iArr[0] = i2;
        iArr[1] = (z && this.k) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i3 = R.attr.state_collapsible;
        if (!z) {
            i3 = -i3;
        }
        iArr[2] = i3;
        iArr[3] = (z && this.k) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    public boolean setLiftable(boolean z) {
        this.i = true;
        if (this.j == z) {
            return false;
        }
        this.j = z;
        refreshDrawableState();
        return true;
    }

    public void setLiftableOverrideEnabled(boolean z) {
        this.i = z;
    }

    public boolean setLifted(boolean z) {
        return f(z, true);
    }

    public boolean isLifted() {
        return this.k;
    }

    public final boolean f(boolean z, boolean z2) throws Resources.NotFoundException {
        if (!z2 || this.k == z) {
            return false;
        }
        this.k = z;
        refreshDrawableState();
        if (this.l && (getBackground() instanceof MaterialShapeDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
            float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
            float f = z ? 0.0f : dimension;
            if (!z) {
                dimension = 0.0f;
            }
            ValueAnimator valueAnimator = this.o;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, dimension);
            this.o = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
            this.o.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
            this.o.addUpdateListener(new com.google.android.material.appbar.a(this, materialShapeDrawable));
            this.o.start();
        }
        return true;
    }

    public void setLiftOnScroll(boolean z) {
        this.l = z;
    }

    public boolean isLiftOnScroll() {
        return this.l;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i) {
        this.m = i;
        WeakReference weakReference = this.n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.n = null;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.m;
    }

    public final boolean g(View view) {
        int i;
        if (this.n == null && (i = this.m) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.m);
            }
            if (viewFindViewById != null) {
                this.n = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.n;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    @Deprecated
    public void setTargetElevation(float f) {
        k.a(this, f);
    }

    public final int c() {
        WindowInsetsCompat windowInsetsCompat = this.f2746g;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_NO_SCROLL = 0;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;

        /* renamed from: a, reason: collision with root package name */
        public int f2750a;

        /* renamed from: b, reason: collision with root package name */
        public ChildScrollEffect f2751b;
        public Interpolator c;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2750a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.f2750a = typedArrayObtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            setScrollEffect(typedArrayObtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0) != 1 ? null : new CompressChildScrollEffect());
            int i = R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i)) {
                this.c = android.view.animation.AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2750a = 1;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.f2750a = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2750a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2750a = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2750a = 1;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.f2750a = 1;
            this.f2750a = layoutParams.f2750a;
            this.c = layoutParams.c;
        }

        public void setScrollFlags(int i) {
            this.f2750a = i;
        }

        public int getScrollFlags() {
            return this.f2750a;
        }

        @Nullable
        public ChildScrollEffect getScrollEffect() {
            return this.f2751b;
        }

        public void setScrollEffect(@Nullable ChildScrollEffect childScrollEffect) {
            this.f2751b = childScrollEffect;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.c = interpolator;
        }

        public Interpolator getScrollInterpolator() {
            return this.c;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {

        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.g, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) throws Resources.NotFoundException {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i, int i2) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i) throws Resources.NotFoundException {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.g, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.BaseDragCallback baseDragCallback) {
            super.setDragCallback(baseDragCallback);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z) {
            super.setHorizontalOffsetEnabled(z);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z) {
            super.setVerticalOffsetEnabled(z);
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class BaseBehavior<T extends AppBarLayout> extends g<T> {
        public int k;
        public int l;
        public ValueAnimator m;
        public SavedState n;
        public WeakReference o;
        public BaseDragCallback p;
        public boolean q;

        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            public abstract boolean canDrag(@NonNull T t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.g
        public final boolean b(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            BaseDragCallback baseDragCallback = this.p;
            if (baseDragCallback != 0) {
                return baseDragCallback.canDrag(appBarLayout);
            }
            WeakReference weakReference = this.o;
            if (weakReference == null) {
                return true;
            }
            View view2 = (View) weakReference.get();
            return (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) ? false : true;
        }

        @Override // com.google.android.material.appbar.g
        public final int c(View view) {
            return -((AppBarLayout) view).b();
        }

        @Override // com.google.android.material.appbar.g
        public final int d(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // com.google.android.material.appbar.g
        public final void e(CoordinatorLayout coordinatorLayout, View view) throws Resources.NotFoundException {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            k(coordinatorLayout, appBarLayout);
            if (appBarLayout.isLiftOnScroll()) {
                appBarLayout.f(appBarLayout.g(i(coordinatorLayout)), !appBarLayout.i);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00d6  */
        @Override // com.google.android.material.appbar.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int f(androidx.coordinatorlayout.widget.CoordinatorLayout r8, android.view.View r9, int r10, int r11, int r12) throws android.content.res.Resources.NotFoundException {
            /*
                r7 = this;
                com.google.android.material.appbar.AppBarLayout r9 = (com.google.android.material.appbar.AppBarLayout) r9
                int r0 = r7.a()
                r1 = 0
                if (r11 == 0) goto Ldc
                if (r0 < r11) goto Ldc
                if (r0 > r12) goto Ldc
                int r10 = androidx.core.math.MathUtils.clamp(r10, r11, r12)
                if (r0 == r10) goto Lde
                boolean r11 = r9.e
                if (r11 == 0) goto L89
                int r11 = java.lang.Math.abs(r10)
                int r12 = r9.getChildCount()
                r2 = 0
            L20:
                if (r2 >= r12) goto L89
                android.view.View r3 = r9.getChildAt(r2)
                android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r4 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r4
                android.view.animation.Interpolator r5 = r4.getScrollInterpolator()
                int r6 = r3.getTop()
                if (r11 < r6) goto L86
                int r6 = r3.getBottom()
                if (r11 > r6) goto L86
                if (r5 == 0) goto L89
                int r12 = r4.getScrollFlags()
                r2 = r12 & 1
                if (r2 == 0) goto L5a
                int r2 = r3.getHeight()
                int r6 = r4.topMargin
                int r2 = r2 + r6
                int r4 = r4.bottomMargin
                int r2 = r2 + r4
                r12 = r12 & 2
                if (r12 == 0) goto L5b
                int r12 = androidx.core.view.ViewCompat.getMinimumHeight(r3)
                int r2 = r2 - r12
                goto L5b
            L5a:
                r2 = 0
            L5b:
                boolean r12 = androidx.core.view.ViewCompat.getFitsSystemWindows(r3)
                if (r12 == 0) goto L66
                int r12 = r9.c()
                int r2 = r2 - r12
            L66:
                if (r2 <= 0) goto L89
                int r12 = r3.getTop()
                int r11 = r11 - r12
                float r12 = (float) r2
                float r11 = (float) r11
                float r11 = r11 / r12
                float r11 = r5.getInterpolation(r11)
                float r11 = r11 * r12
                int r11 = java.lang.Math.round(r11)
                int r12 = java.lang.Integer.signum(r10)
                int r2 = r3.getTop()
                int r2 = r2 + r11
                int r2 = r2 * r12
                goto L8a
            L86:
                int r2 = r2 + 1
                goto L20
            L89:
                r2 = r10
            L8a:
                boolean r11 = r7.setTopAndBottomOffset(r2)
                int r12 = r0 - r10
                int r2 = r10 - r2
                r7.k = r2
                r2 = 1
                if (r11 == 0) goto Lc4
                r3 = 0
            L98:
                int r4 = r9.getChildCount()
                if (r3 >= r4) goto Lc4
                android.view.View r4 = r9.getChildAt(r3)
                android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r4 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r4
                com.google.android.material.appbar.AppBarLayout$ChildScrollEffect r5 = r4.getScrollEffect()
                if (r5 == 0) goto Lc1
                int r4 = r4.getScrollFlags()
                r4 = r4 & r2
                if (r4 == 0) goto Lc1
                android.view.View r4 = r9.getChildAt(r3)
                int r6 = r7.getTopAndBottomOffset()
                float r6 = (float) r6
                r5.onOffsetChanged(r9, r4, r6)
            Lc1:
                int r3 = r3 + 1
                goto L98
            Lc4:
                if (r11 != 0) goto Lcd
                boolean r11 = r9.e
                if (r11 == 0) goto Lcd
                r8.dispatchDependentViewsChanged(r9)
            Lcd:
                int r11 = r7.getTopAndBottomOffset()
                r9.e(r11)
                if (r10 >= r0) goto Ld7
                r2 = -1
            Ld7:
                m(r8, r9, r10, r2, r1)
                r1 = r12
                goto Lde
            Ldc:
                r7.k = r1
            Lde:
                r7.l(r8, r9)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.f(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.isLiftOnScroll() || (t.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight()));
            if (z && (valueAnimator = this.m) != null) {
                valueAnimator.cancel();
            }
            this.o = null;
            this.l = i2;
            return z;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNestedPreScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r8, @androidx.annotation.NonNull T r9, android.view.View r10, int r11, int r12, int[] r13, int r14) throws android.content.res.Resources.NotFoundException {
            /*
                r7 = this;
                r11 = 1
                if (r12 == 0) goto L2c
                if (r12 >= 0) goto L12
                int r14 = r9.getTotalScrollRange()
                int r14 = -r14
                int r0 = r9.a()
                int r0 = r0 + r14
                r6 = r0
            L10:
                r5 = r14
                goto L1a
            L12:
                int r14 = r9.getTotalScrollRange()
                int r14 = -r14
                r0 = 0
                r6 = 0
                goto L10
            L1a:
                if (r5 == r6) goto L2c
                int r14 = r7.a()
                int r4 = r14 - r12
                r1 = r7
                r2 = r8
                r3 = r9
                int r8 = r1.f(r2, r3, r4, r5, r6)
                r13[r11] = r8
                goto L2d
            L2c:
                r3 = r9
            L2d:
                boolean r8 = r3.isLiftOnScroll()
                if (r8 == 0) goto L3d
                boolean r8 = r3.g(r10)
                boolean r9 = r3.i
                r9 = r9 ^ r11
                r3.f(r8, r9)
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.onNestedPreScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, int, int, int[], int):void");
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            CoordinatorLayout coordinatorLayout2;
            T t2;
            if (i4 < 0) {
                coordinatorLayout2 = coordinatorLayout;
                t2 = t;
                iArr[1] = f(coordinatorLayout2, t2, a() - i4, -t.b(), 0);
            } else {
                coordinatorLayout2 = coordinatorLayout;
                t2 = t;
            }
            if (i4 == 0) {
                l(coordinatorLayout2, t2);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i) throws Resources.NotFoundException {
            if (this.l == 0 || i == 1) {
                k(coordinatorLayout, t);
                if (t.isLiftOnScroll()) {
                    t.f(t.g(view), !t.i);
                }
            }
            this.o = new WeakReference(view);
        }

        public void setDragCallback(@Nullable BaseDragCallback baseDragCallback) {
            this.p = baseDragCallback;
        }

        public final void h(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int height;
            int iAbs = Math.abs(a() - i);
            float fAbs = Math.abs(0.0f);
            if (fAbs > 0.0f) {
                height = Math.round((iAbs / fAbs) * 1000.0f) * 3;
            } else {
                height = (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            }
            int iA = a();
            if (iA == i) {
                ValueAnimator valueAnimator = this.m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.m = valueAnimator3;
                valueAnimator3.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                this.m.addUpdateListener(new b(this, coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.m.setDuration(Math.min(height, 600));
            this.m.setIntValues(iA, i);
            this.m.start();
        }

        public final void k(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.c();
            int iA = a() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if ((layoutParams.getScrollFlags() & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i2 = -iA;
                if (top <= i2 && bottom >= i2) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                View childAt2 = appBarLayout.getChildAt(i);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int scrollFlags = layoutParams2.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int iC = -childAt2.getTop();
                    int minimumHeight = -childAt2.getBottom();
                    if (i == 0 && ViewCompat.getFitsSystemWindows(appBarLayout) && ViewCompat.getFitsSystemWindows(childAt2)) {
                        iC -= appBarLayout.c();
                    }
                    if ((scrollFlags & 2) == 2) {
                        minimumHeight += ViewCompat.getMinimumHeight(childAt2);
                    } else if ((scrollFlags & 5) == 5) {
                        int minimumHeight2 = ViewCompat.getMinimumHeight(childAt2) + minimumHeight;
                        if (iA < minimumHeight2) {
                            iC = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if ((scrollFlags & 32) == 32) {
                        iC += ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                    if (iA < (minimumHeight + iC) / 2) {
                        iC = minimumHeight;
                    }
                    h(coordinatorLayout, appBarLayout, MathUtils.clamp(iC + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.i, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i) throws Resources.NotFoundException {
            boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t, i);
            int i2 = t.f;
            SavedState savedState = this.n;
            if (savedState == null || (i2 & 8) != 0) {
                if (i2 != 0) {
                    boolean z = (i2 & 4) != 0;
                    if ((i2 & 2) != 0) {
                        int i3 = -t.getTotalScrollRange();
                        if (z) {
                            h(coordinatorLayout, t, i3);
                        } else {
                            g(coordinatorLayout, t, i3);
                        }
                    } else if ((i2 & 1) != 0) {
                        if (z) {
                            h(coordinatorLayout, t, 0);
                        } else {
                            g(coordinatorLayout, t, 0);
                        }
                    }
                }
            } else if (savedState.f2747b) {
                g(coordinatorLayout, t, -t.getTotalScrollRange());
            } else if (savedState.c) {
                g(coordinatorLayout, t, 0);
            } else {
                View childAt = t.getChildAt(savedState.d);
                int i4 = -childAt.getBottom();
                g(coordinatorLayout, t, this.n.f ? t.c() + ViewCompat.getMinimumHeight(childAt) + i4 : Math.round(childAt.getHeight() * this.n.e) + i4);
            }
            t.f = 0;
            this.n = null;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t.getTotalScrollRange(), 0));
            m(coordinatorLayout, t, getTopAndBottomOffset(), 0, true);
            t.e(getTopAndBottomOffset());
            l(coordinatorLayout, t);
            return zOnLayoutChild;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void l(androidx.coordinatorlayout.widget.CoordinatorLayout r12, com.google.android.material.appbar.AppBarLayout r13) {
            /*
                r11 = this;
                androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r0 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD
                int r0 = r0.getId()
                androidx.core.view.ViewCompat.removeAccessibilityAction(r12, r0)
                androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r0 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD
                int r0 = r0.getId()
                androidx.core.view.ViewCompat.removeAccessibilityAction(r12, r0)
                int r0 = r13.getTotalScrollRange()
                if (r0 != 0) goto L1b
            L18:
                r5 = r11
                goto Lb5
            L1b:
                int r0 = r12.getChildCount()
                r1 = 0
                r2 = 0
            L21:
                r3 = 0
                if (r2 >= r0) goto L3b
                android.view.View r4 = r12.getChildAt(r2)
                android.view.ViewGroup$LayoutParams r5 = r4.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams r5 = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) r5
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r5 = r5.getBehavior()
                boolean r5 = r5 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r5 == 0) goto L38
                r8 = r4
                goto L3c
            L38:
                int r2 = r2 + 1
                goto L21
            L3b:
                r8 = r3
            L3c:
                if (r8 != 0) goto L3f
                goto L18
            L3f:
                int r0 = r13.getChildCount()
                r2 = 0
            L44:
                if (r2 >= r0) goto L18
                android.view.View r4 = r13.getChildAt(r2)
                android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r4 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r4
                int r4 = r4.f2750a
                if (r4 == 0) goto Laf
                boolean r0 = androidx.core.view.ViewCompat.hasAccessibilityDelegate(r12)
                if (r0 != 0) goto L62
                com.google.android.material.appbar.c r0 = new com.google.android.material.appbar.c
                r0.<init>(r11)
                androidx.core.view.ViewCompat.setAccessibilityDelegate(r12, r0)
            L62:
                int r0 = r11.a()
                int r2 = r13.getTotalScrollRange()
                int r2 = -r2
                r10 = 1
                if (r0 == r2) goto L79
                androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r0 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD
                com.google.android.material.appbar.e r2 = new com.google.android.material.appbar.e
                r2.<init>(r13, r1)
                androidx.core.view.ViewCompat.replaceAccessibilityAction(r12, r0, r3, r2)
                r1 = 1
            L79:
                int r0 = r11.a()
                if (r0 == 0) goto L9b
                r0 = -1
                boolean r0 = r8.canScrollVertically(r0)
                if (r0 == 0) goto L9d
                int r0 = r13.a()
                int r9 = -r0
                if (r9 == 0) goto L9b
                androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r0 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD
                com.google.android.material.appbar.d r4 = new com.google.android.material.appbar.d
                r5 = r11
                r6 = r12
                r7 = r13
                r4.<init>(r5, r6, r7, r8, r9)
                androidx.core.view.ViewCompat.replaceAccessibilityAction(r6, r0, r3, r4)
                goto Lac
            L9b:
                r5 = r11
                goto Lab
            L9d:
                r5 = r11
                r6 = r12
                r7 = r13
                androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r12 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD
                com.google.android.material.appbar.e r13 = new com.google.android.material.appbar.e
                r13.<init>(r7, r10)
                androidx.core.view.ViewCompat.replaceAccessibilityAction(r6, r12, r3, r13)
                goto Lac
            Lab:
                r10 = r1
            Lac:
                r5.q = r10
                return
            Laf:
                r5 = r11
                r6 = r12
                r7 = r13
                int r2 = r2 + 1
                goto L44
            Lb5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.l(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x005d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m(androidx.coordinatorlayout.widget.CoordinatorLayout r6, com.google.android.material.appbar.AppBarLayout r7, int r8, int r9, boolean r10) throws android.content.res.Resources.NotFoundException {
            /*
                int r0 = java.lang.Math.abs(r8)
                int r1 = r7.getChildCount()
                r2 = 0
                r3 = 0
            La:
                if (r3 >= r1) goto L20
                android.view.View r4 = r7.getChildAt(r3)
                int r5 = r4.getTop()
                if (r0 < r5) goto L1d
                int r5 = r4.getBottom()
                if (r0 > r5) goto L1d
                goto L21
            L1d:
                int r3 = r3 + 1
                goto La
            L20:
                r4 = 0
            L21:
                r0 = 1
                if (r4 == 0) goto L5d
                android.view.ViewGroup$LayoutParams r1 = r4.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r1 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r1
                int r1 = r1.getScrollFlags()
                r3 = r1 & 1
                if (r3 == 0) goto L5d
                int r3 = androidx.core.view.ViewCompat.getMinimumHeight(r4)
                if (r9 <= 0) goto L4b
                r9 = r1 & 12
                if (r9 == 0) goto L4b
                int r8 = -r8
                int r9 = r4.getBottom()
                int r9 = r9 - r3
                int r1 = r7.c()
                int r9 = r9 - r1
                if (r8 < r9) goto L5d
            L49:
                r8 = 1
                goto L5e
            L4b:
                r9 = r1 & 2
                if (r9 == 0) goto L5d
                int r8 = -r8
                int r9 = r4.getBottom()
                int r9 = r9 - r3
                int r1 = r7.c()
                int r9 = r9 - r1
                if (r8 < r9) goto L5d
                goto L49
            L5d:
                r8 = 0
            L5e:
                boolean r9 = r7.isLiftOnScroll()
                if (r9 == 0) goto L6c
                android.view.View r8 = i(r6)
                boolean r8 = r7.g(r8)
            L6c:
                boolean r9 = r7.i
                r9 = r9 ^ r0
                boolean r8 = r7.f(r8, r9)
                if (r10 != 0) goto La2
                if (r8 == 0) goto La1
                java.util.List r6 = r6.getDependents(r7)
                int r8 = r6.size()
            L7f:
                if (r2 >= r8) goto La1
                java.lang.Object r9 = r6.get(r2)
                android.view.View r9 = (android.view.View) r9
                android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams r9 = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) r9
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r9 = r9.getBehavior()
                boolean r10 = r9 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r10 == 0) goto L9e
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r9 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r9
                int r6 = r9.getOverlayTop()
                if (r6 == 0) goto La1
                goto La2
            L9e:
                int r2 = r2 + 1
                goto L7f
            La1:
                return
            La2:
                r7.jumpDrawablesToCurrentState()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.m(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        public static View i(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.i
        public final int a() {
            return getTopAndBottomOffset() + this.k;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t);
            SavedState savedStateJ = j(parcelableOnSaveInstanceState, t);
            return savedStateJ == null ? parcelableOnSaveInstanceState : savedStateJ;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                this.n = savedState;
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, savedState.getSuperState());
            } else {
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, parcelable);
                this.n = null;
            }
        }

        public final SavedState j(Parcelable parcelable, AppBarLayout appBarLayout) {
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z = topAndBottomOffset == 0;
                    savedState.c = z;
                    savedState.f2747b = !z && (-topAndBottomOffset) >= appBarLayout.getTotalScrollRange();
                    savedState.d = i;
                    savedState.f = bottom == appBarLayout.c() + ViewCompat.getMinimumHeight(childAt);
                    savedState.e = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            /* renamed from: b, reason: collision with root package name */
            public boolean f2747b;
            public boolean c;
            public int d;
            public float e;
            public boolean f;

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f2747b = parcel.readByte() != 0;
                this.c = parcel.readByte() != 0;
                this.d = parcel.readInt();
                this.e = parcel.readFloat();
                this.f = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeByte(this.f2747b ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.d);
                parcel.writeFloat(this.e);
                parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
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
                    return new SavedState(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                @NonNull
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }
        }
    }

    public static class ScrollingViewBehavior extends h {
        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.i, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        @Override // com.google.android.material.appbar.h, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z) {
            super.setHorizontalOffsetEnabled(z);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z) {
            super.setVerticalOffsetEnabled(z);
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z) {
            AppBarLayout appBarLayout;
            List<View> dependencies = coordinatorLayout.getDependencies(view);
            int size = dependencies.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    appBarLayout = null;
                    break;
                }
                View view2 = dependencies.get(i);
                if (view2 instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) view2;
                    break;
                }
                i++;
            }
            if (appBarLayout != null) {
                rect.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect2 = this.d;
                rect2.set(0, 0, width, height);
                if (!rect2.contains(rect)) {
                    appBarLayout.setExpanded(false, !z);
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) throws Resources.NotFoundException {
            int iClamp;
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).k + this.f;
                if (this.f2772g == 0) {
                    iClamp = 0;
                } else {
                    float fC = c(view2);
                    int i = this.f2772g;
                    iClamp = MathUtils.clamp((int) (fC * i), 0, i);
                }
                ViewCompat.offsetTopAndBottom(view, bottom - iClamp);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.f(appBarLayout.g(view), !appBarLayout.i);
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.h
        public final float c(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int iA = appBarLayout.a();
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            int iA2 = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).a() : 0;
            if ((iA == 0 || totalScrollRange + iA2 > iA) && (i = totalScrollRange - iA) != 0) {
                return (iA2 / i) + 1.0f;
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.h
        public final AppBarLayout b(List list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = (View) list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.h
        public final int d(View view) {
            if (!(view instanceof AppBarLayout)) {
                return view.getMeasuredHeight();
            }
            return ((AppBarLayout) view).getTotalScrollRange();
        }
    }

    public static class CompressChildScrollEffect extends ChildScrollEffect {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f2748a = new Rect();

        /* renamed from: b, reason: collision with root package name */
        public final Rect f2749b = new Rect();

        @Override // com.google.android.material.appbar.AppBarLayout.ChildScrollEffect
        public void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f) {
            Rect rect = this.f2748a;
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.c());
            float fAbs = rect.top - Math.abs(f);
            if (fAbs <= 0.0f) {
                float fClamp = 1.0f - MathUtils.clamp(Math.abs(fAbs / rect.height()), 0.0f, 1.0f);
                float fHeight = (-fAbs) - ((rect.height() * 0.3f) * (1.0f - (fClamp * fClamp)));
                view.setTranslationY(fHeight);
                Rect rect2 = this.f2749b;
                view.getDrawingRect(rect2);
                rect2.offset(0, (int) (-fHeight));
                ViewCompat.setClipBounds(view, rect2);
                return;
            }
            ViewCompat.setClipBounds(view, null);
            view.setTranslationY(0.0f);
        }
    }
}
