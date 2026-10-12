package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: a, reason: collision with root package name */
    public final Delegate f84a;

    /* renamed from: b, reason: collision with root package name */
    public final DrawerLayout f85b;
    public DrawerArrowDrawable c;
    public boolean d;
    public Drawable e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f86g;
    public final int h;
    public final int i;
    public View.OnClickListener j;
    public boolean k;

    public interface Delegate {
        Context getActionBarThemedContext();

        Drawable getThemeUpIndicator();

        boolean isNavigationVisible();

        void setActionBarDescription(@StringRes int i);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
    }

    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @StringRes int i, @StringRes int i2) {
        this(activity, (Toolbar) null, drawerLayout, i, i2);
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, @StringRes int i, @StringRes int i2) {
        this(activity, toolbar, drawerLayout, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ActionBarDrawerToggle(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, int i, int i2) {
        this.d = true;
        this.f = true;
        this.k = false;
        if (toolbar != null) {
            this.f84a = new b(toolbar);
            toolbar.setNavigationOnClickListener(new androidx.appcompat.app.a(this));
        } else if (activity instanceof DelegateProvider) {
            this.f84a = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.f84a = new a(activity);
        }
        this.f85b = drawerLayout;
        this.h = i;
        this.i = i2;
        this.c = new DrawerArrowDrawable(this.f84a.getActionBarThemedContext());
        this.e = this.f84a.getThemeUpIndicator();
    }

    public void syncState() {
        DrawerLayout drawerLayout = this.f85b;
        if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
            b(1.0f);
        } else {
            b(0.0f);
        }
        if (this.f) {
            a(this.c, drawerLayout.isDrawerOpen(GravityCompat.START) ? this.i : this.h);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f86g) {
            this.e = this.f84a.getThemeUpIndicator();
        }
        syncState();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.f) {
            return false;
        }
        DrawerLayout drawerLayout = this.f85b;
        int drawerLockMode = drawerLayout.getDrawerLockMode(GravityCompat.START);
        if (drawerLayout.isDrawerVisible(GravityCompat.START) && drawerLockMode != 2) {
            drawerLayout.closeDrawer(GravityCompat.START);
        } else if (drawerLockMode != 1) {
            drawerLayout.openDrawer(GravityCompat.START);
        }
        return true;
    }

    public void setHomeAsUpIndicator(int i) {
        setHomeAsUpIndicator(i != 0 ? this.f85b.getResources().getDrawable(i) : null);
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.f;
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.f) {
            if (z) {
                a(this.c, this.f85b.isDrawerOpen(GravityCompat.START) ? this.i : this.h);
            } else {
                a(this.e, 0);
            }
            this.f = z;
        }
    }

    @NonNull
    public DrawerArrowDrawable getDrawerArrowDrawable() {
        return this.c;
    }

    public void setDrawerArrowDrawable(@NonNull DrawerArrowDrawable drawerArrowDrawable) {
        this.c = drawerArrowDrawable;
        syncState();
    }

    public void setDrawerSlideAnimationEnabled(boolean z) {
        this.d = z;
        if (z) {
            return;
        }
        b(0.0f);
    }

    public boolean isDrawerSlideAnimationEnabled() {
        return this.d;
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f) {
        if (this.d) {
            b(Math.min(1.0f, Math.max(0.0f, f)));
        } else {
            b(0.0f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        b(1.0f);
        if (this.f) {
            this.f84a.setActionBarDescription(this.i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        b(0.0f);
        if (this.f) {
            this.f84a.setActionBarDescription(this.h);
        }
    }

    public View.OnClickListener getToolbarNavigationClickListener() {
        return this.j;
    }

    public void setToolbarNavigationClickListener(View.OnClickListener onClickListener) {
        this.j = onClickListener;
    }

    public final void a(Drawable drawable, int i) {
        boolean z = this.k;
        Delegate delegate = this.f84a;
        if (!z && !delegate.isNavigationVisible()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.k = true;
        }
        delegate.setActionBarUpIndicator(drawable, i);
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.e = this.f84a.getThemeUpIndicator();
            this.f86g = false;
        } else {
            this.e = drawable;
            this.f86g = true;
        }
        if (this.f) {
            return;
        }
        a(this.e, 0);
    }

    public final void b(float f) {
        if (f == 1.0f) {
            this.c.setVerticalMirror(true);
        } else if (f == 0.0f) {
            this.c.setVerticalMirror(false);
        }
        this.c.setProgress(f);
    }

    public static class a implements Delegate {

        /* renamed from: a, reason: collision with root package name */
        public final Activity f87a;

        public a(Activity activity) {
            this.f87a = activity;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TypedArray typedArrayObtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{R.attr.homeAsUpIndicator}, R.attr.actionBarStyle, 0);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            Activity activity = this.f87a;
            android.app.ActionBar actionBar = activity.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : activity;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            android.app.ActionBar actionBar = this.f87a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) {
            android.app.ActionBar actionBar = this.f87a.getActionBar();
            if (actionBar != null) {
                C0001a.b(actionBar, drawable);
                C0001a.a(actionBar, i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) {
            android.app.ActionBar actionBar = this.f87a.getActionBar();
            if (actionBar != null) {
                C0001a.a(actionBar, i);
            }
        }

        @RequiresApi(18)
        /* renamed from: androidx.appcompat.app.ActionBarDrawerToggle$a$a, reason: collision with other inner class name */
        public static class C0001a {
            private C0001a() {
            }

            @DoNotInline
            public static void a(android.app.ActionBar actionBar, int i) {
                actionBar.setHomeActionContentDescription(i);
            }

            @DoNotInline
            public static void b(android.app.ActionBar actionBar, Drawable drawable) {
                actionBar.setHomeAsUpIndicator(drawable);
            }
        }
    }

    public static class b implements Delegate {

        /* renamed from: a, reason: collision with root package name */
        public final Toolbar f88a;

        /* renamed from: b, reason: collision with root package name */
        public final Drawable f89b;
        public final CharSequence c;

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            return true;
        }

        public b(Toolbar toolbar) {
            this.f88a = toolbar;
            this.f89b = toolbar.getNavigationIcon();
            this.c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, @StringRes int i) {
            this.f88a.setNavigationIcon(drawable);
            setActionBarDescription(i);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(@StringRes int i) {
            Toolbar toolbar = this.f88a;
            if (i == 0) {
                toolbar.setNavigationContentDescription(this.c);
            } else {
                toolbar.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            return this.f89b;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return this.f88a.getContext();
        }
    }
}
