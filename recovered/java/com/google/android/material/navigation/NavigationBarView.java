package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class NavigationBarView extends FrameLayout {
    public static final int LABEL_VISIBILITY_AUTO = -1;
    public static final int LABEL_VISIBILITY_LABELED = 1;
    public static final int LABEL_VISIBILITY_SELECTED = 0;
    public static final int LABEL_VISIBILITY_UNLABELED = 2;

    /* renamed from: a, reason: collision with root package name */
    public final NavigationBarMenu f3114a;

    /* renamed from: b, reason: collision with root package name */
    public final NavigationBarMenuView f3115b;
    public final NavigationBarPresenter c;
    public ColorStateList d;
    public SupportMenuInflater e;
    public OnItemSelectedListener f;

    /* renamed from: g, reason: collision with root package name */
    public OnItemReselectedListener f3116g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface LabelVisibility {
    }

    public interface OnItemReselectedListener {
        void onNavigationItemReselected(@NonNull MenuItem menuItem);
    }

    public interface OnItemSelectedListener {
        boolean onNavigationItemSelected(@NonNull MenuItem menuItem);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract NavigationBarMenuView createNavigationBarMenuView(@NonNull Context context);

    public abstract int getMaxItemCount();

    public class a implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            NavigationBarView navigationBarView = NavigationBarView.this;
            if (navigationBarView.f3116g == null || menuItem.getItemId() != navigationBarView.getSelectedItemId()) {
                OnItemSelectedListener onItemSelectedListener = navigationBarView.f;
                return (onItemSelectedListener == null || onItemSelectedListener.onNavigationItemSelected(menuItem)) ? false : true;
            }
            navigationBarView.f3116g.onNavigationItemReselected(menuItem);
            return true;
        }

        public a() {
        }
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Resources.NotFoundException {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.c = navigationBarPresenter;
        Context context2 = getContext();
        int[] iArr = R.styleable.NavigationBarView;
        int i3 = R.styleable.NavigationBarView_itemTextAppearanceInactive;
        int i4 = R.styleable.NavigationBarView_itemTextAppearanceActive;
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, iArr, i, i2, i3, i4);
        NavigationBarMenu navigationBarMenu = new NavigationBarMenu(context2, getClass(), getMaxItemCount());
        this.f3114a = navigationBarMenu;
        NavigationBarMenuView navigationBarMenuViewCreateNavigationBarMenuView = createNavigationBarMenuView(context2);
        this.f3115b = navigationBarMenuViewCreateNavigationBarMenuView;
        navigationBarPresenter.setMenuView(navigationBarMenuViewCreateNavigationBarMenuView);
        navigationBarPresenter.setId(1);
        navigationBarMenuViewCreateNavigationBarMenuView.setPresenter(navigationBarPresenter);
        navigationBarMenu.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), navigationBarMenu);
        int i5 = R.styleable.NavigationBarView_itemIconTint;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i5)) {
            navigationBarMenuViewCreateNavigationBarMenuView.setIconTintList(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i5));
        } else {
            navigationBarMenuViewCreateNavigationBarMenuView.setIconTintList(navigationBarMenuViewCreateNavigationBarMenuView.createDefaultColorStateList(android.R.attr.textColorSecondary));
        }
        setItemIconSize(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i3)) {
            setItemTextAppearanceInactive(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i3, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i4)) {
            setItemTextAppearanceActive(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i4, 0));
        }
        int i6 = R.styleable.NavigationBarView_itemTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i6)) {
            setItemTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i6));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            Drawable background = getBackground();
            if (background instanceof ColorDrawable) {
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            materialShapeDrawable.initializeElevationOverlay(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        int i7 = R.styleable.NavigationBarView_itemPaddingTop;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i7)) {
            setItemPaddingTop(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i7, 0));
        }
        int i8 = R.styleable.NavigationBarView_itemPaddingBottom;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i8)) {
            setItemPaddingBottom(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i8, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(R.styleable.NavigationBarView_elevation)) {
            setElevation(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(r9, 0));
        }
        DrawableCompat.setTintList(getBackground().mutate(), MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, R.styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(tintTypedArrayObtainTintedStyledAttributes.getInteger(R.styleable.NavigationBarView_labelVisibilityMode, -1));
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.NavigationBarView_itemBackground, 0);
        if (resourceId != 0) {
            navigationBarMenuViewCreateNavigationBarMenuView.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, R.styleable.NavigationBarView_itemRippleColor));
        }
        int resourceId2 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, R.styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(ShapeAppearanceModel.builder(context2, typedArrayObtainStyledAttributes.getResourceId(R.styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).build());
            typedArrayObtainStyledAttributes.recycle();
        }
        int i9 = R.styleable.NavigationBarView_menu;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i9)) {
            inflateMenu(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i9, 0));
        }
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        addView(navigationBarMenuViewCreateNavigationBarMenuView);
        navigationBarMenu.setCallback(new a());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setOnItemSelectedListener(@Nullable OnItemSelectedListener onItemSelectedListener) {
        this.f = onItemSelectedListener;
    }

    public void setOnItemReselectedListener(@Nullable OnItemReselectedListener onItemReselectedListener) {
        this.f3116g = onItemReselectedListener;
    }

    @NonNull
    public Menu getMenu() {
        return this.f3114a;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MenuView getMenuView() {
        return this.f3115b;
    }

    public void inflateMenu(int i) {
        NavigationBarPresenter navigationBarPresenter = this.c;
        navigationBarPresenter.setUpdateSuspended(true);
        if (this.e == null) {
            this.e = new SupportMenuInflater(getContext());
        }
        this.e.inflate(i, this.f3114a);
        navigationBarPresenter.setUpdateSuspended(false);
        navigationBarPresenter.updateMenuView(true);
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f3115b.getIconTintList();
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f3115b.setIconTintList(colorStateList);
    }

    public void setItemIconSize(@Dimension int i) {
        this.f3115b.setItemIconSize(i);
    }

    public void setItemIconSizeRes(@DimenRes int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    @Dimension
    public int getItemIconSize() {
        return this.f3115b.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f3115b.getItemTextColor();
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f3115b.setItemTextColor(colorStateList);
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f3115b.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        this.f3115b.setItemBackgroundRes(i);
        this.d = null;
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f3115b.getItemBackground();
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f3115b.setItemBackground(drawable);
        this.d = null;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.d;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        ColorStateList colorStateList2 = this.d;
        NavigationBarMenuView navigationBarMenuView = this.f3115b;
        if (colorStateList2 == colorStateList) {
            if (colorStateList != null || navigationBarMenuView.getItemBackground() == null) {
                return;
            }
            navigationBarMenuView.setItemBackground(null);
            return;
        }
        this.d = colorStateList;
        if (colorStateList == null) {
            navigationBarMenuView.setItemBackground(null);
        } else {
            navigationBarMenuView.setItemBackground(new RippleDrawable(RippleUtils.convertToRippleDrawableColor(colorStateList), null, null));
        }
    }

    @Px
    public int getItemPaddingTop() {
        return this.f3115b.getItemPaddingTop();
    }

    public void setItemPaddingTop(@Px int i) {
        this.f3115b.setItemPaddingTop(i);
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f3115b.getItemPaddingBottom();
    }

    public void setItemPaddingBottom(@Px int i) {
        this.f3115b.setItemPaddingBottom(i);
    }

    public boolean isItemActiveIndicatorEnabled() {
        return this.f3115b.getItemActiveIndicatorEnabled();
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.f3115b.setItemActiveIndicatorEnabled(z);
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f3115b.getItemActiveIndicatorWidth();
    }

    public void setItemActiveIndicatorWidth(@Px int i) {
        this.f3115b.setItemActiveIndicatorWidth(i);
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f3115b.getItemActiveIndicatorHeight();
    }

    public void setItemActiveIndicatorHeight(@Px int i) {
        this.f3115b.setItemActiveIndicatorHeight(i);
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f3115b.getItemActiveIndicatorMarginHorizontal();
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i) {
        this.f3115b.setItemActiveIndicatorMarginHorizontal(i);
    }

    @Nullable
    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        return this.f3115b.getItemActiveIndicatorShapeAppearance();
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f3115b.setItemActiveIndicatorShapeAppearance(shapeAppearanceModel);
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f3115b.getItemActiveIndicatorColor();
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f3115b.setItemActiveIndicatorColor(colorStateList);
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f3115b.getSelectedItemId();
    }

    public void setSelectedItemId(@IdRes int i) {
        NavigationBarMenu navigationBarMenu = this.f3114a;
        MenuItem menuItemFindItem = navigationBarMenu.findItem(i);
        if (menuItemFindItem == null || navigationBarMenu.performItemAction(menuItemFindItem, this.c, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }

    public void setLabelVisibilityMode(int i) {
        NavigationBarMenuView navigationBarMenuView = this.f3115b;
        if (navigationBarMenuView.getLabelVisibilityMode() != i) {
            navigationBarMenuView.setLabelVisibilityMode(i);
            this.c.updateMenuView(false);
        }
    }

    public int getLabelVisibilityMode() {
        return this.f3115b.getLabelVisibilityMode();
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) throws Resources.NotFoundException {
        this.f3115b.setItemTextAppearanceInactive(i);
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f3115b.getItemTextAppearanceInactive();
    }

    public void setItemTextAppearanceActive(@StyleRes int i) throws Resources.NotFoundException {
        this.f3115b.setItemTextAppearanceActive(i);
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f3115b.getItemTextAppearanceActive();
    }

    public void setItemOnTouchListener(int i, @Nullable View.OnTouchListener onTouchListener) {
        this.f3115b.setItemOnTouchListener(i, onTouchListener);
    }

    @Nullable
    public BadgeDrawable getBadge(int i) {
        return this.f3115b.getBadge(i);
    }

    @NonNull
    public BadgeDrawable getOrCreateBadge(int i) {
        NavigationBarMenuView navigationBarMenuView = this.f3115b;
        navigationBarMenuView.getClass();
        NavigationBarMenuView.b(i);
        SparseArray sparseArray = navigationBarMenuView.q;
        BadgeDrawable badgeDrawableCreate = (BadgeDrawable) sparseArray.get(i);
        if (badgeDrawableCreate == null) {
            badgeDrawableCreate = BadgeDrawable.create(navigationBarMenuView.getContext());
            sparseArray.put(i, badgeDrawableCreate);
        }
        NavigationBarItemView navigationBarItemViewFindItemView = navigationBarMenuView.findItemView(i);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.c(badgeDrawableCreate);
        }
        return badgeDrawableCreate;
    }

    public void removeBadge(int i) {
        NavigationBarMenuView navigationBarMenuView = this.f3115b;
        navigationBarMenuView.getClass();
        NavigationBarMenuView.b(i);
        SparseArray sparseArray = navigationBarMenuView.q;
        BadgeDrawable badgeDrawable = (BadgeDrawable) sparseArray.get(i);
        NavigationBarItemView navigationBarItemViewFindItemView = navigationBarMenuView.findItemView(i);
        if (navigationBarItemViewFindItemView != null && navigationBarItemViewFindItemView.B != null) {
            ImageView imageView = navigationBarItemViewFindItemView.k;
            if (imageView != null) {
                navigationBarItemViewFindItemView.setClipChildren(true);
                navigationBarItemViewFindItemView.setClipToPadding(true);
                BadgeUtils.detachBadgeDrawable(navigationBarItemViewFindItemView.B, imageView);
            }
            navigationBarItemViewFindItemView.B = null;
        }
        if (badgeDrawable != null) {
            sparseArray.remove(i);
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavigationBarPresenter getPresenter() {
        return this.c;
    }

    @Override // android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        bVar.f3118b = bundle;
        this.f3114a.savePresenterStates(bundle);
        return bVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        this.f3114a.restorePresenterStates(bVar.f3118b);
    }

    public static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public Bundle f3118b;

        public b(Parcelable parcelable) {
            super(parcelable);
        }

        public b(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3118b = parcel.readBundle(classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f3118b);
        }

        public class a implements Parcelable.ClassLoaderCreator<b> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public b createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            public b createFromParcel(@NonNull Parcel parcel) {
                return new b(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            public b[] newArray(int i) {
                return new b[i];
            }
        }
    }
}
