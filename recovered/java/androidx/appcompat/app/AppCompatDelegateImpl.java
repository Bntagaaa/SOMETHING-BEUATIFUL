package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.b0;
import androidx.appcompat.app.d0;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NavUtils;
import androidx.core.content.PermissionChecker;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.time.DurationKt;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    public static final SimpleArrayMap i0 = new SimpleArrayMap();
    public static final int[] j0 = {R.attr.windowBackground};
    public static final boolean k0 = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean l0 = true;
    public boolean A;
    public ViewGroup B;
    public TextView C;
    public View D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public PanelFeatureState[] M;
    public PanelFeatureState N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public Configuration S;
    public int T;
    public int U;
    public int V;
    public boolean W;
    public o X;
    public m Y;
    public boolean Z;
    public int a0;
    public boolean c0;
    public Rect d0;
    public Rect e0;
    public AppCompatViewInflater f0;
    public OnBackInvokedDispatcher g0;
    public OnBackInvokedCallback h0;
    public final Object j;
    public final Context k;
    public Window l;
    public l m;
    public final AppCompatCallback n;
    public ActionBar o;
    public SupportMenuInflater p;
    public CharSequence q;
    public DecorContentParent r;
    public e s;
    public r t;
    public ActionMode u;
    public ActionBarContextView v;
    public PopupWindow w;
    public Runnable x;
    public ViewPropertyAnimatorCompat y = null;
    public boolean z = true;
    public final Runnable b0 = new b();

    public interface d {
        @Nullable
        View onCreatePanelView(int i);

        boolean onPreparePanel(int i);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onSaveInstanceState(Bundle bundle) {
    }

    public class o extends n {
        public final d0 c;

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public int getApplyableNightMode() {
            Location location;
            boolean z;
            long j;
            d0 d0Var = this.c;
            d0.a aVar = d0Var.c;
            if (aVar.f156b > System.currentTimeMillis()) {
                z = aVar.f155a;
            } else {
                Context context = d0Var.f153a;
                int iCheckSelfPermission = PermissionChecker.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION");
                Location lastKnownLocation = null;
                LocationManager locationManager = d0Var.f154b;
                if (iCheckSelfPermission == 0) {
                    try {
                    } catch (Exception e) {
                        Log.d("TwilightManager", "Failed to get last known location", e);
                    }
                    Location lastKnownLocation2 = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                    location = lastKnownLocation2;
                } else {
                    location = null;
                }
                if (PermissionChecker.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    try {
                        if (locationManager.isProviderEnabled("gps")) {
                            lastKnownLocation = locationManager.getLastKnownLocation("gps");
                        }
                    } catch (Exception e2) {
                        Log.d("TwilightManager", "Failed to get last known location", e2);
                    }
                }
                if (lastKnownLocation == null || location == null ? lastKnownLocation != null : lastKnownLocation.getTime() > location.getTime()) {
                    location = lastKnownLocation;
                }
                if (location == null) {
                    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                    int i = Calendar.getInstance().get(11);
                    if (i < 6 || i >= 22) {
                        z = true;
                    }
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (c0.d == null) {
                        c0.d = new c0();
                    }
                    c0 c0Var = c0.d;
                    c0Var.calculateTwilight(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                    c0Var.calculateTwilight(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                    z = c0Var.c == 1;
                    long j2 = c0Var.f150b;
                    long j3 = c0Var.f149a;
                    c0Var.calculateTwilight(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                    long j4 = c0Var.f150b;
                    if (j2 == -1 || j3 == -1) {
                        j = jCurrentTimeMillis + 43200000;
                    } else {
                        if (jCurrentTimeMillis <= j3) {
                            j4 = jCurrentTimeMillis > j2 ? j3 : j2;
                        }
                        j = j4 + 60000;
                    }
                    aVar.f155a = z;
                    aVar.f156b = j;
                }
            }
            return z ? 2 : 1;
        }

        public o(d0 d0Var) {
            super();
            this.c = d0Var;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public void onChange() {
            AppCompatDelegateImpl.this.applyDayNight();
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    public class a implements Thread.UncaughtExceptionHandler {
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            boolean z = th instanceof Resources.NotFoundException;
            throw null;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.a0 & 1) != 0) {
                appCompatDelegateImpl.n(0);
            }
            if ((appCompatDelegateImpl.a0 & 4096) != 0) {
                appCompatDelegateImpl.n(108);
            }
            appCompatDelegateImpl.Z = false;
            appCompatDelegateImpl.a0 = 0;
        }
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        AppCompatActivity appCompatActivity = null;
        this.T = -100;
        this.k = context;
        this.n = appCompatCallback;
        this.j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (context instanceof AppCompatActivity) {
                        appCompatActivity = (AppCompatActivity) context;
                        break;
                    } else if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.T = appCompatActivity.getDelegate().getLocalNightMode();
            }
        }
        if (this.T == -100) {
            SimpleArrayMap simpleArrayMap = i0;
            Integer num = (Integer) simpleArrayMap.get(this.j.getClass().getName());
            if (num != null) {
                this.T = num.intValue();
                simpleArrayMap.remove(this.j.getClass().getName());
            }
        }
        if (window != null) {
            g(window);
        }
        AppCompatDrawableManager.preload();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    @androidx.annotation.RequiresApi(33)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setOnBackInvokedDispatcher(@androidx.annotation.Nullable android.window.OnBackInvokedDispatcher r3) {
        /*
            r2 = this;
            super.setOnBackInvokedDispatcher(r3)
            android.window.OnBackInvokedDispatcher r0 = r2.g0
            if (r0 == 0) goto L11
            android.window.OnBackInvokedCallback r1 = r2.h0
            if (r1 == 0) goto L11
            androidx.appcompat.app.AppCompatDelegateImpl.k.c(r0, r1)
            r0 = 0
            r2.h0 = r0
        L11:
            if (r3 != 0) goto L2b
            java.lang.Object r0 = r2.j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L2b
            r1 = r0
            android.app.Activity r1 = (android.app.Activity) r1
            android.view.Window r1 = r1.getWindow()
            if (r1 == 0) goto L2b
            android.app.Activity r0 = (android.app.Activity) r0
            android.window.OnBackInvokedDispatcher r3 = androidx.appcompat.app.AppCompatDelegateImpl.k.a(r0)
            r2.g0 = r3
            goto L2d
        L2b:
            r2.g0 = r3
        L2d:
            r2.z()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.setOnBackInvokedDispatcher(android.window.OnBackInvokedDispatcher):void");
    }

    public final void z() {
        OnBackInvokedCallback onBackInvokedCallback;
        PanelFeatureState panelState;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.g0 != null && (((panelState = getPanelState(0, false)) != null && panelState.m) || this.u != null)) {
                z = true;
            }
            if (z && this.h0 == null) {
                this.h0 = k.b(this.g0, this);
            } else {
                if (z || (onBackInvokedCallback = this.h0) == null) {
                    return;
                }
                k.c(this.g0, onBackInvokedCallback);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    public Context attachBaseContext2(@NonNull Context context) {
        this.P = true;
        int defaultNightMode = this.T;
        if (defaultNightMode == -100) {
            defaultNightMode = AppCompatDelegate.getDefaultNightMode();
        }
        int iT = t(context, defaultNightMode);
        if (AppCompatDelegate.c(context)) {
            AppCompatDelegate.e(context);
        }
        LocaleListCompat localeListCompatH = h(context);
        Configuration configuration = null;
        if (l0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(l(context, iT, localeListCompatH, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.ContextThemeWrapper) {
            try {
                ((androidx.appcompat.view.ContextThemeWrapper) context).applyOverrideConfiguration(l(context, iT, localeListCompatH, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!k0) {
            return super.attachBaseContext2(context);
        }
        int i2 = Build.VERSION.SDK_INT;
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (!configuration3.equals(configuration4)) {
            configuration = new Configuration();
            configuration.fontScale = 0.0f;
            if (configuration3.diff(configuration4) != 0) {
                float f2 = configuration3.fontScale;
                float f3 = configuration4.fontScale;
                if (f2 != f3) {
                    configuration.fontScale = f3;
                }
                int i3 = configuration3.mcc;
                int i4 = configuration4.mcc;
                if (i3 != i4) {
                    configuration.mcc = i4;
                }
                int i5 = configuration3.mnc;
                int i6 = configuration4.mnc;
                if (i5 != i6) {
                    configuration.mnc = i6;
                }
                if (i2 >= 24) {
                    i.a(configuration3, configuration4, configuration);
                } else if (!ObjectsCompat.equals(configuration3.locale, configuration4.locale)) {
                    configuration.locale = configuration4.locale;
                }
                int i7 = configuration3.touchscreen;
                int i8 = configuration4.touchscreen;
                if (i7 != i8) {
                    configuration.touchscreen = i8;
                }
                int i9 = configuration3.keyboard;
                int i10 = configuration4.keyboard;
                if (i9 != i10) {
                    configuration.keyboard = i10;
                }
                int i11 = configuration3.keyboardHidden;
                int i12 = configuration4.keyboardHidden;
                if (i11 != i12) {
                    configuration.keyboardHidden = i12;
                }
                int i13 = configuration3.navigation;
                int i14 = configuration4.navigation;
                if (i13 != i14) {
                    configuration.navigation = i14;
                }
                int i15 = configuration3.navigationHidden;
                int i16 = configuration4.navigationHidden;
                if (i15 != i16) {
                    configuration.navigationHidden = i16;
                }
                int i17 = configuration3.orientation;
                int i18 = configuration4.orientation;
                if (i17 != i18) {
                    configuration.orientation = i18;
                }
                int i19 = configuration3.screenLayout & 15;
                int i20 = configuration4.screenLayout & 15;
                if (i19 != i20) {
                    configuration.screenLayout |= i20;
                }
                int i21 = configuration3.screenLayout & FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE;
                int i22 = configuration4.screenLayout & FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE;
                if (i21 != i22) {
                    configuration.screenLayout |= i22;
                }
                int i23 = configuration3.screenLayout & 48;
                int i24 = configuration4.screenLayout & 48;
                if (i23 != i24) {
                    configuration.screenLayout |= i24;
                }
                int i25 = configuration3.screenLayout & 768;
                int i26 = configuration4.screenLayout & 768;
                if (i25 != i26) {
                    configuration.screenLayout |= i26;
                }
                if (i2 >= 26) {
                    if ((configuration3.colorMode & 3) != (configuration4.colorMode & 3)) {
                        configuration.colorMode |= configuration4.colorMode & 3;
                    }
                    if ((configuration3.colorMode & 12) != (configuration4.colorMode & 12)) {
                        configuration.colorMode |= configuration4.colorMode & 12;
                    }
                }
                int i27 = configuration3.uiMode & 15;
                int i28 = configuration4.uiMode & 15;
                if (i27 != i28) {
                    configuration.uiMode |= i28;
                }
                int i29 = configuration3.uiMode & 48;
                int i30 = configuration4.uiMode & 48;
                if (i29 != i30) {
                    configuration.uiMode |= i30;
                }
                int i31 = configuration3.screenWidthDp;
                int i32 = configuration4.screenWidthDp;
                if (i31 != i32) {
                    configuration.screenWidthDp = i32;
                }
                int i33 = configuration3.screenHeightDp;
                int i34 = configuration4.screenHeightDp;
                if (i33 != i34) {
                    configuration.screenHeightDp = i34;
                }
                int i35 = configuration3.smallestScreenWidthDp;
                int i36 = configuration4.smallestScreenWidthDp;
                if (i35 != i36) {
                    configuration.smallestScreenWidthDp = i36;
                }
                int i37 = configuration3.densityDpi;
                int i38 = configuration4.densityDpi;
                if (i37 != i38) {
                    configuration.densityDpi = i38;
                }
            }
        }
        Configuration configurationL = l(context, iT, localeListCompatH, configuration, true);
        androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, androidx.appcompat.R.style.Theme_AppCompat_Empty);
        contextThemeWrapper.applyOverrideConfiguration(configurationL);
        try {
            if (context.getTheme() != null) {
                ResourcesCompat.ThemeCompat.rebase(contextThemeWrapper.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.attachBaseContext2(contextThemeWrapper);
    }

    @RequiresApi(17)
    public static class p {
        private p() {
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        String parentActivityName;
        this.P = true;
        f(false, true);
        p();
        Object obj = this.j;
        if (obj instanceof Activity) {
            try {
                parentActivityName = NavUtils.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
                parentActivityName = null;
            }
            if (parentActivityName != null) {
                ActionBar actionBar = this.o;
                if (actionBar == null) {
                    this.c0 = true;
                } else {
                    actionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            synchronized (AppCompatDelegate.h) {
                AppCompatDelegate.d(this);
                AppCompatDelegate.f103g.add(new WeakReference(this));
            }
        }
        this.S = new Configuration(this.k.getResources().getConfiguration());
        this.Q = true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar getSupportActionBar() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        s();
        return this.o;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        if (this.o == null || getSupportActionBar().invalidateOptionsMenu()) {
            return;
        }
        this.a0 |= 1;
        if (this.Z) {
            return;
        }
        ViewCompat.postOnAnimation(this.l.getDecorView(), this.b0);
        this.Z = true;
    }

    public final class e implements MenuPresenter.Callback {
        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            Window.Callback callback = AppCompatDelegateImpl.this.l.getCallback();
            if (callback == null) {
                return true;
            }
            callback.onMenuOpened(108, menuBuilder);
            return true;
        }

        public e() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.j(menuBuilder);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        PanelFeatureState panelFeatureState;
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.R) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            PanelFeatureState[] panelFeatureStateArr = this.M;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                    if (panelFeatureState != null && panelFeatureState.h == rootMenu) {
                        break;
                    }
                    i2++;
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                return callback.onMenuItemSelected(panelFeatureState.f104a, menuItem);
            }
        }
        return false;
    }

    public final void s() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        if (this.G && this.o == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                this.o = new WindowDecorActionBar((Activity) obj, this.H);
            } else if (obj instanceof Dialog) {
                this.o = new WindowDecorActionBar((Dialog) obj);
            }
            ActionBar actionBar = this.o;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.c0);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        CharSequence title;
        Object obj = this.j;
        if (obj instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.p = null;
            if (supportActionBar != null) {
                supportActionBar.a();
            }
            this.o = null;
            if (toolbar != null) {
                if (obj instanceof Activity) {
                    title = ((Activity) obj).getTitle();
                } else {
                    title = this.q;
                }
                b0 b0Var = new b0(toolbar, title, this.m);
                this.o = b0Var;
                this.m.f115b = b0Var.c;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.m.f115b = null;
            }
            invalidateOptionsMenu();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater getMenuInflater() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.p == null) {
            s();
            ActionBar actionBar = this.o;
            this.p = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : this.k);
        }
        return this.p;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        return (T) this.l.findViewById(i2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        ActionBar supportActionBar;
        if (this.G && this.A && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = this.k;
        appCompatDrawableManager.onConfigurationChanged(context);
        this.S = new Configuration(context.getResources().getConfiguration());
        f(false, false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStart() throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        f(true, false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStop() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostResume() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.m.bypassOnContentChanged(this.l.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(int i2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.k).inflate(i2, viewGroup);
        this.m.bypassOnContentChanged(this.l.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.m.bypassOnContentChanged(this.l.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o();
        ((ViewGroup) this.B.findViewById(R.id.content)).addView(view, layoutParams);
        this.m.bypassOnContentChanged(this.l.getCallback());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDestroy() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = androidx.appcompat.app.AppCompatDelegate.h
            monitor-enter(r0)
            androidx.appcompat.app.AppCompatDelegate.d(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.Z
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.l
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.b0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.R = r0
            int r0 = r3.T
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.i0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.T
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.i0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            androidx.appcompat.app.ActionBar r0 = r3.o
            if (r0 == 0) goto L63
            r0.a()
        L63:
            androidx.appcompat.app.AppCompatDelegateImpl$o r0 = r3.X
            if (r0 == 0) goto L6a
            r0.a()
        L6a:
            androidx.appcompat.app.AppCompatDelegateImpl$m r0 = r3.Y
            if (r0 == 0) goto L71
            r0.a()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onDestroy():void");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setTheme(@StyleRes int i2) {
        this.U = i2;
    }

    public final void p() {
        if (this.l == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                g(((Activity) obj).getWindow());
            }
        }
        if (this.l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final void g(Window window) {
        if (this.l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof l) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        l lVar = new l(callback);
        this.m = lVar;
        window.setCallback(lVar);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.k, (AttributeSet) null, j0);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            window.setBackgroundDrawable(drawableIfKnown);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        this.l = window;
        if (Build.VERSION.SDK_INT < 33 || this.g0 != null) {
            return;
        }
        setOnBackInvokedDispatcher(null);
    }

    public final void o() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup;
        CharSequence title;
        if (this.A) {
            return;
        }
        int[] iArr = androidx.appcompat.R.styleable.AppCompatTheme;
        Context context = this.k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int i2 = androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar;
        if (!typedArrayObtainStyledAttributes.hasValue(i2)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i2, false)) {
            requestWindowFeature(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            requestWindowFeature(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        p();
        this.l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (!this.K) {
            if (this.J) {
                viewGroup = (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.H = false;
                this.G = false;
            } else if (this.G) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.ContextThemeWrapper(context, typedValue.resourceId) : context).inflate(androidx.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
                DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(androidx.appcompat.R.id.decor_content_parent);
                this.r = decorContentParent;
                decorContentParent.setWindowCallback(this.l.getCallback());
                if (this.H) {
                    this.r.initFeature(109);
                }
                if (this.E) {
                    this.r.initFeature(2);
                }
                if (this.F) {
                    this.r.initFeature(5);
                }
            } else {
                viewGroup = null;
            }
        } else {
            viewGroup = this.I ? (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.G + ", windowActionBarOverlay: " + this.H + ", android:windowIsFloating: " + this.J + ", windowActionModeOverlay: " + this.I + ", windowNoTitle: " + this.K + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new androidx.appcompat.app.l(this));
        if (this.r == null) {
            this.C = (TextView) viewGroup.findViewById(androidx.appcompat.R.id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new androidx.appcompat.app.n(this));
        this.B = viewGroup;
        Object obj = this.j;
        if (obj instanceof Activity) {
            title = ((Activity) obj).getTitle();
        } else {
            title = this.q;
        }
        if (!TextUtils.isEmpty(title)) {
            DecorContentParent decorContentParent2 = this.r;
            if (decorContentParent2 == null) {
                ActionBar actionBar = this.o;
                if (actionBar != null) {
                    actionBar.setWindowTitle(title);
                } else {
                    TextView textView = this.C;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            } else {
                decorContentParent2.setWindowTitle(title);
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.B.findViewById(R.id.content);
        View decorView = this.l.getDecorView();
        contentFrameLayout2.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
        int i3 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor;
        if (typedArrayObtainStyledAttributes2.hasValue(i3)) {
            typedArrayObtainStyledAttributes2.getValue(i3, contentFrameLayout2.getFixedWidthMajor());
        }
        int i4 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor;
        if (typedArrayObtainStyledAttributes2.hasValue(i4)) {
            typedArrayObtainStyledAttributes2.getValue(i4, contentFrameLayout2.getFixedWidthMinor());
        }
        int i5 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (typedArrayObtainStyledAttributes2.hasValue(i5)) {
            typedArrayObtainStyledAttributes2.getValue(i5, contentFrameLayout2.getFixedHeightMajor());
        }
        int i6 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor;
        if (typedArrayObtainStyledAttributes2.hasValue(i6)) {
            typedArrayObtainStyledAttributes2.getValue(i6, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.A = true;
        PanelFeatureState panelState = getPanelState(0, false);
        if (this.R) {
            return;
        }
        if (panelState == null || panelState.h == null) {
            this.a0 |= 4096;
            if (this.Z) {
                return;
            }
            ViewCompat.postOnAnimation(this.l.getDecorView(), this.b0);
            this.Z = true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.q = charSequence;
        DecorContentParent decorContentParent = this.r;
        if (decorContentParent == null) {
            ActionBar actionBar = this.o;
            if (actionBar != null) {
                actionBar.setWindowTitle(charSequence);
                return;
            }
            TextView textView = this.C;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        decorContentParent.setWindowTitle(charSequence);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0049  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.appcompat.view.ActionMode startSupportActionMode(@androidx.annotation.NonNull androidx.appcompat.view.ActionMode.Callback r9) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.startSupportActionMode(androidx.appcompat.view.ActionMode$Callback):androidx.appcompat.view.ActionMode");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z) {
        this.z = z;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.z;
    }

    public final boolean u() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z = this.O;
        this.O = false;
        PanelFeatureState panelState = getPanelState(0, false);
        if (panelState == null || !panelState.m) {
            ActionMode actionMode = this.u;
            if (actionMode != null) {
                actionMode.finish();
                return true;
            }
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar == null || !supportActionBar.collapseActionView()) {
                return false;
            }
        } else if (!z) {
            k(panelState, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m(android.view.KeyEvent r7) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m(android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        if (this.f0 == null) {
            int[] iArr = androidx.appcompat.R.styleable.AppCompatTheme;
            Context context2 = this.k;
            String string = context2.obtainStyledAttributes(iArr).getString(androidx.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f0 = new AppCompatViewInflater();
            } else {
                try {
                    this.f0 = (AppCompatViewInflater) context2.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f0 = new AppCompatViewInflater();
                }
            }
        }
        return this.f0.createView(view, str, context, attributeSet, false, false, true, VectorEnabledTintResources.shouldBeUsed());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.k);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r18, android.view.KeyEvent r19) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.v(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        DecorContentParent decorContentParent = this.r;
        if (decorContentParent != null && decorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(this.k).hasPermanentMenuKey() || this.r.isOverflowMenuShowPending())) {
            Window.Callback callback = this.l.getCallback();
            if (!this.r.isOverflowMenuShowing()) {
                if (callback == null || this.R) {
                    return;
                }
                if (this.Z && (this.a0 & 1) != 0) {
                    View decorView = this.l.getDecorView();
                    Runnable runnable = this.b0;
                    decorView.removeCallbacks(runnable);
                    runnable.run();
                }
                PanelFeatureState panelState = getPanelState(0, true);
                MenuBuilder menuBuilder2 = panelState.h;
                if (menuBuilder2 == null || panelState.o || !callback.onPreparePanel(0, panelState.f106g, menuBuilder2)) {
                    return;
                }
                callback.onMenuOpened(108, panelState.h);
                this.r.showOverflowMenu();
                return;
            }
            this.r.hideOverflowMenu();
            if (this.R) {
                return;
            }
            callback.onPanelClosed(108, getPanelState(0, true).h);
            return;
        }
        PanelFeatureState panelState2 = getPanelState(0, true);
        panelState2.n = true;
        k(panelState2, false);
        v(panelState2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean x(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r12, android.view.KeyEvent r13) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.x(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):boolean");
    }

    public final void j(MenuBuilder menuBuilder) {
        if (this.L) {
            return;
        }
        this.L = true;
        this.r.dismissPopups();
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.R) {
            callback.onPanelClosed(108, menuBuilder);
        }
        this.L = false;
    }

    public final void k(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z && panelFeatureState.f104a == 0 && (decorContentParent = this.r) != null && decorContentParent.isOverflowMenuShowing()) {
            j(panelFeatureState.h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.k.getSystemService("window");
        if (windowManager != null && panelFeatureState.m && (viewGroup = panelFeatureState.e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                i(panelFeatureState.f104a, panelFeatureState, null);
            }
        }
        panelFeatureState.k = false;
        panelFeatureState.l = false;
        panelFeatureState.m = false;
        panelFeatureState.f = null;
        panelFeatureState.n = true;
        if (this.N == panelFeatureState) {
            this.N = null;
        }
        if (panelFeatureState.f104a == 0) {
            z();
        }
    }

    public final void i(int i2, PanelFeatureState panelFeatureState, MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.M;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menuBuilder = panelFeatureState.h;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.m) && !this.R) {
            this.m.bypassOnPanelClosed(this.l.getCallback(), i2, menuBuilder);
        }
    }

    public PanelFeatureState getPanelState(int i2, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.M = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState();
        panelFeatureState2.f104a = i2;
        panelFeatureState2.n = false;
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    public final boolean w(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.k || x(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.h) != null) {
            return menuBuilder.performShortcut(i2, keyEvent, 1);
        }
        return false;
    }

    public final void n(int i2) {
        PanelFeatureState panelState;
        PanelFeatureState panelState2 = getPanelState(i2, true);
        if (panelState2.h != null) {
            Bundle bundle = new Bundle();
            panelState2.h.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.p = bundle;
            }
            panelState2.h.stopDispatchingItemsChanged();
            panelState2.h.clear();
        }
        panelState2.o = true;
        panelState2.n = true;
        if ((i2 != 108 && i2 != 0) || this.r == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.k = false;
        x(panelState, null);
    }

    public final void y() {
        if (this.A) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean hasWindowFeature(int i2) {
        int i3;
        boolean z;
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i3 = 108;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i3 = 109;
        } else {
            i3 = i2;
        }
        if (i3 == 1) {
            z = this.K;
        } else if (i3 == 2) {
            z = this.E;
        } else if (i3 == 5) {
            z = this.F;
        } else if (i3 == 10) {
            z = this.I;
        } else if (i3 == 108) {
            z = this.G;
        } else {
            z = i3 != 109 ? false : this.H;
        }
        return z || this.l.hasFeature(i2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean requestWindowFeature(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        if (this.K && i2 == 108) {
            return false;
        }
        if (this.G && i2 == 1) {
            this.G = false;
        }
        if (i2 == 1) {
            y();
            this.K = true;
            return true;
        }
        if (i2 == 2) {
            y();
            this.E = true;
            return true;
        }
        if (i2 == 5) {
            y();
            this.F = true;
            return true;
        }
        if (i2 == 10) {
            y();
            this.I = true;
            return true;
        }
        if (i2 == 108) {
            y();
            this.G = true;
            return true;
        }
        if (i2 == 109) {
            y();
            this.H = true;
            return true;
        }
        return this.l.requestFeature(i2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public Context getContextForDelegate() {
        return this.k;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void a() throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        LocaleListCompat localeListCompat;
        Context context = this.k;
        if (AppCompatDelegate.c(context) && (localeListCompat = AppCompatDelegate.c) != null && !localeListCompat.equals(AppCompatDelegate.d)) {
            AppCompatDelegate.f101a.execute(new androidx.appcompat.app.k(context, 1));
        }
        f(true, true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean applyDayNight() {
        return f(true, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0260 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x01e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x01b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(boolean r19, boolean r20) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.f(boolean, boolean):boolean");
    }

    public static LocaleListCompat h(Context context) {
        LocaleListCompat localeListCompat;
        LocaleListCompat localeListCompatForLanguageTags;
        Locale locale;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33 || (localeListCompat = AppCompatDelegate.c) == null) {
            return null;
        }
        LocaleListCompat localeListCompatR = r(context.getApplicationContext().getResources().getConfiguration());
        if (i2 >= 24) {
            if (localeListCompat.isEmpty()) {
                localeListCompatForLanguageTags = LocaleListCompat.getEmptyLocaleList();
            } else {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (int i3 = 0; i3 < localeListCompatR.size() + localeListCompat.size(); i3++) {
                    if (i3 < localeListCompat.size()) {
                        locale = localeListCompat.get(i3);
                    } else {
                        locale = localeListCompatR.get(i3 - localeListCompat.size());
                    }
                    if (locale != null) {
                        linkedHashSet.add(locale);
                    }
                }
                localeListCompatForLanguageTags = LocaleListCompat.create((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
            }
        } else if (localeListCompat.isEmpty()) {
            localeListCompatForLanguageTags = LocaleListCompat.getEmptyLocaleList();
        } else {
            localeListCompatForLanguageTags = LocaleListCompat.forLanguageTags(localeListCompat.get(0).toString());
        }
        return localeListCompatForLanguageTags.isEmpty() ? localeListCompatR : localeListCompatForLanguageTags;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @RequiresApi(17)
    public void setLocalNightMode(int i2) {
        if (this.T != i2) {
            this.T = i2;
            if (this.P) {
                applyDayNight();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public int getLocalNightMode() {
        return this.T;
    }

    public static LocaleListCompat r(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 24) {
            return i.b(configuration);
        }
        return LocaleListCompat.forLanguageTags(h.a(configuration.locale));
    }

    public static Configuration l(Context context, int i2, LocaleListCompat localeListCompat, Configuration configuration, boolean z) {
        int i3;
        if (i2 == 1) {
            i3 = 16;
        } else if (i2 != 2) {
            i3 = z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i3 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                i.c(configuration2, localeListCompat);
                return configuration2;
            }
            g.b(configuration2, localeListCompat.get(0));
            g.a(configuration2, localeListCompat.get(0));
        }
        return configuration2;
    }

    public final n q(Context context) {
        if (this.X == null) {
            if (d0.d == null) {
                Context applicationContext = context.getApplicationContext();
                d0.d = new d0(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.X = new o(d0.d);
        }
        return this.X;
    }

    public final int t(Context context, int i2) {
        if (i2 != -100) {
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != 1 && i2 != 2) {
                        if (i2 != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.Y == null) {
                            this.Y = new m(context);
                        }
                        return this.Y.getApplyableNightMode();
                    }
                } else if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return q(context).getApplyableNightMode();
                }
            }
            return i2;
        }
        return -1;
    }

    public class f implements ActionMode.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final ActionMode.Callback f112a;

        public f(ActionMode.Callback callback) {
            this.f112a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f112a.onCreateActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            ViewCompat.requestApplyInsets(AppCompatDelegateImpl.this.B);
            return this.f112a.onPrepareActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f112a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f112a.onDestroyActionMode(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.w != null) {
                appCompatDelegateImpl.l.getDecorView().removeCallbacks(appCompatDelegateImpl.x);
            }
            if (appCompatDelegateImpl.v != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.y;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.cancel();
                }
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(appCompatDelegateImpl.v).alpha(0.0f);
                appCompatDelegateImpl.y = viewPropertyAnimatorCompatAlpha;
                viewPropertyAnimatorCompatAlpha.setListener(new a());
            }
            AppCompatCallback appCompatCallback = appCompatDelegateImpl.n;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl.u);
            }
            appCompatDelegateImpl.u = null;
            ViewCompat.requestApplyInsets(appCompatDelegateImpl.B);
            appCompatDelegateImpl.z();
        }

        public class a extends ViewPropertyAnimatorListenerAdapter {
            public a() {
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                f fVar = f.this;
                AppCompatDelegateImpl.this.v.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.v.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.v.getParent());
                }
                AppCompatDelegateImpl.this.v.killMode();
                AppCompatDelegateImpl.this.y.setListener(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.y = null;
                ViewCompat.requestApplyInsets(appCompatDelegateImpl2.B);
            }
        }
    }

    public final class r implements MenuPresenter.Callback {
        public r() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            PanelFeatureState panelFeatureState;
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            int i = 0;
            boolean z2 = rootMenu != menuBuilder;
            if (z2) {
                menuBuilder = rootMenu;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            PanelFeatureState[] panelFeatureStateArr = appCompatDelegateImpl.M;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            while (true) {
                if (i < length) {
                    panelFeatureState = panelFeatureStateArr[i];
                    if (panelFeatureState != null && panelFeatureState.h == menuBuilder) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                if (z2) {
                    appCompatDelegateImpl.i(panelFeatureState.f104a, panelFeatureState, rootMenu);
                    appCompatDelegateImpl.k(panelFeatureState, true);
                } else {
                    appCompatDelegateImpl.k(panelFeatureState, z);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            Window.Callback callback;
            if (menuBuilder != menuBuilder.getRootMenu()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.G || (callback = appCompatDelegateImpl.l.getCallback()) == null || appCompatDelegateImpl.R) {
                return true;
            }
            callback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    public static final class PanelFeatureState {

        /* renamed from: a, reason: collision with root package name */
        public int f104a;

        /* renamed from: b, reason: collision with root package name */
        public int f105b;
        public int c;
        public int d;
        public ViewGroup e;
        public View f;

        /* renamed from: g, reason: collision with root package name */
        public View f106g;
        public MenuBuilder h;
        public ListMenuPresenter i;
        public androidx.appcompat.view.ContextThemeWrapper j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o;
        public Bundle p;
        public boolean qwertyMode;

        public boolean hasPanelItems() {
            if (this.f == null) {
                return false;
            }
            return this.f106g != null || this.i.getAdapter().getCount() > 0;
        }

        public void clearMenuPresenters() {
            MenuBuilder menuBuilder = this.h;
            if (menuBuilder != null) {
                menuBuilder.removeMenuPresenter(this.i);
            }
            this.i = null;
        }

        @SuppressLint({"BanParcelableUsage"})
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0002a();

            /* renamed from: a, reason: collision with root package name */
            public int f107a;

            /* renamed from: b, reason: collision with root package name */
            public boolean f108b;
            public Bundle c;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f107a);
                parcel.writeInt(this.f108b ? 1 : 0);
                if (this.f108b) {
                    parcel.writeBundle(this.c);
                }
            }

            public static a a(Parcel parcel, ClassLoader classLoader) {
                a aVar = new a();
                aVar.f107a = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                aVar.f108b = z;
                if (z) {
                    aVar.c = parcel.readBundle(classLoader);
                }
                return aVar;
            }

            /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$a$a, reason: collision with other inner class name */
            public class C0002a implements Parcelable.ClassLoaderCreator<a> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return a.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public a createFromParcel(Parcel parcel) {
                    return a.a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                public a[] newArray(int i) {
                    return new a[i];
                }
            }
        }
    }

    public class q extends ContentFrameLayout {
        public q(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.k(appCompatDelegateImpl.getPanelState(0, true), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i));
        }
    }

    public class l extends WindowCallbackWrapper {

        /* renamed from: b, reason: collision with root package name */
        public b0.e f115b;
        public boolean c;
        public boolean d;
        public boolean e;

        public l(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (this.d) {
                return getWrapped().dispatchKeyEvent(keyEvent);
            }
            return AppCompatDelegateImpl.this.m(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (!super.dispatchKeyShortcutEvent(keyEvent)) {
                int keyCode = keyEvent.getKeyCode();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                ActionBar supportActionBar = appCompatDelegateImpl.getSupportActionBar();
                if (supportActionBar == null || !supportActionBar.onKeyShortcut(keyCode, keyEvent)) {
                    PanelFeatureState panelFeatureState = appCompatDelegateImpl.N;
                    if (panelFeatureState != null && appCompatDelegateImpl.w(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
                        PanelFeatureState panelFeatureState2 = appCompatDelegateImpl.N;
                        if (panelFeatureState2 != null) {
                            panelFeatureState2.l = true;
                            return true;
                        }
                    } else {
                        if (appCompatDelegateImpl.N == null) {
                            PanelFeatureState panelState = appCompatDelegateImpl.getPanelState(0, true);
                            appCompatDelegateImpl.x(panelState, keyEvent);
                            boolean zW = appCompatDelegateImpl.w(panelState, keyEvent.getKeyCode(), keyEvent);
                            panelState.k = false;
                            if (zW) {
                            }
                        }
                        return false;
                    }
                }
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            View viewOnCreatePanelView;
            b0.e eVar = this.f115b;
            return (eVar == null || (viewOnCreatePanelView = eVar.onCreatePanelView(i)) == null) ? super.onCreatePanelView(i) : viewOnCreatePanelView;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
            if (this.c) {
                getWrapped().onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(true);
            }
            b0.e eVar = this.f115b;
            boolean zOnPreparePanel = eVar != null && eVar.onPreparePanel(i);
            if (!zOnPreparePanel) {
                zOnPreparePanel = super.onPreparePanel(i, view, menu);
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                ActionBar supportActionBar = appCompatDelegateImpl.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.dispatchMenuVisibilityChanged(true);
                }
            } else {
                appCompatDelegateImpl.getClass();
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (this.e) {
                getWrapped().onPanelClosed(i, menu);
                return;
            }
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                ActionBar supportActionBar = appCompatDelegateImpl.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.dispatchMenuVisibilityChanged(false);
                    return;
                }
                return;
            }
            if (i == 0) {
                PanelFeatureState panelState = appCompatDelegateImpl.getPanelState(i, true);
                if (panelState.m) {
                    appCompatDelegateImpl.k(panelState, false);
                    return;
                }
                return;
            }
            appCompatDelegateImpl.getClass();
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.isHandleNativeActionModesEnabled()) {
                return super.onWindowStartingActionMode(callback);
            }
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(appCompatDelegateImpl.k, callback);
            androidx.appcompat.view.ActionMode actionModeStartSupportActionMode = appCompatDelegateImpl.startSupportActionMode(callbackWrapper);
            if (actionModeStartSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(actionModeStartSupportActionMode);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(23)
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.isHandleNativeActionModesEnabled() && i == 0) {
                SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(appCompatDelegateImpl.k, callback);
                androidx.appcompat.view.ActionMode actionModeStartSupportActionMode = appCompatDelegateImpl.startSupportActionMode(callbackWrapper);
                if (actionModeStartSupportActionMode != null) {
                    return callbackWrapper.getActionModeWrapper(actionModeStartSupportActionMode);
                }
                return null;
            }
            return super.onWindowStartingActionMode(callback, i);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            MenuBuilder menuBuilder;
            PanelFeatureState panelState = AppCompatDelegateImpl.this.getPanelState(0, true);
            if (panelState != null && (menuBuilder = panelState.h) != null) {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        public void bypassOnContentChanged(Window.Callback callback) {
            try {
                this.c = true;
                callback.onContentChanged();
            } finally {
                this.c = false;
            }
        }

        public boolean bypassDispatchKeyEvent(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.d = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.d = false;
            }
        }

        public void bypassOnPanelClosed(Window.Callback callback, int i, Menu menu) {
            try {
                this.e = true;
                callback.onPanelClosed(i, menu);
            } finally {
                this.e = false;
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public abstract class n {

        /* renamed from: a, reason: collision with root package name */
        public BroadcastReceiver f116a;

        public abstract IntentFilter b();

        public abstract int getApplyableNightMode();

        public abstract void onChange();

        public n() {
        }

        public final void c() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f116a == null) {
                this.f116a = new t(this);
            }
            AppCompatDelegateImpl.this.k.registerReceiver(this.f116a, intentFilterB);
        }

        public final void a() {
            BroadcastReceiver broadcastReceiver = this.f116a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.k.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f116a = null;
            }
        }
    }

    public class m extends n {
        public final PowerManager c;

        public m(Context context) {
            super();
            this.c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public void onChange() {
            AppCompatDelegateImpl.this.applyDayNight();
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.n
        public int getApplyableNightMode() {
            return this.c.isPowerSaveMode() ? 2 : 1;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new c();
    }

    public class c implements ActionBarDrawerToggle.Delegate {
        public c() {
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{androidx.appcompat.R.attr.homeAsUpIndicator});
            Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(0);
            tintTypedArrayObtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            ActionBar supportActionBar = appCompatDelegateImpl.getSupportActionBar();
            Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
            return themedContext == null ? appCompatDelegateImpl.k : themedContext;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeAsUpIndicator(drawable);
                supportActionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeActionContentDescription(i);
            }
        }
    }

    @RequiresApi(17)
    public static class g {
        private g() {
        }

        @DoNotInline
        public static void a(Configuration configuration, Locale locale) {
            configuration.setLayoutDirection(locale);
        }

        @DoNotInline
        public static void b(Configuration configuration, Locale locale) {
            configuration.setLocale(locale);
        }
    }

    @RequiresApi(21)
    public static class h {
        private h() {
        }

        @DoNotInline
        public static String a(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    @RequiresApi(24)
    public static class i {
        private i() {
        }

        @DoNotInline
        public static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        @DoNotInline
        public static LocaleListCompat b(Configuration configuration) {
            return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
        }

        @DoNotInline
        public static void c(Configuration configuration, LocaleListCompat localeListCompat) {
            configuration.setLocales(LocaleList.forLanguageTags(localeListCompat.toLanguageTags()));
        }

        @DoNotInline
        public static void setDefaultLocales(LocaleListCompat localeListCompat) {
            LocaleList.setDefault(LocaleList.forLanguageTags(localeListCompat.toLanguageTags()));
        }
    }

    @RequiresApi(26)
    public static class j {
        private j() {
        }
    }

    @RequiresApi(33)
    public static class k {
        private k() {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [android.window.OnBackInvokedCallback, androidx.appcompat.app.s] */
        @DoNotInline
        public static OnBackInvokedCallback b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            ?? r0 = new OnBackInvokedCallback() { // from class: androidx.appcompat.app.s
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                    appCompatDelegateImpl.u();
                }
            };
            androidx.activity.e.e(obj).registerOnBackInvokedCallback(DurationKt.NANOS_IN_MILLIS, r0);
            return r0;
        }

        @DoNotInline
        public static void c(Object obj, Object obj2) {
            androidx.activity.e.e(obj).unregisterOnBackInvokedCallback(androidx.activity.e.b(obj2));
        }

        @DoNotInline
        public static OnBackInvokedDispatcher a(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }
    }
}
