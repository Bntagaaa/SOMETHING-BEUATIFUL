package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements MenuHost {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public final MenuHostHelper G;
    public ArrayList H;
    public OnMenuItemClickListener I;
    public final ActionMenuView.OnMenuItemClickListener J;
    public ToolbarWidgetWrapper K;
    public androidx.appcompat.widget.b L;
    public d M;
    public MenuPresenter.Callback N;
    public MenuBuilder.Callback O;
    public boolean P;
    public OnBackInvokedCallback Q;
    public OnBackInvokedDispatcher R;
    public boolean S;
    public final Runnable T;

    /* renamed from: a, reason: collision with root package name */
    public ActionMenuView f435a;

    /* renamed from: b, reason: collision with root package name */
    public AppCompatTextView f436b;
    public AppCompatTextView c;
    public AppCompatImageButton d;
    public AppCompatImageView e;
    public final Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f437g;
    public AppCompatImageButton h;
    public View i;
    public Context j;
    public int k;
    public int l;
    public int m;
    public final int n;
    public final int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public x t;
    public int u;
    public int v;
    public final int w;
    public CharSequence x;
    public CharSequence y;
    public ColorStateList z;

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public class a implements ActionMenuView.OnMenuItemClickListener {
        public a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Toolbar toolbar = Toolbar.this;
            if (toolbar.G.onMenuItemSelected(menuItem)) {
                return true;
            }
            OnMenuItemClickListener onMenuItemClickListener = toolbar.I;
            if (onMenuItemClickListener != null) {
                return onMenuItemClickListener.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.showOverflowMenu();
        }
    }

    public Toolbar(@NonNull Context context) {
        this(context, null);
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new MenuHostHelper(new a0(this, 1));
        this.H = new ArrayList();
        this.J = new a();
        this.T = new b();
        Context context2 = getContext();
        int[] iArr = R.styleable.Toolbar;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        this.l = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.Toolbar_titleTextAppearance, 0);
        this.m = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.w = tintTypedArrayObtainStyledAttributes.getInteger(R.styleable.Toolbar_android_gravity, 8388627);
        this.n = tintTypedArrayObtainStyledAttributes.getInteger(R.styleable.Toolbar_buttonGravity, 48);
        int dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMargin, 0);
        int i2 = R.styleable.Toolbar_titleMargins;
        dimensionPixelOffset = tintTypedArrayObtainStyledAttributes.hasValue(i2) ? tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(i2, dimensionPixelOffset) : dimensionPixelOffset;
        this.s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.q = dimensionPixelOffset;
        this.p = dimensionPixelOffset;
        int dimensionPixelOffset2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.s = dimensionPixelOffset5;
        }
        this.o = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
        int dimensionPixelOffset6 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0);
        int dimensionPixelSize2 = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0);
        if (this.t == null) {
            this.t = new x();
        }
        this.t.setAbsolute(dimensionPixelSize, dimensionPixelSize2);
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            this.t.setRelative(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.u = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.v = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.Toolbar_collapseIcon);
        this.f437g = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_collapseContentDescription);
        CharSequence text = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.j = getContext();
        setPopupTheme(tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.Toolbar_popupTheme, 0));
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.Toolbar_navigationIcon);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        CharSequence text3 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawable2 = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.Toolbar_logo);
        if (drawable2 != null) {
            setLogo(drawable2);
        }
        CharSequence text4 = tintTypedArrayObtainStyledAttributes.getText(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        int i3 = R.styleable.Toolbar_titleTextColor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i3)) {
            setTitleTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(i3));
        }
        int i4 = R.styleable.Toolbar_subtitleTextColor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i4)) {
            setSubtitleTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(i4));
        }
        int i5 = R.styleable.Toolbar_menu;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i5)) {
            inflateMenu(tintTypedArrayObtainStyledAttributes.getResourceId(i5, 0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.S != z) {
            this.S = z;
            p();
        }
    }

    public boolean isBackInvokedCallbackEnabled() {
        return this.S;
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    @StyleRes
    public int getPopupTheme() {
        return this.k;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.p = i;
        this.r = i2;
        this.q = i3;
        this.s = i4;
        requestLayout();
    }

    public int getTitleMarginStart() {
        return this.p;
    }

    public void setTitleMarginStart(int i) {
        this.p = i;
        requestLayout();
    }

    public int getTitleMarginTop() {
        return this.r;
    }

    public void setTitleMarginTop(int i) {
        this.r = i;
        requestLayout();
    }

    public int getTitleMarginEnd() {
        return this.q;
    }

    public void setTitleMarginEnd(int i) {
        this.q = i;
        requestLayout();
    }

    public int getTitleMarginBottom() {
        return this.s;
    }

    public void setTitleMarginBottom(int i) {
        this.s = i;
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.t == null) {
            this.t = new x();
        }
        this.t.setDirection(i == 1);
    }

    public void setLogo(@DrawableRes int i) {
        setLogo(AppCompatResources.getDrawable(getContext(), i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f435a) != null && actionMenuView.isOverflowReserved();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.f435a;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowing();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.f435a;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowPending();
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.f435a;
        return actionMenuView != null && actionMenuView.showOverflowMenu();
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.f435a;
        return actionMenuView != null && actionMenuView.hideOverflowMenu();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setMenu(MenuBuilder menuBuilder, androidx.appcompat.widget.b bVar) {
        if (menuBuilder == null && this.f435a == null) {
            return;
        }
        e();
        MenuBuilder menuBuilderPeekMenu = this.f435a.peekMenu();
        if (menuBuilderPeekMenu == menuBuilder) {
            return;
        }
        if (menuBuilderPeekMenu != null) {
            menuBuilderPeekMenu.removeMenuPresenter(this.L);
            menuBuilderPeekMenu.removeMenuPresenter(this.M);
        }
        if (this.M == null) {
            this.M = new d();
        }
        bVar.setExpandedActionViewsExclusive(true);
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(bVar, this.j);
            menuBuilder.addMenuPresenter(this.M, this.j);
        } else {
            bVar.initForMenu(this.j, null);
            this.M.initForMenu(this.j, null);
            bVar.updateMenuView(true);
            this.M.updateMenuView(true);
        }
        this.f435a.setPopupTheme(this.k);
        this.f435a.setPresenter(bVar);
        this.L = bVar;
        p();
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.f435a;
        if (actionMenuView != null) {
            actionMenuView.dismissPopupMenus();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isTitleTruncated() {
        Layout layout;
        AppCompatTextView appCompatTextView = this.f436b;
        if (appCompatTextView != null && (layout = appCompatTextView.getLayout()) != null) {
            int lineCount = layout.getLineCount();
            for (int i = 0; i < lineCount; i++) {
                if (layout.getEllipsisCount(i) > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.e;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public void setLogoDescription(@StringRes int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.e == null) {
            this.e = new AppCompatImageView(getContext());
        }
        AppCompatImageView appCompatImageView = this.e;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.e;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public void setLogo(Drawable drawable) {
        if (drawable == null) {
            AppCompatImageView appCompatImageView = this.e;
            if (appCompatImageView != null && j(appCompatImageView)) {
                removeView(this.e);
                this.E.remove(this.e);
            }
        } else {
            if (this.e == null) {
                this.e = new AppCompatImageView(getContext());
            }
            if (!j(this.e)) {
                b(this.e, true);
            }
        }
        AppCompatImageView appCompatImageView2 = this.e;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public boolean hasExpandedActionView() {
        d dVar = this.M;
        return (dVar == null || dVar.f443b == null) ? false : true;
    }

    public void collapseActionView() {
        d dVar = this.M;
        MenuItemImpl menuItemImpl = dVar == null ? null : dVar.f443b;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.x;
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f436b == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f436b = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f436b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.f436b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.f436b.setTextColor(colorStateList);
                }
            }
            if (!j(this.f436b)) {
                b(this.f436b, true);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f436b;
            if (appCompatTextView2 != null && j(appCompatTextView2)) {
                removeView(this.f436b);
                this.E.remove(this.f436b);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f436b;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.x = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.y;
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!j(this.c)) {
                b(this.c, true);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.c;
            if (appCompatTextView2 != null && j(appCompatTextView2)) {
                removeView(this.c);
                this.E.remove(this.c);
            }
        }
        AppCompatTextView appCompatTextView3 = this.c;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setTitleTextAppearance(Context context, @StyleRes int i) {
        this.l = i;
        AppCompatTextView appCompatTextView = this.f436b;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextAppearance(Context context, @StyleRes int i) {
        this.m = i;
        AppCompatTextView appCompatTextView = this.c;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(@ColorInt int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.z = colorStateList;
        AppCompatTextView appCompatTextView = this.f436b;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setSubtitleTextColor(@ColorInt int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.A = colorStateList;
        AppCompatTextView appCompatTextView = this.c;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        AppCompatImageButton appCompatImageButton = this.d;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public void setNavigationContentDescription(@StringRes int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        AppCompatImageButton appCompatImageButton = this.d;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            TooltipCompat.setTooltipText(this.d, charSequence);
        }
    }

    public void setNavigationIcon(@DrawableRes int i) {
        setNavigationIcon(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            f();
            if (!j(this.d)) {
                b(this.d, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.d;
            if (appCompatImageButton != null && j(appCompatImageButton)) {
                removeView(this.d);
                this.E.remove(this.d);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.d;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    @Nullable
    public Drawable getNavigationIcon() {
        AppCompatImageButton appCompatImageButton = this.d;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        f();
        this.d.setOnClickListener(onClickListener);
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        AppCompatImageButton appCompatImageButton = this.h;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public void setCollapseContentDescription(@StringRes int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        AppCompatImageButton appCompatImageButton = this.h;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
        }
    }

    @Nullable
    public Drawable getCollapseIcon() {
        AppCompatImageButton appCompatImageButton = this.h;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public void setCollapseIcon(@DrawableRes int i) {
        setCollapseIcon(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            c();
            this.h.setImageDrawable(drawable);
        } else {
            AppCompatImageButton appCompatImageButton = this.h;
            if (appCompatImageButton != null) {
                appCompatImageButton.setImageDrawable(this.f);
            }
        }
    }

    public Menu getMenu() {
        d();
        return this.f435a.getMenu();
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        d();
        this.f435a.setOverflowIcon(drawable);
    }

    @Nullable
    public Drawable getOverflowIcon() {
        d();
        return this.f435a.getOverflowIcon();
    }

    public final void d() {
        e();
        if (this.f435a.peekMenu() == null) {
            MenuBuilder menuBuilder = (MenuBuilder) this.f435a.getMenu();
            if (this.M == null) {
                this.M = new d();
            }
            this.f435a.setExpandedActionViewsExclusive(true);
            menuBuilder.addMenuPresenter(this.M, this.j);
            p();
        }
    }

    public final void e() {
        if (this.f435a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f435a = actionMenuView;
            actionMenuView.setPopupTheme(this.k);
            this.f435a.setOnMenuItemClickListener(this.J);
            this.f435a.setMenuCallbacks(this.N, new b0(this));
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.n & 112) | GravityCompat.END;
            this.f435a.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            b(this.f435a, false);
        }
    }

    public void inflateMenu(@MenuRes int i) {
        new SupportMenuInflater(getContext()).inflate(i, getMenu());
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.I = onMenuItemClickListener;
    }

    public int getContentInsetStart() {
        x xVar = this.t;
        if (xVar != null) {
            return xVar.getStart();
        }
        return 0;
    }

    public int getContentInsetEnd() {
        x xVar = this.t;
        if (xVar != null) {
            return xVar.getEnd();
        }
        return 0;
    }

    public int getContentInsetLeft() {
        x xVar = this.t;
        if (xVar != null) {
            return xVar.getLeft();
        }
        return 0;
    }

    public int getContentInsetRight() {
        x xVar = this.t;
        if (xVar != null) {
            return xVar.getRight();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.u;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.u) {
            this.u = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getContentInsetEndWithActions() {
        int i = this.v;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.u, 0));
        }
        return getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuBuilder menuBuilderPeekMenu;
        ActionMenuView actionMenuView = this.f435a;
        if (actionMenuView != null && (menuBuilderPeekMenu = actionMenuView.peekMenu()) != null && menuBuilderPeekMenu.hasVisibleItems()) {
            return Math.max(getContentInsetEnd(), Math.max(this.v, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public final void f() {
        if (this.d == null) {
            this.d = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.n & 112) | GravityCompat.START;
            this.d.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
        }
    }

    public final void c() {
        if (this.h == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f);
            this.h.setContentDescription(this.f437g);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.n & 112) | GravityCompat.START;
            layoutParamsGenerateDefaultLayoutParams.f438a = 2;
            this.h.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            this.h.setOnClickListener(new c0(this));
        }
    }

    public final void b(View view, boolean z) {
        LayoutParams layoutParamsGenerateLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParamsGenerateLayoutParams = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            layoutParamsGenerateLayoutParams = generateLayoutParams(layoutParams);
        } else {
            layoutParamsGenerateLayoutParams = (LayoutParams) layoutParams;
        }
        layoutParamsGenerateLayoutParams.f438a = 1;
        if (z && this.i != null) {
            view.setLayoutParams(layoutParamsGenerateLayoutParams);
            this.E.add(view);
        } else {
            addView(view, layoutParamsGenerateLayoutParams);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        MenuItemImpl menuItemImpl;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.M;
        if (dVar != null && (menuItemImpl = dVar.f443b) != null) {
            savedState.f439b = menuItemImpl.getItemId();
        }
        savedState.c = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.f435a;
        MenuBuilder menuBuilderPeekMenu = actionMenuView != null ? actionMenuView.peekMenu() : null;
        int i = savedState.f439b;
        if (i != 0 && this.M != null && menuBuilderPeekMenu != null && (menuItemFindItem = menuBuilderPeekMenu.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.c) {
            Runnable runnable = this.T;
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.T);
        p();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        p();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.B = false;
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.C = false;
        return true;
    }

    public final void n(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final int m(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + iMax + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iH;
        int iMax;
        int iCombineMeasuredStates;
        int iH2;
        int iCombineMeasuredStates2;
        int iMax2;
        int i3;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i4 = !zIsLayoutRtl ? 1 : 0;
        int i5 = 0;
        if (o(this.d)) {
            n(this.d, i, 0, i2, this.o);
            iH = h(this.d) + this.d.getMeasuredWidth();
            iMax = Math.max(0, i(this.d) + this.d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            iH = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (o(this.h)) {
            n(this.h, i, 0, i2, this.o);
            iH = h(this.h) + this.h.getMeasuredWidth();
            iMax = Math.max(iMax, i(this.h) + this.h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iH);
        int iMax4 = Math.max(0, currentContentInsetStart - iH);
        int[] iArr = this.F;
        iArr[zIsLayoutRtl ? 1 : 0] = iMax4;
        if (o(this.f435a)) {
            n(this.f435a, i, iMax3, i2, this.o);
            iH2 = h(this.f435a) + this.f435a.getMeasuredWidth();
            iMax = Math.max(iMax, i(this.f435a) + this.f435a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f435a.getMeasuredState());
        } else {
            iH2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iH2);
        iArr[i4] = Math.max(0, currentContentInsetEnd - iH2);
        if (o(this.i)) {
            iMax5 += m(this.i, i, iMax5, i2, 0, iArr);
            iMax = Math.max(iMax, i(this.i) + this.i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.i.getMeasuredState());
        }
        if (o(this.e)) {
            iMax5 += m(this.e, i, iMax5, i2, 0, iArr);
            iMax = Math.max(iMax, i(this.e) + this.e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (((LayoutParams) childAt.getLayoutParams()).f438a == 0 && o(childAt)) {
                iMax5 += m(childAt, i, iMax5, i2, 0, iArr);
                int iMax6 = Math.max(iMax, i(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i7 = iMax5;
        int i8 = this.r + this.s;
        int i9 = this.p + this.q;
        if (o(this.f436b)) {
            m(this.f436b, i, i7 + i9, i2, i8, iArr);
            int iH3 = h(this.f436b) + this.f436b.getMeasuredWidth();
            i3 = i(this.f436b) + this.f436b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f436b.getMeasuredState());
            iMax2 = iH3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            i3 = 0;
        }
        if (o(this.c)) {
            iMax2 = Math.max(iMax2, m(this.c, i, i7 + i9, i2, i8 + i3, iArr));
            i3 += i(this.c) + this.c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.c.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, i3);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i7 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16);
        if (!this.P) {
            i5 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i10 = 0; i10 < childCount2; i10++) {
            View childAt2 = getChildAt(i10);
            if (o(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i5 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x028d A[LOOP:0: B:102:0x028b->B:103:0x028d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02a5 A[LOOP:1: B:105:0x02a3->B:106:0x02a5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c5 A[LOOP:2: B:108:0x02c3->B:109:0x02c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0314 A[LOOP:3: B:117:0x0312->B:118:0x0314, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0216  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    public final int k(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int iMax = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int iG = g(i2, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iG, iMax + measuredWidth, view.getMeasuredHeight() + iG);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + iMax;
    }

    public final int l(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int iG = g(i2, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iG, iMax, view.getMeasuredHeight() + iG);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    public final int g(int i, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = layoutParams.gravity & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.w & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (iMax < i4) {
            iMax = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i5 < i6) {
                iMax = Math.max(0, iMax - (i6 - i5));
            }
        }
        return paddingTop + iMax;
    }

    public final void a(ArrayList arrayList, int i) {
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f438a == 0 && o(childAt)) {
                    int i3 = layoutParams.gravity;
                    int layoutDirection = ViewCompat.getLayoutDirection(this);
                    int absoluteGravity2 = GravityCompat.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f438a == 0 && o(childAt2)) {
                int i5 = layoutParams2.gravity;
                int layoutDirection2 = ViewCompat.getLayoutDirection(this);
                int absoluteGravity3 = GravityCompat.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final boolean o(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public static int h(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
    }

    public static int i(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DecorToolbar getWrapper() {
        if (this.K == null) {
            this.K = new ToolbarWidgetWrapper(this, true);
        }
        return this.K;
    }

    public final boolean j(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setCollapsible(boolean z) {
        this.P = z;
        requestLayout();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.N = callback;
        this.O = callback2;
        ActionMenuView actionMenuView = this.f435a;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(callback, callback2);
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        if (this.t == null) {
            this.t = new x();
        }
        this.t.setAbsolute(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        if (this.t == null) {
            this.t = new x();
        }
        this.t.setRelative(i, i2);
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.G.addMenuProvider(menuProvider);
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        this.G.addMenuProvider(menuProvider, lifecycleOwner);
    }

    @Override // androidx.core.view.MenuHost
    @SuppressLint({"LambdaLast"})
    @MainThread
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.State state) {
        this.G.addMenuProvider(menuProvider, lifecycleOwner, state);
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.G.removeMenuProvider(menuProvider);
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void invalidateMenu() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList arrayList = new ArrayList();
        Menu menu2 = getMenu();
        for (int i = 0; i < menu2.size(); i++) {
            arrayList.add(menu2.getItem(i));
        }
        this.G.onCreateMenu(menu, new SupportMenuInflater(getContext()));
        ArrayList arrayList2 = new ArrayList();
        Menu menu3 = getMenu();
        for (int i2 = 0; i2 < menu3.size(); i2++) {
            arrayList2.add(menu3.getItem(i2));
        }
        arrayList2.removeAll(arrayList);
        this.H = arrayList2;
    }

    public final void p() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = c.a(this);
            boolean z = hasExpandedActionView() && onBackInvokedDispatcherA != null && ViewCompat.isAttachedToWindow(this) && this.S;
            if (z && this.R == null) {
                if (this.Q == null) {
                    this.Q = c.b(new a0(this, 0));
                }
                c.c(onBackInvokedDispatcherA, this.Q);
                this.R = onBackInvokedDispatcherA;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.R) == null) {
                return;
            }
            c.d(onBackInvokedDispatcher, this.Q);
            this.R = null;
        }
    }

    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f438a;

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f438a = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f438a = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.f438a = 0;
            this.gravity = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f438a = 0;
            this.f438a = layoutParams.f438a;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f438a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f438a = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f438a = 0;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public int f439b;
        public boolean c;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f439b = parcel.readInt();
            this.c = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f439b);
            parcel.writeInt(this.c ? 1 : 0);
        }

        public class a implements Parcelable.ClassLoaderCreator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    public class d implements MenuPresenter {

        /* renamed from: a, reason: collision with root package name */
        public MenuBuilder f442a;

        /* renamed from: b, reason: collision with root package name */
        public MenuItemImpl f443b;

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean flagActionItems() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void setCallback(MenuPresenter.Callback callback) {
        }

        public d() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.f442a;
            if (menuBuilder2 != null && (menuItemImpl = this.f443b) != null) {
                menuBuilder2.collapseItemActionView(menuItemImpl);
            }
            this.f442a = menuBuilder;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void updateMenuView(boolean z) {
            if (this.f443b != null) {
                MenuBuilder menuBuilder = this.f442a;
                if (menuBuilder != null) {
                    int size = menuBuilder.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f442a.getItem(i) == this.f443b) {
                            return;
                        }
                    }
                }
                collapseItemActionView(this.f442a, this.f443b);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            toolbar.c();
            ViewParent parent = toolbar.h.getParent();
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.h);
                }
                toolbar.addView(toolbar.h);
            }
            View actionView = menuItemImpl.getActionView();
            toolbar.i = actionView;
            this.f443b = menuItemImpl;
            ViewParent parent2 = actionView.getParent();
            if (parent2 != toolbar) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar.i);
                }
                LayoutParams layoutParamsGenerateDefaultLayoutParams = toolbar.generateDefaultLayoutParams();
                layoutParamsGenerateDefaultLayoutParams.gravity = (toolbar.n & 112) | GravityCompat.START;
                layoutParamsGenerateDefaultLayoutParams.f438a = 2;
                toolbar.i.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
                toolbar.addView(toolbar.i);
            }
            for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = toolbar.getChildAt(childCount);
                if (((LayoutParams) childAt.getLayoutParams()).f438a != 2 && childAt != toolbar.f435a) {
                    toolbar.removeViewAt(childCount);
                    toolbar.E.add(childAt);
                }
            }
            toolbar.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            KeyEvent.Callback callback = toolbar.i;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewExpanded();
            }
            toolbar.p();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            KeyEvent.Callback callback = toolbar.i;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewCollapsed();
            }
            toolbar.removeView(toolbar.i);
            toolbar.removeView(toolbar.h);
            toolbar.i = null;
            ArrayList arrayList = toolbar.E;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                toolbar.addView((View) arrayList.get(size));
            }
            arrayList.clear();
            this.f443b = null;
            toolbar.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            toolbar.p();
            return true;
        }
    }

    @RequiresApi(33)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static void c(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(DurationKt.NANOS_IN_MILLIS, (OnBackInvokedCallback) obj2);
        }

        @DoNotInline
        public static void d(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }

        @Nullable
        @DoNotInline
        public static OnBackInvokedDispatcher a(@NonNull View view) {
            return view.findOnBackInvokedDispatcher();
        }

        @NonNull
        @DoNotInline
        public static OnBackInvokedCallback b(@NonNull Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new androidx.activity.h(runnable);
        }
    }
}
