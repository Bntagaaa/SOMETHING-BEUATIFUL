package com.google.appinventor.components.runtime;

import android.R;
import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatCallback;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.appbar.AppBarLayout;
import com.google.appinventor.components.runtime.util.PaintUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.theme.IceCreamSandwichThemeHelper;
import com.google.appinventor.components.runtime.util.theme.ThemeHelper;

/* loaded from: classes.dex */
public class AppInventorCompatActivity extends Activity implements AppCompatCallback {
    private static final String LOG_TAG = "AppInventorCompatActivity";
    private static boolean actionBarEnabled;
    private static int primaryColor;
    protected AppBarLayout appBarLayout;
    private AppCompatDelegate appCompatDelegate;
    android.widget.LinearLayout frameWithTitle;
    protected ThemeHelper themeHelper;
    TextView titleBar;
    protected Toolbar toolbar;
    static final int DEFAULT_PRIMARY_COLOR = PaintUtil.hexStringToInt("&HFF6200EE");
    private static boolean classicMode = false;
    private static Theme currentTheme = Theme.PACKAGED;
    private static boolean didSetClassicModeFromYail = false;

    public enum Theme {
        PACKAGED,
        MATERIAL,
        MATERIAL_DARK
    }

    public static void setClassicModeFromYail(boolean z) {
    }

    public boolean isRepl() {
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeStarted(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    @Nullable
    public ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.themeHelper = new IceCreamSandwichThemeHelper(this);
        if (currentTheme != Theme.PACKAGED) {
            applyTheme();
        }
        AppCompatDelegate appCompatDelegateCreate = AppCompatDelegate.create(this, this);
        this.appCompatDelegate = appCompatDelegateCreate;
        appCompatDelegateCreate.onCreate(bundle);
        super.onCreate(bundle);
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this);
        this.frameWithTitle = linearLayout;
        linearLayout.setOrientation(1);
        setContentView(this.frameWithTitle);
        Toolbar toolbar = new Toolbar(this);
        this.toolbar = toolbar;
        toolbar.setLayoutParams(new Toolbar.LayoutParams(-1, -2));
        AppBarLayout appBarLayout = new AppBarLayout(this);
        this.appBarLayout = appBarLayout;
        appBarLayout.setLayoutParams(new AppBarLayout.LayoutParams(-1, -2));
        this.appBarLayout.addView(this.toolbar);
        this.appCompatDelegate.setSupportActionBar(this.toolbar);
        actionBarEnabled = this.themeHelper.hasActionBar();
    }

    public final boolean isAppCompatMode() {
        return this.appCompatDelegate != null;
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.onPostCreate(bundle);
        }
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.onPostResume();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.onStop();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.onDestroy();
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.setTitle(charSequence);
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        android.widget.LinearLayout linearLayout = this.frameWithTitle;
        if (view != linearLayout) {
            linearLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            view = this.frameWithTitle;
        }
        AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
        if (appCompatDelegate != null) {
            appCompatDelegate.setContentView(view);
        } else {
            super.setContentView(view);
        }
    }

    public ActionBar getSupportActionBar() {
        Window.Callback callback = getWindow().getCallback();
        try {
            AppCompatDelegate appCompatDelegate = this.appCompatDelegate;
            if (appCompatDelegate == null) {
                return null;
            }
            return appCompatDelegate.getSupportActionBar();
        } catch (IllegalStateException unused) {
            this.appCompatDelegate = null;
            getWindow().setCallback(callback);
            return null;
        }
    }

    public static boolean isEmulator() {
        String str = Build.PRODUCT;
        return str.contains("google_sdk") || str.equals("sdk") || str.contains("sdk_gphone");
    }

    public static boolean isActionBarEnabled() {
        return actionBarEnabled;
    }

    public void setActionBarEnabled(boolean z) {
        actionBarEnabled = z;
    }

    public static boolean isClassicMode() {
        return classicMode;
    }

    public void setClassicMode(boolean z) {
        if (!isRepl() || SdkLevel.getLevel() < 11) {
            return;
        }
        classicMode = z;
    }

    public static int getPrimaryColor() {
        return primaryColor;
    }

    public void setPrimaryColor(int i) {
        ActionBar supportActionBar = getSupportActionBar();
        int i2 = i == 0 ? DEFAULT_PRIMARY_COLOR : i;
        if (supportActionBar == null || i2 == primaryColor) {
            return;
        }
        primaryColor = i2;
        supportActionBar.setBackgroundDrawable(new ColorDrawable(i));
    }

    public void styleTitleBar() {
        ActionBar supportActionBar = getSupportActionBar();
        String str = LOG_TAG;
        Log.d(str, "actionBarEnabled = " + actionBarEnabled);
        Log.d(str, "actionBar = " + supportActionBar);
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(new ColorDrawable(getPrimaryColor()));
            if (actionBarEnabled) {
                supportActionBar.show();
            } else {
                supportActionBar.hide();
            }
        }
    }

    public void setAppInventorTheme(Theme theme) {
        if (theme == currentTheme) {
            return;
        }
        currentTheme = theme;
        applyTheme();
    }

    /* renamed from: com.google.appinventor.components.runtime.AppInventorCompatActivity$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme;

        static {
            int[] iArr = new int[Theme.values().length];
            $SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme = iArr;
            try {
                iArr[Theme.MATERIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme[Theme.MATERIAL_DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void applyTheme() {
        Log.d(LOG_TAG, "applyTheme " + currentTheme);
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme[currentTheme.ordinal()];
        if (i == 1) {
            setTheme(R.style.Theme.DeviceDefault.Light.NoActionBar);
        } else {
            if (i != 2) {
                return;
            }
            setTheme(R.style.Theme.DeviceDefault.NoActionBar);
        }
    }
}
