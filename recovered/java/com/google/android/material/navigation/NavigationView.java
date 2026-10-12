package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {
    public static final int[] s = {R.attr.state_checked};
    public static final int[] t = {-16842910};
    public static final int u = com.google.android.material.R.style.Widget_Design_NavigationView;
    public final NavigationMenu f;

    /* renamed from: g, reason: collision with root package name */
    public final NavigationMenuPresenter f3119g;
    public OnNavigationItemSelectedListener h;
    public final int i;
    public final int[] j;
    public SupportMenuInflater k;
    public final ViewTreeObserver.OnGlobalLayoutListener l;
    public boolean m;
    public boolean n;
    public final int o;
    public final int p;
    public Path q;
    public final RectF r;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(@NonNull MenuItem menuItem);
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        ColorStateList colorStateListA;
        int i2 = u;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        NavigationMenuPresenter navigationMenuPresenter = new NavigationMenuPresenter();
        this.f3119g = navigationMenuPresenter;
        this.j = new int[2];
        this.m = true;
        this.n = true;
        this.o = 0;
        this.p = 0;
        this.r = new RectF();
        Context context2 = getContext();
        NavigationMenu navigationMenu = new NavigationMenu(context2);
        this.f = navigationMenu;
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, com.google.android.material.R.styleable.NavigationView, i, i2, new int[0]);
        int i3 = com.google.android.material.R.styleable.NavigationView_android_background;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i3)) {
            ViewCompat.setBackground(this, tintTypedArrayObtainTintedStyledAttributes.getDrawable(i3));
        }
        this.p = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.o = tintTypedArrayObtainTintedStyledAttributes.getInt(com.google.android.material.R.styleable.NavigationView_android_layout_gravity, 0);
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build();
            Drawable background = getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModelBuild);
            if (background instanceof ColorDrawable) {
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            materialShapeDrawable.initializeElevationOverlay(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(com.google.android.material.R.styleable.NavigationView_elevation)) {
            setElevation(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(r2, 0));
        }
        setFitsSystemWindows(tintTypedArrayObtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.i = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_android_maxWidth, 0);
        int i4 = com.google.android.material.R.styleable.NavigationView_subheaderColor;
        ColorStateList colorStateList = tintTypedArrayObtainTintedStyledAttributes.hasValue(i4) ? tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i4) : null;
        int i5 = com.google.android.material.R.styleable.NavigationView_subheaderTextAppearance;
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.hasValue(i5) ? tintTypedArrayObtainTintedStyledAttributes.getResourceId(i5, 0) : 0;
        if (resourceId == 0 && colorStateList == null) {
            colorStateList = a(R.attr.textColorSecondary);
        }
        int i6 = com.google.android.material.R.styleable.NavigationView_itemIconTint;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i6)) {
            colorStateListA = tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i6);
        } else {
            colorStateListA = a(R.attr.textColorSecondary);
        }
        int i7 = com.google.android.material.R.styleable.NavigationView_itemTextAppearance;
        int resourceId2 = tintTypedArrayObtainTintedStyledAttributes.hasValue(i7) ? tintTypedArrayObtainTintedStyledAttributes.getResourceId(i7, 0) : 0;
        int i8 = com.google.android.material.R.styleable.NavigationView_itemIconSize;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i8)) {
            setItemIconSize(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i8, 0));
        }
        int i9 = com.google.android.material.R.styleable.NavigationView_itemTextColor;
        ColorStateList colorStateList2 = tintTypedArrayObtainTintedStyledAttributes.hasValue(i9) ? tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i9) : null;
        if (resourceId2 == 0 && colorStateList2 == null) {
            colorStateList2 = a(R.attr.textColorPrimary);
        }
        Drawable drawable = tintTypedArrayObtainTintedStyledAttributes.getDrawable(com.google.android.material.R.styleable.NavigationView_itemBackground);
        if (drawable == null && (tintTypedArrayObtainTintedStyledAttributes.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance) || tintTypedArrayObtainTintedStyledAttributes.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay))) {
            drawable = b(tintTypedArrayObtainTintedStyledAttributes, MaterialResources.getColorStateList(getContext(), tintTypedArrayObtainTintedStyledAttributes, com.google.android.material.R.styleable.NavigationView_itemShapeFillColor));
            ColorStateList colorStateList3 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, com.google.android.material.R.styleable.NavigationView_itemRippleColor);
            if (colorStateList3 != null) {
                navigationMenuPresenter.setItemForeground(new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(colorStateList3), null, b(tintTypedArrayObtainTintedStyledAttributes, null)));
            }
        }
        int i10 = com.google.android.material.R.styleable.NavigationView_itemHorizontalPadding;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i10)) {
            setItemHorizontalPadding(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i10, 0));
        }
        int i11 = com.google.android.material.R.styleable.NavigationView_itemVerticalPadding;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i11)) {
            setItemVerticalPadding(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i11, 0));
        }
        setDividerInsetStart(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_dividerInsetStart, 0));
        setDividerInsetEnd(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_dividerInsetEnd, 0));
        setSubheaderInsetStart(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_subheaderInsetStart, 0));
        setSubheaderInsetEnd(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_subheaderInsetEnd, 0));
        setTopInsetScrimEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_topInsetScrimEnabled, this.m));
        setBottomInsetScrimEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_bottomInsetScrimEnabled, this.n));
        int dimensionPixelSize = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemIconPadding, 0);
        setItemMaxLines(tintTypedArrayObtainTintedStyledAttributes.getInt(com.google.android.material.R.styleable.NavigationView_itemMaxLines, 1));
        navigationMenu.setCallback(new a());
        navigationMenuPresenter.setId(1);
        navigationMenuPresenter.initForMenu(context2, navigationMenu);
        if (resourceId != 0) {
            navigationMenuPresenter.setSubheaderTextAppearance(resourceId);
        }
        navigationMenuPresenter.setSubheaderColor(colorStateList);
        navigationMenuPresenter.setItemIconTintList(colorStateListA);
        navigationMenuPresenter.setOverScrollMode(getOverScrollMode());
        if (resourceId2 != 0) {
            navigationMenuPresenter.setItemTextAppearance(resourceId2);
        }
        navigationMenuPresenter.setItemTextColor(colorStateList2);
        navigationMenuPresenter.setItemBackground(drawable);
        navigationMenuPresenter.setItemIconPadding(dimensionPixelSize);
        navigationMenu.addMenuPresenter(navigationMenuPresenter);
        addView((View) navigationMenuPresenter.getMenuView(this));
        int i12 = com.google.android.material.R.styleable.NavigationView_menu;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i12)) {
            inflateMenu(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i12, 0));
        }
        int i13 = com.google.android.material.R.styleable.NavigationView_headerLayout;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i13)) {
            inflateHeaderView(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i13, 0));
        }
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        this.l = new b(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.l);
    }

    public class a implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }

        public a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.h;
            return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem);
        }
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.f3119g;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.setOverScrollMode(i);
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        boolean z = getParent() instanceof DrawerLayout;
        RectF rectF = this.r;
        if (z && (i5 = this.p) > 0 && (getBackground() instanceof MaterialShapeDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
            ShapeAppearanceModel.Builder builder = materialShapeDrawable.getShapeAppearanceModel().toBuilder();
            if (GravityCompat.getAbsoluteGravity(this.o, ViewCompat.getLayoutDirection(this)) == 3) {
                float f = i5;
                builder.setTopRightCornerSize(f);
                builder.setBottomRightCornerSize(f);
            } else {
                float f2 = i5;
                builder.setTopLeftCornerSize(f2);
                builder.setBottomLeftCornerSize(f2);
            }
            materialShapeDrawable.setShapeAppearanceModel(builder.build());
            if (this.q == null) {
                this.q = new Path();
            }
            this.q.reset();
            rectF.set(0.0f, 0.0f, i, i2);
            ShapeAppearancePathProvider.getInstance().calculatePath(materialShapeDrawable.getShapeAppearanceModel(), materialShapeDrawable.getInterpolation(), rectF, this.q);
            invalidate();
            return;
        }
        this.q = null;
        rectF.setEmpty();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public final InsetDrawable b(TintTypedArray tintTypedArray, ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(getContext(), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).build());
        materialShapeDrawable.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.f.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f.restorePresenterStates(savedState.menuState);
    }

    public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.h = onNavigationItemSelectedListener;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int i3 = this.i;
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), i3), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(@NonNull Canvas canvas) {
        if (this.q == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.q);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onInsetsChanged(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f3119g.dispatchApplyWindowInsets(windowInsetsCompat);
    }

    public void inflateMenu(int i) {
        NavigationMenuPresenter navigationMenuPresenter = this.f3119g;
        navigationMenuPresenter.setUpdateSuspended(true);
        if (this.k == null) {
            this.k = new SupportMenuInflater(getContext());
        }
        this.k.inflate(i, this.f);
        navigationMenuPresenter.setUpdateSuspended(false);
        navigationMenuPresenter.updateMenuView(false);
    }

    @NonNull
    public Menu getMenu() {
        return this.f;
    }

    public View inflateHeaderView(@LayoutRes int i) {
        return this.f3119g.inflateHeaderView(i);
    }

    public void addHeaderView(@NonNull View view) {
        this.f3119g.addHeaderView(view);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f3119g.removeHeaderView(view);
    }

    public int getHeaderCount() {
        return this.f3119g.getHeaderCount();
    }

    public View getHeaderView(int i) {
        return this.f3119g.getHeaderView(i);
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f3119g.getItemTintList();
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f3119g.setItemIconTintList(colorStateList);
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f3119g.getItemTextColor();
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f3119g.setItemTextColor(colorStateList);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f3119g.getItemBackground();
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f3119g.setItemBackground(drawable);
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f3119g.getItemHorizontalPadding();
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        this.f3119g.setItemHorizontalPadding(i);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) throws Resources.NotFoundException {
        this.f3119g.setItemHorizontalPadding(getResources().getDimensionPixelSize(i));
    }

    @Px
    public int getItemVerticalPadding() {
        return this.f3119g.getItemVerticalPadding();
    }

    public void setItemVerticalPadding(@Px int i) {
        this.f3119g.setItemVerticalPadding(i);
    }

    public void setItemVerticalPaddingResource(@DimenRes int i) throws Resources.NotFoundException {
        this.f3119g.setItemVerticalPadding(getResources().getDimensionPixelSize(i));
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f3119g.getItemIconPadding();
    }

    public void setItemIconPadding(@Dimension int i) {
        this.f3119g.setItemIconPadding(i);
    }

    public void setItemIconPaddingResource(int i) throws Resources.NotFoundException {
        this.f3119g.setItemIconPadding(getResources().getDimensionPixelSize(i));
    }

    public void setCheckedItem(@IdRes int i) {
        MenuItem menuItemFindItem = this.f.findItem(i);
        if (menuItemFindItem != null) {
            this.f3119g.setCheckedItem((MenuItemImpl) menuItemFindItem);
        }
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.f3119g.setCheckedItem((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f3119g.getCheckedItem();
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.f3119g.setItemTextAppearance(i);
    }

    public void setItemIconSize(@Dimension int i) {
        this.f3119g.setItemIconSize(i);
    }

    public void setItemMaxLines(int i) {
        this.f3119g.setItemMaxLines(i);
    }

    public int getItemMaxLines() {
        return this.f3119g.getItemMaxLines();
    }

    public boolean isTopInsetScrimEnabled() {
        return this.m;
    }

    public void setTopInsetScrimEnabled(boolean z) {
        this.m = z;
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.n;
    }

    public void setBottomInsetScrimEnabled(boolean z) {
        this.n = z;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f3119g.getDividerInsetStart();
    }

    public void setDividerInsetStart(@Px int i) {
        this.f3119g.setDividerInsetStart(i);
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f3119g.getDividerInsetEnd();
    }

    public void setDividerInsetEnd(@Px int i) {
        this.f3119g.setDividerInsetEnd(i);
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.f3119g.getSubheaderInsetStart();
    }

    public void setSubheaderInsetStart(@Px int i) {
        this.f3119g.setSubheaderInsetStart(i);
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.f3119g.getSubheaderInsetEnd();
    }

    public void setSubheaderInsetEnd(@Px int i) {
        this.f3119g.setSubheaderInsetStart(i);
    }

    public final ColorStateList a(int i) {
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
        int[] iArr = t;
        return new ColorStateList(new int[][]{iArr, s, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.l);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        public Bundle menuState;

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
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
