package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    public static final AccelerateInterpolator F = new AccelerateInterpolator();
    public static final DecelerateInterpolator G = new DecelerateInterpolator();
    public boolean A;
    public boolean B;

    /* renamed from: a, reason: collision with root package name */
    public Context f124a;

    /* renamed from: b, reason: collision with root package name */
    public Context f125b;
    public final Activity c;
    public ActionBarOverlayLayout d;
    public ActionBarContainer e;
    public DecorToolbar f;

    /* renamed from: g, reason: collision with root package name */
    public ActionBarContextView f126g;
    public final View h;
    public ScrollingTabContainerView i;
    public TabImpl k;
    public boolean m;
    public ActionModeImpl n;
    public ActionModeImpl o;
    public ActionMode.Callback p;
    public boolean q;
    public boolean s;
    public boolean v;
    public boolean w;
    public boolean x;
    public ViewPropertyAnimatorCompatSet z;
    public final ArrayList j = new ArrayList();
    public int l = -1;
    public final ArrayList r = new ArrayList();
    public int t = 0;
    public boolean u = true;
    public boolean y = true;
    public final ViewPropertyAnimatorListener C = new a();
    public final ViewPropertyAnimatorListener D = new b();
    public final ViewPropertyAnimatorUpdateListener E = new c();

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    public class a extends ViewPropertyAnimatorListenerAdapter {
        public a() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            View view2;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.u && (view2 = windowDecorActionBar.h) != null) {
                view2.setTranslationY(0.0f);
                windowDecorActionBar.e.setTranslationY(0.0f);
            }
            windowDecorActionBar.e.setVisibility(8);
            windowDecorActionBar.e.setTransitioning(false);
            windowDecorActionBar.z = null;
            ActionMode.Callback callback = windowDecorActionBar.p;
            if (callback != null) {
                callback.onDestroyActionMode(windowDecorActionBar.o);
                windowDecorActionBar.o = null;
                windowDecorActionBar.p = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = windowDecorActionBar.d;
            if (actionBarOverlayLayout != null) {
                ViewCompat.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    }

    public class b extends ViewPropertyAnimatorListenerAdapter {
        public b() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.z = null;
            windowDecorActionBar.e.requestLayout();
        }
    }

    public class c implements ViewPropertyAnimatorUpdateListener {
        public c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) WindowDecorActionBar.this.e.getParent()).invalidate();
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        this.c = activity;
        View decorView = activity.getWindow().getDecorView();
        d(decorView);
        if (z) {
            return;
        }
        this.h = decorView.findViewById(R.id.content);
    }

    public WindowDecorActionBar(Dialog dialog) {
        d(dialog.getWindow().getDecorView());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public WindowDecorActionBar(View view) {
        d(view);
    }

    public final void d(View view) {
        DecorToolbar wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(androidx.appcompat.R.id.action_bar);
        if (callbackFindViewById instanceof DecorToolbar) {
            wrapper = (DecorToolbar) callbackFindViewById;
        } else if (callbackFindViewById instanceof Toolbar) {
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        } else {
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
        }
        this.f = wrapper;
        this.f126g = (ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.e = actionBarContainer;
        DecorToolbar decorToolbar = this.f;
        if (decorToolbar == null || this.f126g == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        this.f124a = decorToolbar.getContext();
        boolean z = (this.f.getDisplayOptions() & 4) != 0;
        if (z) {
            this.m = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.f124a);
        setHomeButtonEnabled(actionBarPolicy.enableHomeButtonByDefault() || z);
        e(actionBarPolicy.hasEmbeddedTabs());
        TypedArray typedArrayObtainStyledAttributes = this.f124a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            setElevation(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setElevation(float f) {
        ViewCompat.setElevation(this.e, f);
    }

    @Override // androidx.appcompat.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.e);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        e(ActionBarPolicy.get(this.f124a).hasEmbeddedTabs());
    }

    public final void e(boolean z) {
        this.s = z;
        if (!z) {
            this.f.setEmbeddedTabView(null);
            this.e.setTabContainer(this.i);
        } else {
            this.e.setTabContainer(null);
            this.f.setEmbeddedTabView(this.i);
        }
        boolean z2 = getNavigationMode() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.i;
        if (scrollingTabContainerView != null) {
            if (z2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f.setCollapsible(!this.s && z2);
        this.d.setHasNonEmbeddedTabs(!this.s && z2);
    }

    public final void c() {
        if (this.i != null) {
            return;
        }
        ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.f124a);
        if (this.s) {
            scrollingTabContainerView.setVisibility(0);
            this.f.setEmbeddedTabView(scrollingTabContainerView);
        } else {
            if (getNavigationMode() == 2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
            this.e.setTabContainer(scrollingTabContainerView);
        }
        this.i = scrollingTabContainerView;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i) {
        this.t = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.A = z;
        if (z || (viewPropertyAnimatorCompatSet = this.z) == null) {
            return;
        }
        viewPropertyAnimatorCompatSet.cancel();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.r.add(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.r.remove(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.q) {
            return;
        }
        this.q = z;
        ArrayList arrayList = this.r;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ActionBar.OnMenuVisibilityListener) arrayList.get(i)).onMenuVisibilityChanged(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(int i) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i, this.f.getViewGroup(), false));
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
    public void setHomeButtonEnabled(boolean z) {
        this.f.setHomeButtonEnabled(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(int i) {
        setTitle(this.f124a.getString(i));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(int i) {
        setSubtitle(this.f124a.getString(i));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSelectedNavigationItem(int i) {
        int navigationMode = this.f.getNavigationMode();
        if (navigationMode == 1) {
            this.f.setDropdownSelectedPosition(i);
        } else {
            if (navigationMode == 2) {
                selectTab((ActionBar.Tab) this.j.get(i));
                return;
            }
            throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeAllTabs() {
        if (this.k != null) {
            selectTab(null);
        }
        this.j.clear();
        ScrollingTabContainerView scrollingTabContainerView = this.i;
        if (scrollingTabContainerView != null) {
            scrollingTabContainerView.removeAllTabs();
        }
        this.l = -1;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.f.setWindowTitle(charSequence);
    }

    public boolean requestFocus() {
        ViewGroup viewGroup = this.f.getViewGroup();
        if (viewGroup == null || viewGroup.hasFocus()) {
            return false;
        }
        viewGroup.requestFocus();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.f.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i) {
        if ((i & 4) != 0) {
            this.m = true;
        }
        this.f.setDisplayOptions(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i, int i2) {
        int displayOptions = this.f.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.m = true;
        }
        this.f.setDisplayOptions((i & i2) | ((~i2) & displayOptions));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.e.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.e.setStackedBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public View getCustomView() {
        return this.f.getCustomView();
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getTitle() {
        return this.f.getTitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getSubtitle() {
        return this.f.getSubtitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationMode() {
        return this.f.getNavigationMode();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getDisplayOptions() {
        return this.f.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionMode startActionMode(ActionMode.Callback callback) {
        ActionModeImpl actionModeImpl = this.n;
        if (actionModeImpl != null) {
            actionModeImpl.finish();
        }
        this.d.setHideOnContentScrollEnabled(false);
        this.f126g.killMode();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.f126g.getContext(), callback);
        if (!actionModeImpl2.dispatchOnCreate()) {
            return null;
        }
        this.n = actionModeImpl2;
        actionModeImpl2.invalidate();
        this.f126g.initForMode(actionModeImpl2);
        animateToMode(true);
        return actionModeImpl2;
    }

    public final void b(ActionBar.Tab tab, int i) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        tabImpl.setPosition(i);
        ArrayList arrayList = this.j;
        arrayList.add(i, tabImpl);
        int size = arrayList.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                ((TabImpl) arrayList.get(i)).setPosition(i);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.j.isEmpty());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i) {
        addTab(tab, i, this.j.isEmpty());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z) {
        c();
        this.i.addTab(tab, z);
        b(tab, this.j.size());
        if (z) {
            selectTab(tab);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        c();
        this.i.addTab(tab, i, z);
        b(tab, i);
        if (z) {
            selectTab(tab);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab newTab() {
        return new TabImpl();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTabAt(int i) {
        if (this.i == null) {
            return;
        }
        TabImpl tabImpl = this.k;
        int position = tabImpl != null ? tabImpl.getPosition() : this.l;
        this.i.removeTabAt(i);
        ArrayList arrayList = this.j;
        TabImpl tabImpl2 = (TabImpl) arrayList.remove(i);
        if (tabImpl2 != null) {
            tabImpl2.setPosition(-1);
        }
        int size = arrayList.size();
        for (int i2 = i; i2 < size; i2++) {
            ((TabImpl) arrayList.get(i2)).setPosition(i2);
        }
        if (position == i) {
            selectTab(arrayList.isEmpty() ? null : (ActionBar.Tab) arrayList.get(Math.max(0, i - 1)));
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        if (getNavigationMode() != 2) {
            this.l = tab != null ? tab.getPosition() : -1;
            return;
        }
        Activity activity = this.c;
        FragmentTransaction fragmentTransactionDisallowAddToBackStack = (!(activity instanceof FragmentActivity) || this.f.getViewGroup().isInEditMode()) ? null : ((FragmentActivity) activity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        TabImpl tabImpl = this.k;
        if (tabImpl != tab) {
            this.i.setTabSelected(tab != null ? tab.getPosition() : -1);
            TabImpl tabImpl2 = this.k;
            if (tabImpl2 != null) {
                tabImpl2.getCallback().onTabUnselected(this.k, fragmentTransactionDisallowAddToBackStack);
            }
            TabImpl tabImpl3 = (TabImpl) tab;
            this.k = tabImpl3;
            if (tabImpl3 != null) {
                tabImpl3.getCallback().onTabSelected(this.k, fragmentTransactionDisallowAddToBackStack);
            }
        } else if (tabImpl != null) {
            tabImpl.getCallback().onTabReselected(this.k, fragmentTransactionDisallowAddToBackStack);
            this.i.animateToTab(tab.getPosition());
        }
        if (fragmentTransactionDisallowAddToBackStack == null || fragmentTransactionDisallowAddToBackStack.isEmpty()) {
            return;
        }
        fragmentTransactionDisallowAddToBackStack.commit();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.k;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHeight() {
        return this.e.getHeight();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z) {
        this.u = z;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void show() {
        if (this.v) {
            this.v = false;
            f(false);
        }
    }

    public void animateToMode(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        if (z) {
            if (!this.x) {
                this.x = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.d;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                f(false);
            }
        } else if (this.x) {
            this.x = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.d;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            f(false);
        }
        if (!ViewCompat.isLaidOut(this.e)) {
            if (z) {
                this.f.setVisibility(4);
                this.f126g.setVisibility(0);
                return;
            } else {
                this.f.setVisibility(0);
                this.f126g.setVisibility(8);
                return;
            }
        }
        if (z) {
            viewPropertyAnimatorCompat2 = this.f.setupAnimatorToVisibility(4, 100L);
            viewPropertyAnimatorCompat = this.f126g.setupAnimatorToVisibility(0, 200L);
        } else {
            viewPropertyAnimatorCompat = this.f.setupAnimatorToVisibility(0, 200L);
            viewPropertyAnimatorCompat2 = this.f126g.setupAnimatorToVisibility(8, 100L);
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        viewPropertyAnimatorCompatSet.playSequentially(viewPropertyAnimatorCompat2, viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompatSet.start();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.w) {
            this.w = false;
            f(true);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void hide() {
        if (this.v) {
            return;
        }
        this.v = true;
        f(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (this.w) {
            return;
        }
        this.w = true;
        f(true);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHideOnContentScrollEnabled(boolean z) {
        if (z && !this.d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.B = z;
        this.d.setHideOnContentScrollEnabled(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isHideOnContentScrollEnabled() {
        return this.d.isHideOnContentScrollEnabled();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHideOffset() {
        return this.d.getActionBarHideOffset();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHideOffset(int i) {
        if (i != 0 && !this.d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.d.setActionBarHideOffset(i);
    }

    public final void f(boolean z) {
        boolean z2 = this.v;
        boolean z3 = this.w;
        if (this.x || (!z2 && !z3)) {
            if (this.y) {
                return;
            }
            this.y = true;
            doShow(z);
            return;
        }
        if (this.y) {
            this.y = false;
            doHide(z);
        }
    }

    public void doShow(boolean z) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
        this.e.setVisibility(0);
        int i = this.t;
        ViewPropertyAnimatorListener viewPropertyAnimatorListener = this.D;
        View view = this.h;
        if (i == 0 && (this.A || z)) {
            this.e.setTranslationY(0.0f);
            float f = -this.e.getHeight();
            if (z) {
                this.e.getLocationInWindow(new int[]{0, 0});
                f -= r7[1];
            }
            this.e.setTranslationY(f);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.e).translationY(0.0f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.E);
            viewPropertyAnimatorCompatSet2.play(viewPropertyAnimatorCompatTranslationY);
            if (this.u && view != null) {
                view.setTranslationY(f);
                viewPropertyAnimatorCompatSet2.play(ViewCompat.animate(view).translationY(0.0f));
            }
            viewPropertyAnimatorCompatSet2.setInterpolator(G);
            viewPropertyAnimatorCompatSet2.setDuration(250L);
            viewPropertyAnimatorCompatSet2.setListener(viewPropertyAnimatorListener);
            this.z = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.start();
        } else {
            this.e.setAlpha(1.0f);
            this.e.setTranslationY(0.0f);
            if (this.u && view != null) {
                view.setTranslationY(0.0f);
            }
            viewPropertyAnimatorListener.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    public void doHide(boolean z) {
        View view;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
        int i = this.t;
        ViewPropertyAnimatorListener viewPropertyAnimatorListener = this.C;
        if (i == 0 && (this.A || z)) {
            this.e.setAlpha(1.0f);
            this.e.setTransitioning(true);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            float f = -this.e.getHeight();
            if (z) {
                this.e.getLocationInWindow(new int[]{0, 0});
                f -= r6[1];
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.e).translationY(f);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.E);
            viewPropertyAnimatorCompatSet2.play(viewPropertyAnimatorCompatTranslationY);
            if (this.u && (view = this.h) != null) {
                viewPropertyAnimatorCompatSet2.play(ViewCompat.animate(view).translationY(f));
            }
            viewPropertyAnimatorCompatSet2.setInterpolator(F);
            viewPropertyAnimatorCompatSet2.setDuration(250L);
            viewPropertyAnimatorCompatSet2.setListener(viewPropertyAnimatorListener);
            this.z = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.start();
            return;
        }
        viewPropertyAnimatorListener.onAnimationEnd(null);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isShowing() {
        int height = getHeight();
        if (this.y) {
            return height == 0 || getHideOffset() < height;
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context getThemedContext() {
        if (this.f125b == null) {
            TypedValue typedValue = new TypedValue();
            this.f124a.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f125b = new ContextThemeWrapper(this.f124a, i);
            } else {
                this.f125b = this.f124a;
            }
        }
        return this.f125b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isTitleTruncated() {
        DecorToolbar decorToolbar = this.f;
        return decorToolbar != null && decorToolbar.isTitleTruncated();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(int i) {
        this.f.setNavigationIcon(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f.setNavigationContentDescription(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(int i) {
        this.f.setNavigationContentDescription(i);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
            this.z = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean collapseActionView() {
        DecorToolbar decorToolbar = this.f;
        if (decorToolbar == null || !decorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.f.collapseActionView();
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        public final Context c;
        public final MenuBuilder d;
        public ActionMode.Callback e;
        public WeakReference f;

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
        }

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.c = context;
            this.e = callback;
            MenuBuilder defaultShowAsAction = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.d = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        @Override // androidx.appcompat.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.c);
        }

        @Override // androidx.appcompat.view.ActionMode
        public Menu getMenu() {
            return this.d;
        }

        @Override // androidx.appcompat.view.ActionMode
        public void finish() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.n != this) {
                return;
            }
            boolean z = windowDecorActionBar.v;
            boolean z2 = windowDecorActionBar.w;
            if (z || z2) {
                windowDecorActionBar.o = this;
                windowDecorActionBar.p = this.e;
            } else {
                this.e.onDestroyActionMode(this);
            }
            this.e = null;
            windowDecorActionBar.animateToMode(false);
            windowDecorActionBar.f126g.closeMode();
            windowDecorActionBar.d.setHideOnContentScrollEnabled(windowDecorActionBar.B);
            windowDecorActionBar.n = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public void invalidate() {
            if (WindowDecorActionBar.this.n != this) {
                return;
            }
            MenuBuilder menuBuilder = this.d;
            menuBuilder.stopDispatchingItemsChanged();
            try {
                this.e.onPrepareActionMode(this, menuBuilder);
            } finally {
                menuBuilder.startDispatchingItemsChanged();
            }
        }

        public boolean dispatchOnCreate() {
            MenuBuilder menuBuilder = this.d;
            menuBuilder.stopDispatchingItemsChanged();
            try {
                return this.e.onCreateActionMode(this, menuBuilder);
            } finally {
                menuBuilder.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setCustomView(View view) {
            WindowDecorActionBar.this.f126g.setCustomView(view);
            this.f = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.f126g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.f126g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitle(int i) {
            setTitle(WindowDecorActionBar.this.f124a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setSubtitle(int i) {
            setSubtitle(WindowDecorActionBar.this.f124a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence getTitle() {
            return WindowDecorActionBar.this.f126g.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence getSubtitle() {
            return WindowDecorActionBar.this.f126g.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitleOptionalHint(boolean z) {
            super.setTitleOptionalHint(z);
            WindowDecorActionBar.this.f126g.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.ActionMode
        public boolean isTitleOptional() {
            return WindowDecorActionBar.this.f126g.isTitleOptional();
        }

        @Override // androidx.appcompat.view.ActionMode
        public View getCustomView() {
            WeakReference weakReference = this.f;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            ActionMode.Callback callback = this.e;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            if (this.e == null) {
                return false;
            }
            if (!subMenuBuilder.hasVisibleItems()) {
                return true;
            }
            new MenuPopupHelper(WindowDecorActionBar.this.getThemedContext(), subMenuBuilder).show();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            if (this.e == null) {
                return;
            }
            invalidate();
            WindowDecorActionBar.this.f126g.showOverflowMenu();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public class TabImpl extends ActionBar.Tab {

        /* renamed from: a, reason: collision with root package name */
        public ActionBar.TabListener f128a;

        /* renamed from: b, reason: collision with root package name */
        public Object f129b;
        public Drawable c;
        public CharSequence d;
        public CharSequence e;
        public int f = -1;

        /* renamed from: g, reason: collision with root package name */
        public View f130g;

        public TabImpl() {
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Object getTag() {
            return this.f129b;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.f129b = obj;
            return this;
        }

        public ActionBar.TabListener getCallback() {
            return this.f128a;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.f128a = tabListener;
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public View getCustomView() {
            return this.f130g;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.f130g = view;
            int i = this.f;
            if (i >= 0) {
                WindowDecorActionBar.this.i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(WindowDecorActionBar.this.getThemedContext()).inflate(i, (ViewGroup) null));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.c;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public int getPosition() {
            return this.f;
        }

        public void setPosition(int i) {
            this.f = i;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence getText() {
            return this.d;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.c = drawable;
            int i = this.f;
            if (i >= 0) {
                WindowDecorActionBar.this.i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i) {
            return setIcon(AppCompatResources.getDrawable(WindowDecorActionBar.this.f124a, i));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.d = charSequence;
            int i = this.f;
            if (i >= 0) {
                WindowDecorActionBar.this.i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setText(int i) {
            return setText(WindowDecorActionBar.this.f124a.getResources().getText(i));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public void select() {
            WindowDecorActionBar.this.selectTab(this);
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i) {
            return setContentDescription(WindowDecorActionBar.this.f124a.getResources().getText(i));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.e = charSequence;
            int i = this.f;
            if (i >= 0) {
                WindowDecorActionBar.this.i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.e;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view) {
        this.f.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.f.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.f.setDropdownParams(spinnerAdapter, new z(onNavigationListener));
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getSelectedNavigationIndex() {
        TabImpl tabImpl;
        int navigationMode = this.f.getNavigationMode();
        if (navigationMode == 1) {
            return this.f.getDropdownSelectedPosition();
        }
        if (navigationMode == 2 && (tabImpl = this.k) != null) {
            return tabImpl.getPosition();
        }
        return -1;
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationItemCount() {
        int navigationMode = this.f.getNavigationMode();
        if (navigationMode == 1) {
            return this.f.getDropdownItemCount();
        }
        if (navigationMode != 2) {
            return 0;
        }
        return this.j.size();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getTabCount() {
        return this.j.size();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setNavigationMode(int i) {
        ActionBarOverlayLayout actionBarOverlayLayout;
        int navigationMode = this.f.getNavigationMode();
        if (navigationMode == 2) {
            this.l = getSelectedNavigationIndex();
            selectTab(null);
            this.i.setVisibility(8);
        }
        if (navigationMode != i && !this.s && (actionBarOverlayLayout = this.d) != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
        this.f.setNavigationMode(i);
        boolean z = false;
        if (i == 2) {
            c();
            this.i.setVisibility(0);
            int i2 = this.l;
            if (i2 != -1) {
                setSelectedNavigationItem(i2);
                this.l = -1;
            }
        }
        this.f.setCollapsible(i == 2 && !this.s);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.d;
        if (i == 2 && !this.s) {
            z = true;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getTabAt(int i) {
        return (ActionBar.Tab) this.j.get(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(int i) {
        this.f.setIcon(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.f.setIcon(drawable);
    }

    public boolean hasIcon() {
        return this.f.hasIcon();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(int i) {
        this.f.setLogo(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.f.setLogo(drawable);
    }

    public boolean hasLogo() {
        return this.f.hasLogo();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (this.m) {
            return;
        }
        setDisplayHomeAsUpEnabled(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        Menu menu;
        ActionModeImpl actionModeImpl = this.n;
        if (actionModeImpl == null || (menu = actionModeImpl.getMenu()) == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i, keyEvent, 0);
    }
}
