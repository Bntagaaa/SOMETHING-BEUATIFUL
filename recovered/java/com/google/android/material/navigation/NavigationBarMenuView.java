package com.google.android.material.navigation;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.TextScale;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.HashSet;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    public static final int[] C = {R.attr.state_checked};
    public static final int[] D = {-16842910};
    public NavigationBarPresenter A;
    public MenuBuilder B;

    /* renamed from: a, reason: collision with root package name */
    public final AutoTransition f3106a;

    /* renamed from: b, reason: collision with root package name */
    public final View.OnClickListener f3107b;
    public final Pools.SynchronizedPool c;
    public final SparseArray d;
    public int e;
    public NavigationBarItemView[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f3108g;
    public int h;
    public ColorStateList i;
    public int j;
    public ColorStateList k;
    public final ColorStateList l;
    public int m;
    public int n;
    public Drawable o;
    public int p;
    public final SparseArray q;
    public int r;
    public int s;
    public boolean t;
    public int u;
    public int v;
    public int w;
    public ShapeAppearanceModel x;
    public boolean y;
    public ColorStateList z;

    @NonNull
    public abstract NavigationBarItemView createNavigationBarItemView(@NonNull Context context);

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    public boolean isShifting(int i, int i2) {
        return i == -1 ? i2 > 3 : i == 0;
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.c = new Pools.SynchronizedPool(5);
        this.d = new SparseArray(5);
        this.f3108g = 0;
        this.h = 0;
        this.q = new SparseArray(5);
        this.r = -1;
        this.s = -1;
        this.y = false;
        this.l = createDefaultColorStateList(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f3106a = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.f3106a = autoTransition;
            autoTransition.setOrdering(0);
            autoTransition.setDuration(MotionUtils.resolveThemeDuration(getContext(), com.google.android.material.R.attr.motionDurationLong1, getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1)));
            autoTransition.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), com.google.android.material.R.attr.motionEasingStandard, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            autoTransition.addTransition(new TextScale());
        }
        this.f3107b = new a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
            NavigationBarMenuView navigationBarMenuView = NavigationBarMenuView.this;
            if (navigationBarMenuView.B.performItemAction(itemData, navigationBarMenuView.A, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(@NonNull MenuBuilder menuBuilder) {
        this.B = menuBuilder;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.B.getVisibleItems().size(), false, 1));
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.i = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.i;
    }

    public void setItemIconSize(@Dimension int i) {
        this.j = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i);
            }
        }
    }

    @Dimension
    public int getItemIconSize() {
        return this.j;
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.k = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.k;
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) throws Resources.NotFoundException {
        this.m = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.m;
    }

    public void setItemTextAppearanceActive(@StyleRes int i) throws Resources.NotFoundException {
        this.n = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.n;
    }

    public void setItemBackgroundRes(int i) {
        this.p = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i);
            }
        }
    }

    @Px
    public int getItemPaddingTop() {
        return this.r;
    }

    public void setItemPaddingTop(@Px int i) {
        this.r = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i);
            }
        }
    }

    @Px
    public int getItemPaddingBottom() {
        return this.s;
    }

    public void setItemPaddingBottom(@Px int i) {
        this.s = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i);
            }
        }
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.t;
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.t = z;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z);
            }
        }
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.u;
    }

    public void setItemActiveIndicatorWidth(@Px int i) {
        this.u = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i);
            }
        }
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.v;
    }

    public void setItemActiveIndicatorHeight(@Px int i) {
        this.v = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i);
            }
        }
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.w;
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i) {
        this.w = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i);
            }
        }
    }

    @Nullable
    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        return this.x;
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.x = shapeAppearanceModel;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(a());
            }
        }
    }

    public boolean isItemActiveIndicatorResizeable() {
        return this.y;
    }

    public void setItemActiveIndicatorResizeable(boolean z) {
        this.y = z;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z);
            }
        }
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.z;
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.z = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(a());
            }
        }
    }

    public final MaterialShapeDrawable a() {
        if (this.x == null || this.z == null) {
            return null;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.x);
        materialShapeDrawable.setFillColor(this.z);
        return materialShapeDrawable;
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.p;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.o = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null && navigationBarItemViewArr.length > 0) {
            return navigationBarItemViewArr[0].getBackground();
        }
        return this.o;
    }

    public void setLabelVisibilityMode(int i) {
        this.e = i;
    }

    public int getLabelVisibilityMode() {
        return this.e;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i, @Nullable View.OnTouchListener onTouchListener) {
        SparseArray sparseArray = this.d;
        if (onTouchListener == null) {
            sparseArray.remove(i);
        } else {
            sparseArray.put(i, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    @Nullable
    public ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = D;
        return new ColorStateList(new int[][]{iArr, C, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.A = navigationBarPresenter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"ClickableViewAccessibility"})
    public void buildMenuView() throws Resources.NotFoundException {
        SparseArray sparseArray;
        BadgeDrawable badgeDrawable;
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        Pools.SynchronizedPool synchronizedPool = this.c;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    synchronizedPool.release(navigationBarItemView);
                    if (navigationBarItemView.B != null) {
                        ImageView imageView = navigationBarItemView.k;
                        if (imageView != null) {
                            navigationBarItemView.setClipChildren(true);
                            navigationBarItemView.setClipToPadding(true);
                            BadgeUtils.detachBadgeDrawable(navigationBarItemView.B, imageView);
                        }
                        navigationBarItemView.B = null;
                    }
                    navigationBarItemView.p = null;
                    navigationBarItemView.v = 0.0f;
                    navigationBarItemView.f3100a = false;
                }
            }
        }
        if (this.B.size() == 0) {
            this.f3108g = 0;
            this.h = 0;
            this.f = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.B.size(); i++) {
            hashSet.add(Integer.valueOf(this.B.getItem(i).getItemId()));
        }
        int i2 = 0;
        while (true) {
            sparseArray = this.q;
            if (i2 >= sparseArray.size()) {
                break;
            }
            int iKeyAt = sparseArray.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                sparseArray.delete(iKeyAt);
            }
            i2++;
        }
        this.f = new NavigationBarItemView[this.B.size()];
        boolean zIsShifting = isShifting(this.e, this.B.getVisibleItems().size());
        for (int i3 = 0; i3 < this.B.size(); i3++) {
            this.A.setUpdateSuspended(true);
            this.B.getItem(i3).setCheckable(true);
            this.A.setUpdateSuspended(false);
            NavigationBarItemView navigationBarItemViewCreateNavigationBarItemView = (NavigationBarItemView) synchronizedPool.acquire();
            if (navigationBarItemViewCreateNavigationBarItemView == null) {
                navigationBarItemViewCreateNavigationBarItemView = createNavigationBarItemView(getContext());
            }
            this.f[i3] = navigationBarItemViewCreateNavigationBarItemView;
            navigationBarItemViewCreateNavigationBarItemView.setIconTintList(this.i);
            navigationBarItemViewCreateNavigationBarItemView.setIconSize(this.j);
            navigationBarItemViewCreateNavigationBarItemView.setTextColor(this.l);
            navigationBarItemViewCreateNavigationBarItemView.setTextAppearanceInactive(this.m);
            navigationBarItemViewCreateNavigationBarItemView.setTextAppearanceActive(this.n);
            navigationBarItemViewCreateNavigationBarItemView.setTextColor(this.k);
            int i4 = this.r;
            if (i4 != -1) {
                navigationBarItemViewCreateNavigationBarItemView.setItemPaddingTop(i4);
            }
            int i5 = this.s;
            if (i5 != -1) {
                navigationBarItemViewCreateNavigationBarItemView.setItemPaddingBottom(i5);
            }
            navigationBarItemViewCreateNavigationBarItemView.setActiveIndicatorWidth(this.u);
            navigationBarItemViewCreateNavigationBarItemView.setActiveIndicatorHeight(this.v);
            navigationBarItemViewCreateNavigationBarItemView.setActiveIndicatorMarginHorizontal(this.w);
            navigationBarItemViewCreateNavigationBarItemView.setActiveIndicatorDrawable(a());
            navigationBarItemViewCreateNavigationBarItemView.setActiveIndicatorResizeable(this.y);
            navigationBarItemViewCreateNavigationBarItemView.setActiveIndicatorEnabled(this.t);
            Drawable drawable = this.o;
            if (drawable != null) {
                navigationBarItemViewCreateNavigationBarItemView.setItemBackground(drawable);
            } else {
                navigationBarItemViewCreateNavigationBarItemView.setItemBackground(this.p);
            }
            navigationBarItemViewCreateNavigationBarItemView.setShifting(zIsShifting);
            navigationBarItemViewCreateNavigationBarItemView.setLabelVisibilityMode(this.e);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.B.getItem(i3);
            navigationBarItemViewCreateNavigationBarItemView.initialize(menuItemImpl, 0);
            navigationBarItemViewCreateNavigationBarItemView.setItemPosition(i3);
            int itemId = menuItemImpl.getItemId();
            navigationBarItemViewCreateNavigationBarItemView.setOnTouchListener((View.OnTouchListener) this.d.get(itemId));
            navigationBarItemViewCreateNavigationBarItemView.setOnClickListener(this.f3107b);
            int i6 = this.f3108g;
            if (i6 != 0 && itemId == i6) {
                this.h = i3;
            }
            int id = navigationBarItemViewCreateNavigationBarItemView.getId();
            if (id != -1 && (badgeDrawable = (BadgeDrawable) sparseArray.get(id)) != null) {
                navigationBarItemViewCreateNavigationBarItemView.c(badgeDrawable);
            }
            addView(navigationBarItemViewCreateNavigationBarItemView);
        }
        int iMin = Math.min(this.B.size() - 1, this.h);
        this.h = iMin;
        this.B.getItem(iMin).setChecked(true);
    }

    public void updateMenuView() throws Resources.NotFoundException {
        AutoTransition autoTransition;
        MenuBuilder menuBuilder = this.B;
        if (menuBuilder == null || this.f == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f.length) {
            buildMenuView();
            return;
        }
        int i = this.f3108g;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.B.getItem(i2);
            if (item.isChecked()) {
                this.f3108g = item.getItemId();
                this.h = i2;
            }
        }
        if (i != this.f3108g && (autoTransition = this.f3106a) != null) {
            TransitionManager.beginDelayedTransition(this, autoTransition);
        }
        boolean zIsShifting = isShifting(this.e, this.B.getVisibleItems().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.A.setUpdateSuspended(true);
            this.f[i3].setLabelVisibilityMode(this.e);
            this.f[i3].setShifting(zIsShifting);
            this.f[i3].initialize((MenuItemImpl) this.B.getItem(i3), 0);
            this.A.setUpdateSuspended(false);
        }
    }

    public int getSelectedItemId() {
        return this.f3108g;
    }

    @Nullable
    public BadgeDrawable getBadge(int i) {
        return (BadgeDrawable) this.q.get(i);
    }

    @Nullable
    public NavigationBarItemView findItemView(int i) {
        b(i);
        NavigationBarItemView[] navigationBarItemViewArr = this.f;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    public int getSelectedItemPosition() {
        return this.h;
    }

    @Nullable
    public MenuBuilder getMenu() {
        return this.B;
    }

    public static void b(int i) {
        if (i != -1) {
            return;
        }
        throw new IllegalArgumentException(i + " is not a valid view id");
    }
}
