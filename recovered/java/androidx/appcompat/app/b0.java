package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
class b0 extends ActionBar {

    /* renamed from: a, reason: collision with root package name */
    public final ToolbarWidgetWrapper f138a;

    /* renamed from: b, reason: collision with root package name */
    public final Window.Callback f139b;
    public final e c;
    public boolean d;
    public boolean e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f140g = new ArrayList();
    public final Runnable h = new a();
    public final Toolbar.OnMenuItemClickListener i;

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationItemCount() {
        return 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationMode() {
        return 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getSelectedNavigationIndex() {
        return -1;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getTabCount() {
        return 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeButtonEnabled(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0 b0Var = b0.this;
            Window.Callback callback = b0Var.f139b;
            boolean z = b0Var.e;
            ToolbarWidgetWrapper toolbarWidgetWrapper = b0Var.f138a;
            if (!z) {
                toolbarWidgetWrapper.setMenuCallbacks(b0Var.new c(), b0Var.new d());
                b0Var.e = true;
            }
            Menu menu = toolbarWidgetWrapper.getMenu();
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (menuBuilder != null) {
                menuBuilder.stopDispatchingItemsChanged();
            }
            try {
                menu.clear();
                if (!callback.onCreatePanelMenu(0, menu) || !callback.onPreparePanel(0, null, menu)) {
                    menu.clear();
                }
                if (menuBuilder != null) {
                    menuBuilder.startDispatchingItemsChanged();
                }
            } catch (Throwable th) {
                if (menuBuilder != null) {
                    menuBuilder.startDispatchingItemsChanged();
                }
                throw th;
            }
        }
    }

    public class b implements Toolbar.OnMenuItemClickListener {
        public b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return b0.this.f139b.onMenuItemSelected(0, menuItem);
        }
    }

    public b0(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.i = bVar;
        Preconditions.checkNotNull(toolbar);
        ToolbarWidgetWrapper toolbarWidgetWrapper = new ToolbarWidgetWrapper(toolbar, false);
        this.f138a = toolbarWidgetWrapper;
        this.f139b = (Window.Callback) Preconditions.checkNotNull(callback);
        toolbarWidgetWrapper.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(bVar);
        toolbarWidgetWrapper.setWindowTitle(charSequence);
        this.c = new e();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view) {
        setCustomView(view, new ActionBar.LayoutParams(-2, -2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        if (view != null) {
            view.setLayoutParams(layoutParams);
        }
        this.f138a.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(int i) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        setCustomView(LayoutInflater.from(toolbarWidgetWrapper.getContext()).inflate(i, toolbarWidgetWrapper.getViewGroup(), false));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(int i) {
        this.f138a.setIcon(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.f138a.setIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(int i) {
        this.f138a.setLogo(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.f138a.setLogo(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setElevation(float f) {
        ViewCompat.setElevation(this.f138a.getViewGroup(), f);
    }

    @Override // androidx.appcompat.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.f138a.getViewGroup());
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context getThemedContext() {
        return this.f138a.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isTitleTruncated() {
        return super.isTitleTruncated();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f138a.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(int i) {
        this.f138a.setNavigationIcon(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f138a.setNavigationContentDescription(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(int i) {
        this.f138a.setNavigationContentDescription(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.f138a.setDropdownParams(spinnerAdapter, new z(onNavigationListener));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSelectedNavigationItem(int i) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        if (toolbarWidgetWrapper.getNavigationMode() == 1) {
            toolbarWidgetWrapper.setDropdownSelectedPosition(i);
            return;
        }
        throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.f138a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(int i) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        toolbarWidgetWrapper.setTitle(i != 0 ? toolbarWidgetWrapper.getContext().getText(i) : null);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.f138a.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.f138a.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(int i) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        toolbarWidgetWrapper.setSubtitle(i != 0 ? toolbarWidgetWrapper.getContext().getText(i) : null);
    }

    @Override // androidx.appcompat.app.ActionBar
    @SuppressLint({"WrongConstant"})
    public void setDisplayOptions(int i) {
        setDisplayOptions(i, -1);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i, int i2) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        toolbarWidgetWrapper.setDisplayOptions((i & i2) | ((~i2) & toolbarWidgetWrapper.getDisplayOptions()));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z ? 1 : 0, 1);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        this.f138a.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public View getCustomView() {
        return this.f138a.getCustomView();
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getTitle() {
        return this.f138a.getTitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getSubtitle() {
        return this.f138a.getSubtitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setNavigationMode(int i) {
        if (i == 2) {
            throw new IllegalArgumentException("Tabs not supported in this configuration");
        }
        this.f138a.setNavigationMode(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getDisplayOptions() {
        return this.f138a.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab newTab() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTabAt(int i) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeAllTabs() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getTabAt(int i) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHeight() {
        return this.f138a.getHeight();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void show() {
        this.f138a.setVisibility(0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void hide() {
        this.f138a.setVisibility(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isShowing() {
        return this.f138a.getVisibility() == 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean openOptionsMenu() {
        return this.f138a.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean closeOptionsMenu() {
        return this.f138a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean invalidateOptionsMenu() {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        ViewGroup viewGroup = toolbarWidgetWrapper.getViewGroup();
        Runnable runnable = this.h;
        viewGroup.removeCallbacks(runnable);
        ViewCompat.postOnAnimation(toolbarWidgetWrapper.getViewGroup(), runnable);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean collapseActionView() {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        if (!toolbarWidgetWrapper.hasExpandedActionView()) {
            return false;
        }
        toolbarWidgetWrapper.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            openOptionsMenu();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a() {
        this.f138a.getViewGroup().removeCallbacks(this.h);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f140g.add(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f140g.remove(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.f) {
            return;
        }
        this.f = z;
        ArrayList arrayList = this.f140g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ActionBar.OnMenuVisibilityListener) arrayList.get(i)).onMenuVisibilityChanged(z);
        }
    }

    public class e implements AppCompatDelegateImpl.d {
        public e() {
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.d
        public boolean onPreparePanel(int i) {
            if (i != 0) {
                return false;
            }
            b0 b0Var = b0.this;
            if (b0Var.d) {
                return false;
            }
            b0Var.f138a.setMenuPrepared();
            b0Var.d = true;
            return false;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.d
        public View onCreatePanelView(int i) {
            if (i == 0) {
                return new View(b0.this.f138a.getContext());
            }
            return null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        boolean z = this.e;
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.f138a;
        if (!z) {
            toolbarWidgetWrapper.setMenuCallbacks(new c(), new d());
            this.e = true;
        }
        Menu menu = toolbarWidgetWrapper.getMenu();
        if (menu == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i, keyEvent, 0);
    }

    public final class c implements MenuPresenter.Callback {

        /* renamed from: a, reason: collision with root package name */
        public boolean f143a;

        public c() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            b0.this.f139b.onMenuOpened(108, menuBuilder);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            if (this.f143a) {
                return;
            }
            this.f143a = true;
            b0 b0Var = b0.this;
            b0Var.f138a.dismissPopupMenus();
            b0Var.f139b.onPanelClosed(108, menuBuilder);
            this.f143a = false;
        }
    }

    public final class d implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            return false;
        }

        public d() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            b0 b0Var = b0.this;
            boolean zIsOverflowMenuShowing = b0Var.f138a.isOverflowMenuShowing();
            Window.Callback callback = b0Var.f139b;
            if (zIsOverflowMenuShowing) {
                callback.onPanelClosed(108, menuBuilder);
            } else if (callback.onPreparePanel(0, null, menuBuilder)) {
                callback.onMenuOpened(108, menuBuilder);
            }
        }
    }
}
