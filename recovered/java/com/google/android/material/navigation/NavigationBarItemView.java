package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {
    public static final int[] C = {R.attr.state_checked};
    public static final c D;
    public static final d E;
    public int A;
    public BadgeDrawable B;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3100a;

    /* renamed from: b, reason: collision with root package name */
    public int f3101b;
    public int c;
    public float d;
    public float e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public int f3102g;
    public boolean h;
    public final FrameLayout i;
    public final View j;
    public final ImageView k;
    public final ViewGroup l;
    public final TextView m;
    public final TextView n;
    public int o;
    public MenuItemImpl p;
    public ColorStateList q;
    public Drawable r;
    public Drawable s;
    public ValueAnimator t;
    public c u;
    public float v;
    public boolean w;
    public int x;
    public int y;
    public boolean z;

    @LayoutRes
    public abstract int getItemLayoutResId();

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c2) {
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public class a implements View.OnLayoutChangeListener {
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            BadgeDrawable badgeDrawable;
            NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
            ImageView imageView = navigationBarItemView.k;
            if (imageView.getVisibility() != 0 || (badgeDrawable = navigationBarItemView.B) == null) {
                return;
            }
            BadgeUtils.setBadgeDrawableBounds(badgeDrawable, imageView, BadgeUtils.USE_COMPAT_PARENT ? (FrameLayout) imageView.getParent() : null);
        }

        public a() {
        }
    }

    static {
        int i = 0;
        D = new c(i);
        E = new d(i);
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f3100a = false;
        this.o = -1;
        this.u = D;
        this.v = 0.0f;
        this.w = false;
        this.x = 0;
        this.y = 0;
        this.z = false;
        this.A = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.i = (FrameLayout) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_container);
        this.j = findViewById(com.google.android.material.R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_view);
        this.k = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(com.google.android.material.R.id.navigation_bar_item_labels_group);
        this.l = viewGroup;
        TextView textView = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_small_label_view);
        this.m = textView;
        TextView textView2 = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_large_label_view);
        this.n = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f3101b = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.c = viewGroup.getPaddingBottom();
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        a(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        ViewGroup viewGroup = this.l;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        int measuredWidth = viewGroup.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        BadgeDrawable badgeDrawable = this.B;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.B.getHorizontalOffset();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) b().getLayoutParams();
        return Math.max(Math.max(minimumWidth, layoutParams2.rightMargin) + this.k.getMeasuredWidth() + Math.max(minimumWidth, layoutParams2.leftMargin), measuredWidth);
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        ViewGroup viewGroup = this.l;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        BadgeDrawable badgeDrawable = this.B;
        int minimumHeight = badgeDrawable != null ? badgeDrawable.getMinimumHeight() / 2 : 0;
        return viewGroup.getMeasuredHeight() + this.k.getMeasuredWidth() + Math.max(minimumHeight, ((FrameLayout.LayoutParams) b().getLayoutParams()).topMargin) + minimumHeight + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i) {
        CharSequence title;
        this.p = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        if (!TextUtils.isEmpty(menuItemImpl.getTooltipText())) {
            title = menuItemImpl.getTooltipText();
        } else {
            title = menuItemImpl.getTitle();
        }
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.setTooltipText(this, title);
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.f3100a = true;
    }

    public final View b() {
        FrameLayout frameLayout = this.i;
        return frameLayout != null ? frameLayout : this.k;
    }

    public void setItemPosition(int i) {
        this.o = i;
    }

    public int getItemPosition() {
        return this.o;
    }

    public void setShifting(boolean z) {
        if (this.h != z) {
            this.h = z;
            MenuItemImpl menuItemImpl = this.p;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f3102g != i) {
            this.f3102g = i;
            if (this.z && i == 2) {
                this.u = E;
            } else {
                this.u = D;
            }
            f(getWidth());
            MenuItemImpl menuItemImpl = this.p;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.p;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(@Nullable CharSequence charSequence) {
        this.m.setText(charSequence);
        this.n.setText(charSequence);
        MenuItemImpl menuItemImpl = this.p;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.p;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.p.getTooltipText();
        }
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.setTooltipText(this, charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new b(i));
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f3104a;

        public b(int i) {
            this.f3104a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = NavigationBarItemView.C;
            NavigationBarItemView.this.f(this.f3104a);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        TextView textView = this.n;
        textView.setPivotX(textView.getWidth() / 2);
        textView.setPivotY(textView.getBaseline());
        TextView textView2 = this.m;
        textView2.setPivotX(textView2.getWidth() / 2);
        textView2.setPivotY(textView2.getBaseline());
        float f = z ? 1.0f : 0.0f;
        if (!this.w || !this.f3100a || !ViewCompat.isAttachedToWindow(this)) {
            View view = this.j;
            if (view != null) {
                this.u.updateForProgress(f, f, view);
            }
            this.v = f;
        } else {
            ValueAnimator valueAnimator = this.t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.t = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.v, f);
            this.t = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.navigation.a(this, f));
            this.t.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), com.google.android.material.R.attr.motionEasingStandard, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            this.t.setDuration(MotionUtils.resolveThemeDuration(getContext(), com.google.android.material.R.attr.motionDurationLong1, getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1)));
            this.t.start();
        }
        int i = this.f3102g;
        ViewGroup viewGroup = this.l;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    e(b(), this.f3101b, 49);
                    g(this.c, viewGroup);
                    textView.setVisibility(0);
                } else {
                    e(b(), this.f3101b, 17);
                    g(0, viewGroup);
                    textView.setVisibility(4);
                }
                textView2.setVisibility(4);
            } else if (i == 1) {
                g(this.c, viewGroup);
                if (z) {
                    e(b(), (int) (this.f3101b + this.d), 49);
                    d(textView, 1.0f, 1.0f, 0);
                    float f2 = this.e;
                    d(textView2, f2, f2, 4);
                } else {
                    e(b(), this.f3101b, 49);
                    float f3 = this.f;
                    d(textView, f3, f3, 4);
                    d(textView2, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                e(b(), this.f3101b, 17);
                textView.setVisibility(8);
                textView2.setVisibility(8);
            }
        } else if (this.h) {
            if (z) {
                e(b(), this.f3101b, 49);
                g(this.c, viewGroup);
                textView.setVisibility(0);
            } else {
                e(b(), this.f3101b, 17);
                g(0, viewGroup);
                textView.setVisibility(4);
            }
            textView2.setVisibility(4);
        } else {
            g(this.c, viewGroup);
            if (z) {
                e(b(), (int) (this.f3101b + this.d), 49);
                d(textView, 1.0f, 1.0f, 0);
                float f4 = this.e;
                d(textView2, f4, f4, 4);
            } else {
                e(b(), this.f3101b, 49);
                float f5 = this.f;
                d(textView, f5, f5, 4);
                d(textView2, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.B;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.p.getTitle();
            if (!TextUtils.isEmpty(this.p.getContentDescription())) {
                title = this.p.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.B.getContentDescription()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < iIndexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, i, 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(com.google.android.material.R.string.item_view_role_description));
    }

    public static void e(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    public static void d(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    public static void g(int i, View view) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.m.setEnabled(z);
        this.n.setEnabled(z);
        this.k.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.p;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.p.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, C);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.r) {
            return;
        }
        this.r = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.s = drawable;
            ColorStateList colorStateList = this.q;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.k.setImageDrawable(drawable);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.q = colorStateList;
        if (this.p == null || (drawable = this.s) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.s.invalidateSelf();
    }

    public void setIconSize(int i) {
        ImageView imageView = this.k;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        imageView.setLayoutParams(layoutParams);
    }

    public void setTextAppearanceActive(@StyleRes int i) throws Resources.NotFoundException {
        TextView textView = this.n;
        TextViewCompat.setTextAppearance(textView, i);
        int unscaledTextSize = MaterialResources.getUnscaledTextSize(textView.getContext(), i, 0);
        if (unscaledTextSize != 0) {
            textView.setTextSize(0, unscaledTextSize);
        }
        a(this.m.getTextSize(), textView.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i) throws Resources.NotFoundException {
        TextView textView = this.m;
        TextViewCompat.setTextAppearance(textView, i);
        int unscaledTextSize = MaterialResources.getUnscaledTextSize(textView.getContext(), i, 0);
        if (unscaledTextSize != 0) {
            textView.setTextSize(0, unscaledTextSize);
        }
        a(textView.getTextSize(), this.n.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.m.setTextColor(colorStateList);
            this.n.setTextColor(colorStateList);
        }
    }

    public final void a(float f, float f2) {
        this.d = f - f2;
        this.e = (f2 * 1.0f) / f;
        this.f = (f * 1.0f) / f2;
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        ViewCompat.setBackground(this, drawable);
    }

    public void setItemPaddingTop(int i) {
        if (this.f3101b != i) {
            this.f3101b = i;
            MenuItemImpl menuItemImpl = this.p;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setItemPaddingBottom(int i) {
        if (this.c != i) {
            this.c = i;
            MenuItemImpl menuItemImpl = this.p;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setActiveIndicatorEnabled(boolean z) {
        this.w = z;
        View view = this.j;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorWidth(int i) {
        this.x = i;
        f(getWidth());
    }

    public final void f(int i) {
        View view = this.j;
        if (view == null) {
            return;
        }
        int iMin = Math.min(this.x, i - (this.A * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (this.z && this.f3102g == 2) ? iMin : this.y;
        layoutParams.width = iMin;
        view.setLayoutParams(layoutParams);
    }

    public void setActiveIndicatorHeight(int i) {
        this.y = i;
        f(getWidth());
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i) {
        this.A = i;
        f(getWidth());
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.j;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.j;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
    }

    public void setActiveIndicatorResizeable(boolean z) {
        this.z = z;
    }

    public final void c(BadgeDrawable badgeDrawable) {
        BadgeDrawable badgeDrawable2 = this.B;
        if (badgeDrawable2 == badgeDrawable) {
            return;
        }
        boolean z = badgeDrawable2 != null;
        ImageView imageView = this.k;
        if (z && imageView != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            if (this.B != null) {
                setClipChildren(true);
                setClipToPadding(true);
                BadgeUtils.detachBadgeDrawable(this.B, imageView);
                this.B = null;
            }
        }
        this.B = badgeDrawable;
        if (imageView == null || badgeDrawable == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        BadgeUtils.attachBadgeDrawable(this.B, imageView, BadgeUtils.USE_COMPAT_PARENT ? (FrameLayout) imageView.getParent() : null);
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.B;
    }

    @DrawableRes
    public int getItemBackgroundResId() {
        return com.google.android.material.R.drawable.mtrl_navigation_bar_item_background;
    }

    @DimenRes
    public int getItemDefaultMarginResId() {
        return com.google.android.material.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    public static class c {
        public float calculateScaleY(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            return 1.0f;
        }

        private c() {
        }

        public /* synthetic */ c(int i) {
            this();
        }

        public float calculateAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            return AnimationUtils.lerp(0.0f, 1.0f, f2 == 0.0f ? 0.8f : 0.0f, f2 == 0.0f ? 1.0f : 0.2f, f);
        }

        public float calculateScaleX(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            return AnimationUtils.lerp(0.4f, 1.0f, f);
        }

        public void updateForProgress(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, @NonNull View view) {
            view.setScaleX(calculateScaleX(f, f2));
            view.setScaleY(calculateScaleY(f, f2));
            view.setAlpha(calculateAlpha(f, f2));
        }
    }

    public static class d extends c {
        private d() {
            super(0);
        }

        public /* synthetic */ d(int i) {
            this();
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.c
        public float calculateScaleY(float f, float f2) {
            return calculateScaleX(f, f2);
        }
    }
}
