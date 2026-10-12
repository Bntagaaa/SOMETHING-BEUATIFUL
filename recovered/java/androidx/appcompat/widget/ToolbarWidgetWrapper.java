package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.SpinnerAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ToolbarWidgetWrapper implements DecorToolbar {

    /* renamed from: a, reason: collision with root package name */
    public final Toolbar f444a;

    /* renamed from: b, reason: collision with root package name */
    public int f445b;
    public ScrollingTabContainerView c;
    public AppCompatSpinner d;
    public View e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f446g;
    public Drawable h;
    public boolean i;
    public CharSequence j;
    public CharSequence k;
    public CharSequence l;
    public Window.Callback m;
    public boolean n;
    public androidx.appcompat.widget.b o;
    public int p;
    public int q;
    public Drawable r;

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setHomeButtonEnabled(boolean z) {
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z, int i, int i2) {
        int i3;
        Drawable drawable;
        this.p = 0;
        this.q = 0;
        this.f444a = toolbar;
        this.j = toolbar.getTitle();
        this.k = toolbar.getSubtitle();
        this.i = this.j != null;
        this.h = toolbar.getNavigationIcon();
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.r = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence text = tintTypedArrayObtainStyledAttributes.getText(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(text2)) {
                setSubtitle(text2);
            }
            Drawable drawable2 = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_logo);
            if (drawable2 != null) {
                setLogo(drawable2);
            }
            Drawable drawable3 = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_icon);
            if (drawable3 != null) {
                setIcon(drawable3);
            }
            if (this.h == null && (drawable = this.r) != null) {
                setNavigationIcon(drawable);
            }
            setDisplayOptions(tintTypedArrayObtainStyledAttributes.getInt(R.styleable.ActionBar_displayOptions, 0));
            int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
            if (resourceId != 0) {
                setCustomView(LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false));
                setDisplayOptions(this.f445b | 16);
            }
            int layoutDimension = tintTypedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
            int dimensionPixelOffset2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                toolbar.setContentInsetsRelative(Math.max(dimensionPixelOffset, 0), Math.max(dimensionPixelOffset2, 0));
            }
            int resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
            if (resourceId2 != 0) {
                toolbar.setTitleTextAppearance(toolbar.getContext(), resourceId2);
            }
            int resourceId3 = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (resourceId3 != 0) {
                toolbar.setSubtitleTextAppearance(toolbar.getContext(), resourceId3);
            }
            int resourceId4 = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionBar_popupTheme, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.r = toolbar.getNavigationIcon();
                i3 = 15;
            } else {
                i3 = 11;
            }
            this.f445b = i3;
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        setDefaultNavigationContentDescription(i);
        this.l = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new a());
    }

    public class a implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        public final ActionMenuItem f447a;

        public a() {
            this.f447a = new ActionMenuItem(ToolbarWidgetWrapper.this.f444a.getContext(), 0, android.R.id.home, 0, 0, ToolbarWidgetWrapper.this.j);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
            Window.Callback callback = toolbarWidgetWrapper.m;
            if (callback == null || !toolbarWidgetWrapper.n) {
                return;
            }
            callback.onMenuItemSelected(0, this.f447a);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDefaultNavigationContentDescription(int i) {
        if (i == this.q) {
            return;
        }
        this.q = i;
        if (TextUtils.isEmpty(this.f444a.getNavigationContentDescription())) {
            setNavigationContentDescription(this.q);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewGroup getViewGroup() {
        return this.f444a;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Context getContext() {
        return this.f444a.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasExpandedActionView() {
        return this.f444a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void collapseActionView() {
        this.f444a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.m = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (this.i) {
            return;
        }
        this.j = charSequence;
        if ((this.f445b & 8) != 0) {
            Toolbar toolbar = this.f444a;
            toolbar.setTitle(charSequence);
            if (this.i) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.f444a.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.i = true;
        this.j = charSequence;
        if ((this.f445b & 8) != 0) {
            Toolbar toolbar = this.f444a;
            toolbar.setTitle(charSequence);
            if (this.i) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getSubtitle() {
        return this.f444a.getSubtitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setSubtitle(CharSequence charSequence) {
        this.k = charSequence;
        if ((this.f445b & 8) != 0) {
            this.f444a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void initProgress() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void initIndeterminateProgress() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasIcon() {
        return this.f != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasLogo() {
        return this.f446g != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.f = drawable;
        d();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setLogo(int i) {
        setLogo(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setLogo(Drawable drawable) {
        this.f446g = drawable;
        d();
    }

    public final void d() {
        Drawable drawable;
        int i = this.f445b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f446g) == null) {
            drawable = this.f;
        }
        this.f444a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean canShowOverflowMenu() {
        return this.f444a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isOverflowMenuShowing() {
        return this.f444a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isOverflowMenuShowPending() {
        return this.f444a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean showOverflowMenu() {
        return this.f444a.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hideOverflowMenu() {
        return this.f444a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuPrepared() {
        this.n = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        androidx.appcompat.widget.b bVar = this.o;
        Toolbar toolbar = this.f444a;
        if (bVar == null) {
            androidx.appcompat.widget.b bVar2 = new androidx.appcompat.widget.b(toolbar.getContext());
            this.o = bVar2;
            bVar2.setId(R.id.action_menu_presenter);
        }
        this.o.setCallback(callback);
        toolbar.setMenu((MenuBuilder) menu, this.o);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void dismissPopupMenus() {
        this.f444a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDisplayOptions() {
        return this.f445b;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDisplayOptions(int i) {
        View view;
        int i2 = this.f445b ^ i;
        this.f445b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    b();
                }
                c();
            }
            if ((i2 & 3) != 0) {
                d();
            }
            int i3 = i2 & 8;
            Toolbar toolbar = this.f444a;
            if (i3 != 0) {
                if ((i & 8) != 0) {
                    toolbar.setTitle(this.j);
                    toolbar.setSubtitle(this.k);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.e) == null) {
                return;
            }
            if ((i & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        ScrollingTabContainerView scrollingTabContainerView2 = this.c;
        Toolbar toolbar = this.f444a;
        if (scrollingTabContainerView2 != null && scrollingTabContainerView2.getParent() == toolbar) {
            toolbar.removeView(this.c);
        }
        this.c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.p != 2) {
            return;
        }
        toolbar.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.gravity = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean hasEmbeddedTabs() {
        return this.c != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean isTitleTruncated() {
        return this.f444a.isTitleTruncated();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setCollapsible(boolean z) {
        this.f444a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getNavigationMode() {
        return this.p;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationMode(int i) {
        ScrollingTabContainerView scrollingTabContainerView;
        int i2 = this.p;
        if (i != i2) {
            Toolbar toolbar = this.f444a;
            if (i2 == 1) {
                AppCompatSpinner appCompatSpinner = this.d;
                if (appCompatSpinner != null && appCompatSpinner.getParent() == toolbar) {
                    toolbar.removeView(this.d);
                }
            } else if (i2 == 2 && (scrollingTabContainerView = this.c) != null && scrollingTabContainerView.getParent() == toolbar) {
                toolbar.removeView(this.c);
            }
            this.p = i;
            if (i != 0) {
                if (i == 1) {
                    a();
                    toolbar.addView(this.d, 0);
                } else {
                    if (i != 2) {
                        throw new IllegalArgumentException(_COROUTINE.a.d(i, "Invalid navigation mode "));
                    }
                    ScrollingTabContainerView scrollingTabContainerView2 = this.c;
                    if (scrollingTabContainerView2 != null) {
                        toolbar.addView(scrollingTabContainerView2, 0);
                        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.c.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                        layoutParams.gravity = 8388691;
                    }
                }
            }
        }
    }

    public final void a() {
        if (this.d == null) {
            this.d = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
            this.d.setLayoutParams(new Toolbar.LayoutParams(-2, -2, 8388627));
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDropdownParams(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        a();
        this.d.setAdapter(spinnerAdapter);
        this.d.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDropdownSelectedPosition(int i) {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner == null) {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        }
        appCompatSpinner.setSelection(i);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDropdownSelectedPosition() {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            return appCompatSpinner.getSelectedItemPosition();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getDropdownItemCount() {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            return appCompatSpinner.getCount();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setCustomView(View view) {
        View view2 = this.e;
        Toolbar toolbar = this.f444a;
        if (view2 != null && (this.f445b & 16) != 0) {
            toolbar.removeView(view2);
        }
        this.e = view;
        if (view == null || (this.f445b & 16) == 0) {
            return;
        }
        toolbar.addView(view);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public View getCustomView() {
        return this.e;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void animateToVisibility(int i) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = setupAnimatorToVisibility(i, 200L);
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.start();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i, long j) {
        return ViewCompat.animate(this.f444a).alpha(i == 0 ? 1.0f : 0.0f).setDuration(j).setListener(new b(i));
    }

    public class b extends ViewPropertyAnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f449a = false;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f450b;

        public b(int i) {
            this.f450b = i;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            ToolbarWidgetWrapper.this.f444a.setVisibility(0);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f449a) {
                return;
            }
            ToolbarWidgetWrapper.this.f444a.setVisibility(this.f450b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f449a = true;
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationIcon(Drawable drawable) {
        this.h = drawable;
        c();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationIcon(int i) {
        setNavigationIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setDefaultNavigationIcon(Drawable drawable) {
        if (this.r != drawable) {
            this.r = drawable;
            c();
        }
    }

    public final void c() {
        int i = this.f445b & 4;
        Toolbar toolbar = this.f444a;
        if (i != 0) {
            Drawable drawable = this.h;
            if (drawable == null) {
                drawable = this.r;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        toolbar.setNavigationIcon((Drawable) null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationContentDescription(CharSequence charSequence) {
        this.l = charSequence;
        b();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i == 0 ? null : getContext().getString(i));
    }

    public final void b() {
        if ((this.f445b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.l);
            Toolbar toolbar = this.f444a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.q);
            } else {
                toolbar.setNavigationContentDescription(this.l);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void saveHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.f444a.saveHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void restoreHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.f444a.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setBackgroundDrawable(Drawable drawable) {
        ViewCompat.setBackground(this.f444a, drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getHeight() {
        return this.f444a.getHeight();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setVisibility(int i) {
        this.f444a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getVisibility() {
        return this.f444a.getVisibility();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f444a.setMenuCallbacks(callback, callback2);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Menu getMenu() {
        return this.f444a.getMenu();
    }
}
