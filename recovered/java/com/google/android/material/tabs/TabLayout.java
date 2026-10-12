package com.google.android.material.tabs;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int GRAVITY_START = 2;
    public static final int INDICATOR_ANIMATION_MODE_ELASTIC = 1;
    public static final int INDICATOR_ANIMATION_MODE_FADE = 2;
    public static final int INDICATOR_ANIMATION_MODE_LINEAR = 0;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    public static final int MODE_AUTO = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    public static final int R = R.style.Widget_Design_TabLayout;
    public static final Pools.SynchronizedPool S = new Pools.SynchronizedPool(16);
    public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
    public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;
    public boolean A;
    public boolean B;
    public int C;
    public int D;
    public boolean E;
    public com.google.android.material.tabs.c F;
    public BaseOnTabSelectedListener G;
    public final ArrayList H;
    public ViewPagerOnTabSelectedListener I;
    public ValueAnimator J;
    public ViewPager K;
    public PagerAdapter L;
    public DataSetObserver M;
    public TabLayoutOnPageChangeListener N;
    public a O;
    public boolean P;
    public final Pools.SimplePool Q;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3264a;

    /* renamed from: b, reason: collision with root package name */
    public Tab f3265b;
    public final c c;
    public final int d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3266g;
    public final int h;
    public ColorStateList i;
    public ColorStateList j;
    public ColorStateList k;
    public Drawable l;
    public int m;
    public final PorterDuff.Mode n;
    public final float o;
    public final float p;
    public final int q;
    public int r;
    public final int s;
    public final int t;
    public final int u;
    public final int v;
    public int w;
    public final int x;
    public int y;
    public int z;

    @Deprecated
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void onTabReselected(T t);

        void onTabSelected(T t);

        void onTabUnselected(T t);
    }

    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Mode {
    }

    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabIndicatorGravity {
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2 = R;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.f3264a = new ArrayList();
        this.l = new GradientDrawable();
        this.m = 0;
        this.r = Integer.MAX_VALUE;
        this.C = -1;
        this.H = new ArrayList();
        this.Q = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        c cVar = new c(context2);
        this.c = cVar;
        super.addView(cVar, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = R.styleable.TabLayout;
        int i3 = R.styleable.TabLayout_tabTextAppearance;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, iArr, i, i2, i3);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(colorDrawable.getColor()));
            materialShapeDrawable.initializeElevationOverlay(context2);
            materialShapeDrawable.setElevation(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        setSelectedTabIndicator(MaterialResources.getDrawable(context2, typedArrayObtainStyledAttributes, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        cVar.b(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorAnimationMode(typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorAnimationMode, 0));
        setTabIndicatorFullWidth(typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.f3266g = dimensionPixelSize;
        this.f = dimensionPixelSize;
        this.e = dimensionPixelSize;
        this.d = dimensionPixelSize;
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, dimensionPixelSize);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, dimensionPixelSize);
        this.f3266g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, dimensionPixelSize);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(i3, R.style.TextAppearance_Design_Tab);
        this.h = resourceId;
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R.styleable.TextAppearance);
        try {
            this.o = typedArrayObtainStyledAttributes2.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.i = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes2, androidx.appcompat.R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes2.recycle();
            int i4 = R.styleable.TabLayout_tabTextColor;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                this.i = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i4);
            }
            int i5 = R.styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayObtainStyledAttributes.hasValue(i5)) {
                this.i = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{typedArrayObtainStyledAttributes.getColor(i5, 0), this.i.getDefaultColor()});
            }
            this.j = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.TabLayout_tabIconTint);
            this.n = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.k = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.TabLayout_tabRippleColor);
            this.x = typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, KeyboardChangeListener.MIN_KEYBOARD_HEIGHT);
            this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.q = typedArrayObtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.z = typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabMode, 1);
            this.w = typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabGravity, 0);
            this.A = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
            this.E = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayObtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.p = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.u = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            c();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.m = i;
        j(false);
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.C = i;
        this.c.b(i);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        int iRound = Math.round(i + f);
        if (iRound >= 0) {
            c cVar = this.c;
            if (iRound >= cVar.getChildCount()) {
                return;
            }
            if (z2) {
                ValueAnimator valueAnimator = cVar.f3279a;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    cVar.f3279a.cancel();
                }
                cVar.f3280b = i;
                cVar.c = f;
                cVar.c(cVar.getChildAt(i), cVar.getChildAt(cVar.f3280b + 1), cVar.c);
            }
            ValueAnimator valueAnimator2 = this.J;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.J.cancel();
            }
            scrollTo(i < 0 ? 0 : d(i, f), 0);
            if (z) {
                h(iRound);
            }
        }
    }

    public void addTab(@NonNull Tab tab) {
        addTab(tab, this.f3264a.isEmpty());
    }

    public void addTab(@NonNull Tab tab, int i) {
        addTab(tab, i, this.f3264a.isEmpty());
    }

    public void addTab(@NonNull Tab tab, boolean z) {
        addTab(tab, this.f3264a.size(), z);
    }

    public void addTab(@NonNull Tab tab, int i, boolean z) {
        if (tab.parent != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        tab.e = i;
        ArrayList arrayList = this.f3264a;
        arrayList.add(i, tab);
        int size = arrayList.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            ((Tab) arrayList.get(i2)).e = i2;
        }
        TabView tabView = tab.view;
        tabView.setSelected(false);
        tabView.setActivated(false);
        int position = tab.getPosition();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.z == 1 && this.w == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.c.addView(tabView, position, layoutParams);
        if (z) {
            tab.select();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.G;
        if (baseOnTabSelectedListener2 != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener2);
        }
        this.G = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            addOnTabSelectedListener(baseOnTabSelectedListener);
        }
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        addOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        ArrayList arrayList = this.H;
        if (arrayList.contains(baseOnTabSelectedListener)) {
            return;
        }
        arrayList.add(baseOnTabSelectedListener);
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        removeOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    @Deprecated
    public void removeOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        this.H.remove(baseOnTabSelectedListener);
    }

    public void clearOnTabSelectedListeners() {
        this.H.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public Tab newTab() {
        Tab tabCreateTabFromPool = createTabFromPool();
        tabCreateTabFromPool.parent = this;
        Pools.SimplePool simplePool = this.Q;
        TabView tabView = simplePool != null ? (TabView) simplePool.acquire() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        if (tabCreateTabFromPool != tabView.f3272a) {
            tabView.f3272a = tabCreateTabFromPool;
            tabView.e();
        }
        tabView.setFocusable(true);
        int i = this.s;
        if (i == -1) {
            int i2 = this.z;
            i = (i2 == 0 || i2 == 2) ? this.u : 0;
        }
        tabView.setMinimumWidth(i);
        if (TextUtils.isEmpty(tabCreateTabFromPool.d)) {
            tabView.setContentDescription(tabCreateTabFromPool.c);
        } else {
            tabView.setContentDescription(tabCreateTabFromPool.d);
        }
        tabCreateTabFromPool.view = tabView;
        int i3 = tabCreateTabFromPool.h;
        if (i3 != -1) {
            tabView.setId(i3);
        }
        return tabCreateTabFromPool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Tab createTabFromPool() {
        Tab tab = (Tab) S.acquire();
        return tab == null ? new Tab() : tab;
    }

    public boolean releaseFromTabPool(Tab tab) {
        return S.release(tab);
    }

    public int getTabCount() {
        return this.f3264a.size();
    }

    @Nullable
    public Tab getTabAt(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return (Tab) this.f3264a.get(i);
    }

    public int getSelectedTabPosition() {
        Tab tab = this.f3265b;
        if (tab != null) {
            return tab.getPosition();
        }
        return -1;
    }

    public void removeTab(@NonNull Tab tab) {
        if (tab.parent != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i) {
        Tab tab = this.f3265b;
        int position = tab != null ? tab.getPosition() : 0;
        f(i);
        ArrayList arrayList = this.f3264a;
        Tab tab2 = (Tab) arrayList.remove(i);
        if (tab2 != null) {
            tab2.parent = null;
            tab2.view = null;
            tab2.f3267a = null;
            tab2.f3268b = null;
            tab2.h = -1;
            tab2.c = null;
            tab2.d = null;
            tab2.e = -1;
            tab2.f = null;
            releaseFromTabPool(tab2);
        }
        int size = arrayList.size();
        for (int i2 = i; i2 < size; i2++) {
            ((Tab) arrayList.get(i2)).e = i2;
        }
        if (position == i) {
            selectTab(arrayList.isEmpty() ? null : (Tab) arrayList.get(Math.max(0, i - 1)));
        }
    }

    public void removeAllTabs() {
        for (int childCount = this.c.getChildCount() - 1; childCount >= 0; childCount--) {
            f(childCount);
        }
        Iterator it = this.f3264a.iterator();
        while (it.hasNext()) {
            Tab tab = (Tab) it.next();
            it.remove();
            tab.parent = null;
            tab.view = null;
            tab.f3267a = null;
            tab.f3268b = null;
            tab.h = -1;
            tab.c = null;
            tab.d = null;
            tab.e = -1;
            tab.f = null;
            releaseFromTabPool(tab);
        }
        this.f3265b = null;
    }

    public void setTabMode(int i) {
        if (i != this.z) {
            this.z = i;
            c();
        }
    }

    public int getTabMode() {
        return this.z;
    }

    public void setTabGravity(int i) {
        if (this.w != i) {
            this.w = i;
            c();
        }
    }

    public int getTabGravity() {
        return this.w;
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.y != i) {
            this.y = i;
            ViewCompat.postInvalidateOnAnimation(this.c);
        }
    }

    public int getTabIndicatorGravity() {
        return this.y;
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.D = i;
        if (i == 0) {
            this.F = new com.google.android.material.tabs.c();
            return;
        }
        if (i == 1) {
            this.F = new com.google.android.material.tabs.a();
        } else {
            if (i == 2) {
                this.F = new com.google.android.material.tabs.b();
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public int getTabIndicatorAnimationMode() {
        return this.D;
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.B = z;
        int i = c.f;
        c cVar = this.c;
        cVar.a();
        ViewCompat.postInvalidateOnAnimation(cVar);
    }

    public boolean isTabIndicatorFullWidth() {
        return this.B;
    }

    public void setInlineLabel(boolean z) {
        if (this.A == z) {
            return;
        }
        this.A = z;
        int i = 0;
        while (true) {
            c cVar = this.c;
            if (i < cVar.getChildCount()) {
                View childAt = cVar.getChildAt(i);
                if (childAt instanceof TabView) {
                    TabView tabView = (TabView) childAt;
                    tabView.setOrientation(!TabLayout.this.A ? 1 : 0);
                    TextView textView = tabView.f3274g;
                    if (textView != null || tabView.h != null) {
                        tabView.g(textView, tabView.h);
                    } else {
                        tabView.g(tabView.f3273b, tabView.c);
                    }
                }
                i++;
            } else {
                c();
                return;
            }
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    public boolean isInlineLabel() {
        return this.A;
    }

    public void setUnboundedRipple(boolean z) {
        if (this.E == z) {
            return;
        }
        this.E = z;
        int i = 0;
        while (true) {
            c cVar = this.c;
            if (i >= cVar.getChildCount()) {
                return;
            }
            View childAt = cVar.getChildAt(i);
            if (childAt instanceof TabView) {
                Context context = getContext();
                int i2 = TabView.l;
                ((TabView) childAt).f(context);
            }
            i++;
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public boolean hasUnboundedRipple() {
        return this.E;
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.i != colorStateList) {
            this.i = colorStateList;
            ArrayList arrayList = this.f3264a;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Tab) arrayList.get(i)).a();
            }
        }
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.i;
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            ArrayList arrayList = this.f3264a;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Tab) arrayList.get(i)).a();
            }
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.j;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.k;
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.k == colorStateList) {
            return;
        }
        this.k = colorStateList;
        int i = 0;
        while (true) {
            c cVar = this.c;
            if (i >= cVar.getChildCount()) {
                return;
            }
            View childAt = cVar.getChildAt(i);
            if (childAt instanceof TabView) {
                Context context = getContext();
                int i2 = TabView.l;
                ((TabView) childAt).f(context);
            }
            i++;
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.l;
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.l != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.l = drawable;
            int intrinsicHeight = this.C;
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable.getIntrinsicHeight();
            }
            this.c.b(intrinsicHeight);
        }
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        i(viewPager, z, false);
    }

    public final void i(ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.K;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.N;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
            }
            a aVar = this.O;
            if (aVar != null) {
                this.K.removeOnAdapterChangeListener(aVar);
            }
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.I;
        if (baseOnTabSelectedListener != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener);
            this.I = null;
        }
        if (viewPager != null) {
            this.K = viewPager;
            if (this.N == null) {
                this.N = new TabLayoutOnPageChangeListener(this);
            }
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener2 = this.N;
            tabLayoutOnPageChangeListener2.c = 0;
            tabLayoutOnPageChangeListener2.f3271b = 0;
            viewPager.addOnPageChangeListener(tabLayoutOnPageChangeListener2);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.I = viewPagerOnTabSelectedListener;
            addOnTabSelectedListener((BaseOnTabSelectedListener) viewPagerOnTabSelectedListener);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                g(adapter, z);
            }
            if (this.O == null) {
                this.O = new a();
            }
            a aVar2 = this.O;
            aVar2.f3276a = z;
            viewPager.addOnAdapterChangeListener(aVar2);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.K = null;
            g(null, false);
        }
        this.P = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        g(pagerAdapter, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        if (this.K == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                i((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.P) {
            setupWithViewPager(null);
            this.P = false;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return Math.max(0, ((this.c.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0;
    }

    public final void g(PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.L;
        if (pagerAdapter2 != null && (dataSetObserver = this.M) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.L = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.M == null) {
                this.M = new b();
            }
            pagerAdapter.registerDataSetObserver(this.M);
        }
        e();
    }

    public final void e() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.L;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                addTab(newTab().setText(this.L.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.K;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public final void a(View view) {
        if (view instanceof TabItem) {
            TabItem tabItem = (TabItem) view;
            Tab tabNewTab = newTab();
            CharSequence charSequence = tabItem.text;
            if (charSequence != null) {
                tabNewTab.setText(charSequence);
            }
            Drawable drawable = tabItem.icon;
            if (drawable != null) {
                tabNewTab.setIcon(drawable);
            }
            int i = tabItem.customLayout;
            if (i != 0) {
                tabNewTab.setCustomView(i);
            }
            if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
                tabNewTab.setContentDescription(tabItem.getContentDescription());
            }
            addTab(tabNewTab);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        TabView tabView;
        Drawable drawable;
        int i = 0;
        while (true) {
            c cVar = this.c;
            if (i < cVar.getChildCount()) {
                View childAt = cVar.getChildAt(i);
                if ((childAt instanceof TabView) && (drawable = (tabView = (TabView) childAt).i) != null) {
                    drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                    tabView.i.draw(canvas);
                }
                i++;
            } else {
                super.onDraw(canvas);
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            android.content.Context r0 = r7.getContext()
            java.util.ArrayList r1 = r7.f3264a
            int r2 = r1.size()
            r3 = 0
            r4 = 0
        Lc:
            if (r4 >= r2) goto L30
            java.lang.Object r5 = r1.get(r4)
            com.google.android.material.tabs.TabLayout$Tab r5 = (com.google.android.material.tabs.TabLayout.Tab) r5
            if (r5 == 0) goto L2d
            android.graphics.drawable.Drawable r6 = r5.getIcon()
            if (r6 == 0) goto L2d
            java.lang.CharSequence r5 = r5.getText()
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 != 0) goto L2d
            boolean r1 = r7.A
            if (r1 != 0) goto L30
            r1 = 72
            goto L32
        L2d:
            int r4 = r4 + 1
            goto Lc
        L30:
            r1 = 48
        L32:
            float r0 = com.google.android.material.internal.ViewUtils.dpToPx(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r9)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = 1
            if (r1 == r2) goto L57
            if (r1 == 0) goto L48
            goto L6a
        L48:
            int r9 = r7.getPaddingTop()
            int r9 = r9 + r0
            int r0 = r7.getPaddingBottom()
            int r0 = r0 + r9
            int r9 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            goto L6a
        L57:
            int r1 = r7.getChildCount()
            if (r1 != r5) goto L6a
            int r1 = android.view.View.MeasureSpec.getSize(r9)
            if (r1 < r0) goto L6a
            android.view.View r1 = r7.getChildAt(r3)
            r1.setMinimumHeight(r0)
        L6a:
            int r0 = android.view.View.MeasureSpec.getSize(r8)
            int r1 = android.view.View.MeasureSpec.getMode(r8)
            if (r1 == 0) goto L88
            int r1 = r7.t
            if (r1 <= 0) goto L79
            goto L86
        L79:
            float r0 = (float) r0
            android.content.Context r1 = r7.getContext()
            r2 = 56
            float r1 = com.google.android.material.internal.ViewUtils.dpToPx(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L86:
            r7.r = r1
        L88:
            super.onMeasure(r8, r9)
            int r8 = r7.getChildCount()
            if (r8 != r5) goto Ld3
            android.view.View r8 = r7.getChildAt(r3)
            int r0 = r7.z
            if (r0 == 0) goto Lab
            if (r0 == r5) goto L9f
            r1 = 2
            if (r0 == r1) goto Lab
            goto Ld3
        L9f:
            int r0 = r8.getMeasuredWidth()
            int r1 = r7.getMeasuredWidth()
            if (r0 == r1) goto Laa
            goto Lb5
        Laa:
            return
        Lab:
            int r0 = r8.getMeasuredWidth()
            int r1 = r7.getMeasuredWidth()
            if (r0 >= r1) goto Ld3
        Lb5:
            int r0 = r7.getPaddingTop()
            int r1 = r7.getPaddingBottom()
            int r1 = r1 + r0
            android.view.ViewGroup$LayoutParams r0 = r8.getLayoutParams()
            int r0 = r0.height
            int r9 = android.view.ViewGroup.getChildMeasureSpec(r9, r1, r0)
            int r0 = r7.getMeasuredWidth()
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            r8.measure(r0, r9)
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    public final void f(int i) {
        c cVar = this.c;
        TabView tabView = (TabView) cVar.getChildAt(i);
        cVar.removeViewAt(i);
        if (tabView != null) {
            if (tabView.f3272a != null) {
                tabView.f3272a = null;
                tabView.e();
            }
            tabView.setSelected(false);
            this.Q.release(tabView);
        }
        requestLayout();
    }

    public final void b(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && ViewCompat.isLaidOut(this)) {
            c cVar = this.c;
            int childCount = cVar.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (cVar.getChildAt(i2).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iD = d(i, 0.0f);
            int i3 = this.x;
            if (scrollX != iD) {
                if (this.J == null) {
                    ValueAnimator valueAnimator = new ValueAnimator();
                    this.J = valueAnimator;
                    valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                    this.J.setDuration(i3);
                    this.J.addUpdateListener(new d(this));
                }
                this.J.setIntValues(scrollX, iD);
                this.J.start();
            }
            ValueAnimator valueAnimator2 = cVar.f3279a;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                cVar.f3279a.cancel();
            }
            cVar.d(i, i3, true);
            return;
        }
        setScrollPosition(i, 0.0f, true);
    }

    public final void h(int i) {
        c cVar = this.c;
        int childCount = cVar.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = cVar.getChildAt(i2);
                boolean z = true;
                childAt.setSelected(i2 == i);
                if (i2 != i) {
                    z = false;
                }
                childAt.setActivated(z);
                i2++;
            }
        }
    }

    public void selectTab(@Nullable Tab tab) {
        selectTab(tab, true);
    }

    public void selectTab(@Nullable Tab tab, boolean z) {
        Tab tab2 = this.f3265b;
        ArrayList arrayList = this.H;
        if (tab2 == tab) {
            if (tab2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((BaseOnTabSelectedListener) arrayList.get(size)).onTabReselected(tab);
                }
                b(tab.getPosition());
                return;
            }
            return;
        }
        int position = tab != null ? tab.getPosition() : -1;
        if (z) {
            if ((tab2 == null || tab2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                b(position);
            }
            if (position != -1) {
                h(position);
            }
        }
        this.f3265b = tab;
        if (tab2 != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((BaseOnTabSelectedListener) arrayList.get(size2)).onTabUnselected(tab2);
            }
        }
        if (tab != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((BaseOnTabSelectedListener) arrayList.get(size3)).onTabSelected(tab);
            }
        }
    }

    public final int d(int i, float f) {
        c cVar;
        View childAt;
        int i2 = this.z;
        if ((i2 != 0 && i2 != 2) || (childAt = (cVar = this.c).getChildAt(i)) == null) {
            return 0;
        }
        int i3 = i + 1;
        View childAt2 = i3 < cVar.getChildCount() ? cVar.getChildAt(i3) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i4 : left - i4;
    }

    public final void c() {
        int i = this.z;
        int iMax = (i == 0 || i == 2) ? Math.max(0, this.v - this.d) : 0;
        c cVar = this.c;
        ViewCompat.setPaddingRelative(cVar, iMax, 0, 0, 0);
        int i2 = this.z;
        if (i2 == 0) {
            int i3 = this.w;
            if (i3 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i3 == 1) {
                cVar.setGravity(1);
            } else if (i3 == 2) {
            }
            cVar.setGravity(GravityCompat.START);
        } else if (i2 == 1 || i2 == 2) {
            if (this.w == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            cVar.setGravity(1);
        }
        j(true);
    }

    public final void j(boolean z) {
        int i = 0;
        while (true) {
            c cVar = this.c;
            if (i >= cVar.getChildCount()) {
                return;
            }
            View childAt = cVar.getChildAt(i);
            int i2 = this.s;
            if (i2 == -1) {
                int i3 = this.z;
                i2 = (i3 == 0 || i3 == 2) ? this.u : 0;
            }
            childAt.setMinimumWidth(i2);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.z == 1 && this.w == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z) {
                childAt.requestLayout();
            }
            i++;
        }
    }

    public static class Tab {
        public static final int INVALID_POSITION = -1;

        /* renamed from: a, reason: collision with root package name */
        public Object f3267a;

        /* renamed from: b, reason: collision with root package name */
        public Drawable f3268b;
        public CharSequence c;
        public CharSequence d;
        public View f;

        @Nullable
        public TabLayout parent;

        @NonNull
        public TabView view;
        public int e = -1;

        /* renamed from: g, reason: collision with root package name */
        public int f3269g = 1;
        public int h = -1;

        @Nullable
        public Object getTag() {
            return this.f3267a;
        }

        @NonNull
        public Tab setTag(@Nullable Object obj) {
            this.f3267a = obj;
            return this;
        }

        @NonNull
        public Tab setId(int i) {
            this.h = i;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.setId(i);
            }
            return this;
        }

        public int getId() {
            return this.h;
        }

        @Nullable
        public View getCustomView() {
            return this.f;
        }

        @NonNull
        public Tab setCustomView(@Nullable View view) {
            this.f = view;
            a();
            return this;
        }

        @NonNull
        public Tab setCustomView(@LayoutRes int i) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i, (ViewGroup) this.view, false));
        }

        @Nullable
        public Drawable getIcon() {
            return this.f3268b;
        }

        public int getPosition() {
            return this.e;
        }

        @Nullable
        public CharSequence getText() {
            return this.c;
        }

        @NonNull
        public Tab setIcon(@Nullable Drawable drawable) {
            this.f3268b = drawable;
            TabLayout tabLayout = this.parent;
            if (tabLayout.w == 1 || tabLayout.z == 2) {
                tabLayout.j(true);
            }
            a();
            if (BadgeUtils.USE_COMPAT_PARENT) {
                TabView tabView = this.view;
                int i = TabView.l;
                if (tabView.a() && this.view.e.isVisible()) {
                    this.view.invalidate();
                }
            }
            return this;
        }

        @NonNull
        public Tab setIcon(@DrawableRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return setIcon(AppCompatResources.getDrawable(tabLayout.getContext(), i));
        }

        @NonNull
        public Tab setText(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.d) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.c = charSequence;
            a();
            return this;
        }

        @NonNull
        public Tab setText(@StringRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return setText(tabLayout.getResources().getText(i));
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            TabView tabView = this.view;
            if (tabView.e == null) {
                tabView.e = BadgeDrawable.create(tabView.getContext());
            }
            tabView.c();
            BadgeDrawable badgeDrawable = tabView.e;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        public void removeBadge() {
            TabView tabView = this.view;
            if (tabView.d != null) {
                tabView.b();
            }
            tabView.e = null;
        }

        @Nullable
        public BadgeDrawable getBadge() {
            return this.view.e;
        }

        @NonNull
        public Tab setTabLabelVisibility(@LabelVisibility int i) {
            this.f3269g = i;
            TabLayout tabLayout = this.parent;
            if (tabLayout.w == 1 || tabLayout.z == 2) {
                tabLayout.j(true);
            }
            a();
            if (BadgeUtils.USE_COMPAT_PARENT) {
                TabView tabView = this.view;
                int i2 = TabView.l;
                if (tabView.a() && this.view.e.isVisible()) {
                    this.view.invalidate();
                }
            }
            return this;
        }

        @LabelVisibility
        public int getTabLabelVisibility() {
            return this.f3269g;
        }

        public void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.selectTab(this);
        }

        public boolean isSelected() {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            return selectedTabPosition != -1 && selectedTabPosition == this.e;
        }

        @NonNull
        public Tab setContentDescription(@StringRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return setContentDescription(tabLayout.getResources().getText(i));
        }

        @NonNull
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.d = charSequence;
            a();
            return this;
        }

        @Nullable
        public CharSequence getContentDescription() {
            TabView tabView = this.view;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        public final void a() {
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.e();
            }
        }
    }

    public final class TabView extends LinearLayout {
        public static final /* synthetic */ int l = 0;

        /* renamed from: a, reason: collision with root package name */
        public Tab f3272a;

        /* renamed from: b, reason: collision with root package name */
        public TextView f3273b;
        public ImageView c;
        public View d;
        public BadgeDrawable e;
        public View f;

        /* renamed from: g, reason: collision with root package name */
        public TextView f3274g;
        public ImageView h;
        public Drawable i;
        public int j;

        public TabView(@NonNull Context context) {
            super(context);
            this.j = 2;
            f(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.d, TabLayout.this.e, TabLayout.this.f, TabLayout.this.f3266g);
            setGravity(17);
            setOrientation(!TabLayout.this.A ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [android.graphics.drawable.RippleDrawable] */
        public final void f(Context context) {
            TabLayout tabLayout = TabLayout.this;
            int i = tabLayout.q;
            if (i != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i);
                this.i = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.i.setState(getDrawableState());
                }
            } else {
                this.i = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (tabLayout.k != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateListConvertToRippleDrawableColor = RippleUtils.convertToRippleDrawableColor(tabLayout.k);
                boolean z = tabLayout.E;
                if (z) {
                    gradientDrawable = null;
                }
                gradientDrawable = new RippleDrawable(colorStateListConvertToRippleDrawableColor, gradientDrawable, z ? null : gradientDrawable2);
            }
            ViewCompat.setBackground(this, gradientDrawable);
            tabLayout.invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.i;
            if ((drawable == null || !drawable.isStateful()) ? false : this.i.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f3272a == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f3272a.select();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.f3273b;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.c;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f;
            if (view != null) {
                view.setSelected(z);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.e;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.e.getContentDescription()));
            }
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f3272a.getPosition(), 1, false, isSelected()));
            if (isSelected()) {
                accessibilityNodeInfoCompatWrap.setClickable(false);
                accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            TabLayout tabLayout = TabLayout.this;
            int i3 = tabLayout.r;
            if (i3 > 0 && (mode == 0 || size > i3)) {
                i = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f3273b != null) {
                float f = tabLayout.o;
                int i4 = this.j;
                ImageView imageView = this.c;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f3273b;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = tabLayout.p;
                    }
                } else {
                    i4 = 1;
                }
                float textSize = this.f3273b.getTextSize();
                int lineCount = this.f3273b.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f3273b);
                if (f != textSize || (maxLines >= 0 && i4 != maxLines)) {
                    if (tabLayout.z == 1 && f > textSize && lineCount == 1) {
                        Layout layout = this.f3273b.getLayout();
                        if (layout == null) {
                            return;
                        }
                        if ((f / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                            return;
                        }
                    }
                    this.f3273b.setTextSize(0, f);
                    this.f3273b.setMaxLines(i4);
                    super.onMeasure(i, i2);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void e() {
            FrameLayout frameLayout;
            FrameLayout frameLayout2;
            Tab tab = this.f3272a;
            View customView = tab != null ? tab.getCustomView() : null;
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.f = customView;
                TextView textView = this.f3273b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.c.setImageDrawable(null);
                }
                TextView textView2 = (TextView) customView.findViewById(android.R.id.text1);
                this.f3274g = textView2;
                if (textView2 != null) {
                    this.j = TextViewCompat.getMaxLines(textView2);
                }
                this.h = (ImageView) customView.findViewById(android.R.id.icon);
            } else {
                View view = this.f;
                if (view != null) {
                    removeView(view);
                    this.f = null;
                }
                this.f3274g = null;
                this.h = null;
            }
            boolean z = false;
            if (this.f == null) {
                if (this.c == null) {
                    if (BadgeUtils.USE_COMPAT_PARENT) {
                        frameLayout2 = new FrameLayout(getContext());
                        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                        addView(frameLayout2, 0);
                    } else {
                        frameLayout2 = this;
                    }
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) frameLayout2, false);
                    this.c = imageView2;
                    frameLayout2.addView(imageView2, 0);
                }
                if (this.f3273b == null) {
                    if (BadgeUtils.USE_COMPAT_PARENT) {
                        frameLayout = new FrameLayout(getContext());
                        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                        addView(frameLayout);
                    } else {
                        frameLayout = this;
                    }
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) frameLayout, false);
                    this.f3273b = textView3;
                    frameLayout.addView(textView3);
                    this.j = TextViewCompat.getMaxLines(this.f3273b);
                }
                TextView textView4 = this.f3273b;
                TabLayout tabLayout = TabLayout.this;
                TextViewCompat.setTextAppearance(textView4, tabLayout.h);
                ColorStateList colorStateList = tabLayout.i;
                if (colorStateList != null) {
                    this.f3273b.setTextColor(colorStateList);
                }
                g(this.f3273b, this.c);
                c();
                ImageView imageView3 = this.c;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new g(this, imageView3));
                }
                TextView textView5 = this.f3273b;
                if (textView5 != null) {
                    textView5.addOnLayoutChangeListener(new g(this, textView5));
                }
            } else {
                TextView textView6 = this.f3274g;
                if (textView6 != null || this.h != null) {
                    g(textView6, this.h);
                }
            }
            if (tab != null && !TextUtils.isEmpty(tab.d)) {
                setContentDescription(tab.d);
            }
            if (tab != null && tab.isSelected()) {
                z = true;
            }
            setSelected(z);
        }

        public final void c() {
            Tab tab;
            Tab tab2;
            if (a()) {
                if (this.f != null) {
                    b();
                    return;
                }
                FrameLayout frameLayout = null;
                if (this.c != null && (tab2 = this.f3272a) != null && tab2.getIcon() != null) {
                    View view = this.d;
                    ImageView imageView = this.c;
                    if (view == imageView) {
                        d(imageView);
                        return;
                    }
                    b();
                    ImageView imageView2 = this.c;
                    if (a() && imageView2 != null) {
                        setClipChildren(false);
                        setClipToPadding(false);
                        ViewGroup viewGroup = (ViewGroup) getParent();
                        if (viewGroup != null) {
                            viewGroup.setClipChildren(false);
                            viewGroup.setClipToPadding(false);
                        }
                        BadgeDrawable badgeDrawable = this.e;
                        if ((imageView2 == this.c || imageView2 == this.f3273b) && BadgeUtils.USE_COMPAT_PARENT) {
                            frameLayout = (FrameLayout) imageView2.getParent();
                        }
                        BadgeUtils.attachBadgeDrawable(badgeDrawable, imageView2, frameLayout);
                        this.d = imageView2;
                        return;
                    }
                    return;
                }
                if (this.f3273b == null || (tab = this.f3272a) == null || tab.getTabLabelVisibility() != 1) {
                    b();
                    return;
                }
                View view2 = this.d;
                TextView textView = this.f3273b;
                if (view2 == textView) {
                    d(textView);
                    return;
                }
                b();
                TextView textView2 = this.f3273b;
                if (a() && textView2 != null) {
                    setClipChildren(false);
                    setClipToPadding(false);
                    ViewGroup viewGroup2 = (ViewGroup) getParent();
                    if (viewGroup2 != null) {
                        viewGroup2.setClipChildren(false);
                        viewGroup2.setClipToPadding(false);
                    }
                    BadgeDrawable badgeDrawable2 = this.e;
                    if ((textView2 == this.c || textView2 == this.f3273b) && BadgeUtils.USE_COMPAT_PARENT) {
                        frameLayout = (FrameLayout) textView2.getParent();
                    }
                    BadgeUtils.attachBadgeDrawable(badgeDrawable2, textView2, frameLayout);
                    this.d = textView2;
                }
            }
        }

        public final void b() {
            if (a()) {
                setClipChildren(true);
                setClipToPadding(true);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(true);
                    viewGroup.setClipToPadding(true);
                }
                View view = this.d;
                if (view != null) {
                    BadgeUtils.detachBadgeDrawable(this.e, view);
                    this.d = null;
                }
            }
        }

        public final void g(TextView textView, ImageView imageView) {
            Tab tab = this.f3272a;
            Drawable drawableMutate = (tab == null || tab.getIcon() == null) ? null : DrawableCompat.wrap(this.f3272a.getIcon()).mutate();
            TabLayout tabLayout = TabLayout.this;
            if (drawableMutate != null) {
                DrawableCompat.setTintList(drawableMutate, tabLayout.j);
                PorterDuff.Mode mode = tabLayout.n;
                if (mode != null) {
                    DrawableCompat.setTintMode(drawableMutate, mode);
                }
            }
            Tab tab2 = this.f3272a;
            CharSequence text = tab2 != null ? tab2.getText() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean zIsEmpty = TextUtils.isEmpty(text);
            if (textView != null) {
                if (!zIsEmpty) {
                    textView.setText(text);
                    if (this.f3272a.f3269g == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iDpToPx = (zIsEmpty || imageView.getVisibility() != 0) ? 0 : (int) ViewUtils.dpToPx(getContext(), 8);
                if (tabLayout.A) {
                    if (iDpToPx != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, iDpToPx);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iDpToPx != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iDpToPx;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.f3272a;
            CharSequence charSequence = tab3 != null ? tab3.d : null;
            if (Build.VERSION.SDK_INT > 23) {
                if (zIsEmpty) {
                    text = charSequence;
                }
                TooltipCompat.setTooltipText(this, text);
            }
        }

        public final void d(View view) {
            if (a() && view == this.d) {
                BadgeDrawable badgeDrawable = this.e;
                FrameLayout frameLayout = null;
                if ((view == this.c || view == this.f3273b) && BadgeUtils.USE_COMPAT_PARENT) {
                    frameLayout = (FrameLayout) view.getParent();
                }
                BadgeUtils.setBadgeDrawableBounds(badgeDrawable, view, frameLayout);
            }
        }

        public final boolean a() {
            return this.e != null;
        }

        @Nullable
        public Tab getTab() {
            return this.f3272a;
        }
    }

    public class c extends LinearLayout {
        public static final /* synthetic */ int f = 0;

        /* renamed from: a, reason: collision with root package name */
        public ValueAnimator f3279a;

        /* renamed from: b, reason: collision with root package name */
        public int f3280b;
        public float c;
        public int d;

        public c(Context context) {
            super(context);
            this.f3280b = -1;
            this.d = -1;
            setWillNotDraw(false);
        }

        public final void b(int i) {
            TabLayout tabLayout = TabLayout.this;
            Rect bounds = tabLayout.l.getBounds();
            tabLayout.l.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.d == i) {
                return;
            }
            requestLayout();
            this.d = i;
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.w == 1 || tabLayout.z == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    tabLayout.w = 0;
                    tabLayout.j(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f3279a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                d(this.f3280b, -1, false);
            } else {
                a();
            }
        }

        public final void a() {
            View childAt = getChildAt(this.f3280b);
            TabLayout tabLayout = TabLayout.this;
            com.google.android.material.tabs.c cVar = tabLayout.F;
            Drawable drawable = tabLayout.l;
            cVar.getClass();
            RectF rectFA = com.google.android.material.tabs.c.a(tabLayout, childAt);
            drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
        }

        public final void c(View view, View view2, float f2) {
            TabLayout tabLayout = TabLayout.this;
            if (view != null && view.getWidth() > 0) {
                tabLayout.F.b(tabLayout, view, view2, f2, tabLayout.l);
            } else {
                Drawable drawable = tabLayout.l;
                drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.l.getBounds().bottom);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public final void d(int i, int i2, boolean z) {
            View childAt = getChildAt(this.f3280b);
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                a();
                return;
            }
            e eVar = new e(this, childAt, childAt2);
            if (z) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f3279a = valueAnimator;
                valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(eVar);
                valueAnimator.addListener(new f(this, i));
                valueAnimator.start();
                return;
            }
            this.f3279a.removeAllUpdateListeners();
            this.f3279a.addUpdateListener(eVar);
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int height;
            TabLayout tabLayout = TabLayout.this;
            int iHeight = tabLayout.l.getBounds().height();
            if (iHeight < 0) {
                iHeight = tabLayout.l.getIntrinsicHeight();
            }
            int i = tabLayout.y;
            if (i == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i != 1) {
                height = 0;
                if (i != 2) {
                    iHeight = i != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            }
            if (tabLayout.l.getBounds().width() > 0) {
                Rect bounds = tabLayout.l.getBounds();
                tabLayout.l.setBounds(bounds.left, height, bounds.right, iHeight);
                Drawable drawableWrap = tabLayout.l;
                if (tabLayout.m != 0) {
                    drawableWrap = DrawableCompat.wrap(drawableWrap);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawableWrap.setColorFilter(tabLayout.m, PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.setTint(drawableWrap, tabLayout.m);
                    }
                } else if (Build.VERSION.SDK_INT == 21) {
                    drawableWrap.setColorFilter(null);
                } else {
                    DrawableCompat.setTintList(drawableWrap, null);
                }
                drawableWrap.draw(canvas);
            }
            super.draw(canvas);
        }
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i}));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f3270a;

        /* renamed from: b, reason: collision with root package name */
        public int f3271b;
        public int c;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.f3270a = new WeakReference(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f3271b = this.c;
            this.c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = (TabLayout) this.f3270a.get();
            if (tabLayout != null) {
                int i3 = this.c;
                tabLayout.setScrollPosition(i, f, i3 != 2 || this.f3271b == 1, (i3 == 2 && this.f3271b == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = (TabLayout) this.f3270a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.c;
            tabLayout.selectTab(tabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.f3271b == 0));
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {

        /* renamed from: a, reason: collision with root package name */
        public final ViewPager f3275a;

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(Tab tab) {
        }

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.f3275a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull Tab tab) throws Resources.NotFoundException {
            this.f3275a.setCurrentItem(tab.getPosition());
        }
    }

    public class b extends DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.e();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.e();
        }
    }

    public class a implements ViewPager.OnAdapterChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3276a;

        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.K == viewPager) {
                tabLayout.g(pagerAdapter2, this.f3276a);
            }
        }
    }
}
