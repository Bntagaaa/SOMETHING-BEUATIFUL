package com.google.appinventor.components.runtime;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.common.HorizontalAlignment;
import com.google.appinventor.components.common.Permission;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.ScreenAnimation;
import com.google.appinventor.components.common.ScreenOrientation;
import com.google.appinventor.components.common.VerticalAlignment;
import com.google.appinventor.components.common.YaVersion;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.collect.Lists;
import com.google.appinventor.components.runtime.collect.Maps;
import com.google.appinventor.components.runtime.collect.Sets;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.multidex.MultiDex;
import com.google.appinventor.components.runtime.util.AlignmentUtil;
import com.google.appinventor.components.runtime.util.AnimationUtil;
import com.google.appinventor.components.runtime.util.BulkPermissionRequest;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.OnInitializeListener;
import com.google.appinventor.components.runtime.util.PaintUtil;
import com.google.appinventor.components.runtime.util.QUtil;
import com.google.appinventor.components.runtime.util.ScreenDensityUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.ViewUtil;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.expr.Declaration;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.json.JSONException;

@UsesPermissions({"android.permission.INTERNET"})
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Top-level component containing all other components in the program", showOnPalette = false, version = 31)
@SimpleObject
/* loaded from: classes.dex */
public class Form extends AppInventorCompatActivity implements Component, ComponentContainer, HandlesEventDispatching, ViewTreeObserver.OnGlobalLayoutListener {
    public static final String APPINVENTOR_URL_SCHEME = "niotron";
    private static final String ARGUMENT_NAME = "APP_INVENTOR_START";
    public static final String ASSETS_PREFIX = "file:///android_asset/";
    private static String CLASS_NAME = null;
    private static final String LOG_TAG = "Form";
    public static final int MAX_PERMISSION_NONCE = 100000;
    private static final String RESULT_NAME = "APP_INVENTOR_RESULT";
    private static final int SWITCH_FORM_REQUEST_CODE = 1;
    protected static Form activeForm;
    private static boolean applicationIsBeingClosed;
    private static boolean sCompatibilityMode;
    private static boolean showListsAsJson;
    private String aboutScreen;
    private int accentColor;
    private boolean actionBarEnabled;
    private final HashMap<Integer, ActivityResultListener> activityResultMap;
    private final java.util.Map<Integer, Set<ActivityResultListener>> activityResultMultiMap;
    private AlignmentUtil alignmentSetter;
    private int backgroundColor;
    private Drawable backgroundDrawable;
    private boolean bigDefaultText;
    private BottomAppBar bottomAppBar;
    private ScreenAnimation closeAnimType;
    private float compatScalingFactor;
    private CoordinatorLayout coordinatorLayout;
    private boolean createAbout;
    private FileScope defaultFileScope;
    private float deviceDensity;
    private LinkedHashMap<Integer, PercentStorageRecord> dimChanges;
    private DrawerLayout drawerLayout;
    private ExtendedFloatingActionButton fab;
    private String font;
    private int formHeight;
    protected String formName;
    private int formWidth;
    private FragmentManager fragmentManager;
    private FrameLayout frameLayout;
    private FullScreenVideoUtil fullScreenVideoUtil;
    private boolean highContrast;
    private HorizontalAlignment horizontalAlignment;
    private boolean keyboardShown;
    private long lastToastTime;
    private Menu menu;
    private String nextFormName;
    private final Set<OnClearListener> onClearListeners;
    private Bundle onCreateBundle;
    private final Set<OnCreateOptionsMenuListener> onCreateOptionsMenuListeners;
    private final Set<OnDestroyListener> onDestroyListeners;
    private final Set<OnInitializeListener> onInitializeListeners;
    private final Set<OnNewIntentListener> onNewIntentListeners;
    private final Set<OnOptionsItemSelectedListener> onOptionsItemSelectedListeners;
    private final Set<OnOrientationChangeListener> onOrientationChangeListeners;
    private final Set<OnPauseListener> onPauseListeners;
    private final Set<OnResumeListener> onResumeListeners;
    private final Set<OnStopListener> onStopListeners;
    private ScreenAnimation openAnimType;
    private final HashMap<Integer, PermissionResultHandler> permissionHandlers;
    private final Random permissionRandom;
    private final Set<String> permissions;
    private int primaryColor;
    private int primaryColorDark;
    private ProgressDialog progress;
    private ScaledFrameLayout scaleLayout;
    public boolean screenInitialized;
    private boolean scrollable;
    private boolean showMenu;
    protected String startupValue;
    private int statusBarColor;
    private View statusBarOverlay;
    private int subTitleColor;
    private int titleColor;
    private ActionBarDrawerToggle toggle;
    private boolean usesDarkTheme;
    private boolean usesDefaultBackground;
    private int versionCode;
    private String versionName;
    private VerticalAlignment verticalAlignment;
    private LinearLayout viewLayout;
    private static final int DEFAULT_PRIMARY_COLOR_DARK = PaintUtil.hexStringToInt(ComponentConstants.DEFAULT_PRIMARY_DARK_COLOR);
    private static final int DEFAULT_ACCENT_COLOR = PaintUtil.hexStringToInt(ComponentConstants.DEFAULT_ACCENT_COLOR);
    private static int nextRequestCode = 2;
    public static boolean highQuality = false;
    private static long minimumToastWait = 10000000000L;
    private static boolean _initialized = false;
    private List<Component> allChildren = new ArrayList();
    protected final Handler androidUIHandler = new Handler();
    public int FRAME_LAYOUT_ID_CONSTANT = 1500541;
    private boolean showStatusBar = true;
    private boolean showNavigationBar = true;
    private boolean lightIcons = true;
    private boolean showTitle = true;
    protected String title = "";
    private String backgroundImagePath = "";

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Activity $context() {
        return this;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Form $form() {
        return this;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AdmobAppId(String str) {
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built.", userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AppName(String str) {
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Choose the set of components you’ll need for your project. A smaller set is good for beginner projects, while experts can use all options to build complex apps. For example, the Beginner Toolkit gives you access to all the features you need for our novice tutorials and curriculum.</p><p>You can always change your toolkit in Project Properties, so your choice now won’t limit the future possibilities for your app.</p>", userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_SUBSET_JSON)
    public void BlocksToolkit(String str) {
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, userVisible = false)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ClearTextEnabled(String str) {
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Icon(String str) {
    }

    @SimpleProperty(category = PropertyCategory.APPLICATION, userVisible = false)
    @DesignerProperty(defaultValue = ComponentConstants.DEFAULT_MIN_SDK, editorType = PropertyTypeConstants.PROPERTY_TYPE_SDK_VERSIONS)
    public void MinSdkVersion(String str) {
    }

    @SimpleProperty(category = PropertyCategory.APPLICATION, userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void PackageName(String str) {
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void PollfishApiKey(String str) {
    }

    @SimpleProperty(category = PropertyCategory.APPLICATION, userVisible = false)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SplashEnabled(String str) {
    }

    @SimpleProperty(category = PropertyCategory.APPLICATION, userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void SplashImage(String str) {
    }

    @SimpleProperty(category = PropertyCategory.APPLICATION, userVisible = false)
    @DesignerProperty(defaultValue = ComponentConstants.DEFAULT_TARGET_SDK, editorType = PropertyTypeConstants.PROPERTY_TYPE_SDK_VERSIONS)
    public void TargetSdkVersion(String str) {
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid.", userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void TutorialURL(String str) {
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this;
    }

    public Form() {
        ScreenAnimation screenAnimation = ScreenAnimation.Default;
        this.openAnimType = screenAnimation;
        this.closeAnimType = screenAnimation;
        this.primaryColor = AppInventorCompatActivity.DEFAULT_PRIMARY_COLOR;
        this.primaryColorDark = DEFAULT_PRIMARY_COLOR_DARK;
        this.accentColor = DEFAULT_ACCENT_COLOR;
        this.statusBarColor = 0;
        this.permissions = new HashSet();
        this.defaultFileScope = FileScope.App;
        this.activityResultMap = Maps.newHashMap();
        this.activityResultMultiMap = Maps.newHashMap();
        this.onStopListeners = Sets.newHashSet();
        this.onClearListeners = Sets.newHashSet();
        this.onNewIntentListeners = Sets.newHashSet();
        this.onResumeListeners = Sets.newHashSet();
        this.onOrientationChangeListeners = Sets.newHashSet();
        this.onPauseListeners = Sets.newHashSet();
        this.onDestroyListeners = Sets.newHashSet();
        this.onInitializeListeners = Sets.newHashSet();
        this.onCreateOptionsMenuListeners = Sets.newHashSet();
        this.onOptionsItemSelectedListeners = Sets.newHashSet();
        this.permissionHandlers = Maps.newHashMap();
        this.permissionRandom = new Random();
        this.startupValue = "";
        this.lastToastTime = System.nanoTime() - minimumToastWait;
        this.actionBarEnabled = false;
        this.keyboardShown = false;
        this.onCreateBundle = null;
        this.createAbout = false;
        this.showMenu = true;
        this.titleColor = -1;
        this.subTitleColor = -1;
        this.dimChanges = new LinkedHashMap<>();
    }

    public static class PercentStorageRecord {
        AndroidViewComponent component;
        Dim dim;
        int length;

        public enum Dim {
            HEIGHT,
            WIDTH
        }

        public PercentStorageRecord(AndroidViewComponent androidViewComponent, int i, Dim dim) {
            this.component = androidViewComponent;
            this.length = i;
            this.dim = dim;
        }
    }

    public static class MultiDexInstaller extends android.os.AsyncTask<Form, Void, Boolean> {
        Form ourForm;

        public /* synthetic */ MultiDexInstaller(int i) {
            this();
        }

        private MultiDexInstaller() {
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Form... formArr) {
            this.ourForm = formArr[0];
            Log.d(Form.LOG_TAG, "Doing Full MultiDex Install");
            MultiDex.install(this.ourForm, true);
            return Boolean.TRUE;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) throws PackageManager.NameNotFoundException {
            this.ourForm.onCreateFinish();
        }
    }

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws NoSuchMethodException, PackageManager.NameNotFoundException, SecurityException {
        super.onCreate(bundle);
        OnCreate();
        this.onCreateBundle = bundle;
        this.fragmentManager = getSupportFragmentManager();
        String name = getClass().getName();
        CLASS_NAME = name;
        String strSubstring = name.substring(name.lastIndexOf(46) + 1);
        this.formName = strSubstring;
        Log.d(LOG_TAG, "Form " + strSubstring + " got onCreate");
        activeForm = this;
        Log.i(LOG_TAG, "activeForm is now " + this.formName);
        float f = getResources().getDisplayMetrics().density;
        this.deviceDensity = f;
        Log.d(LOG_TAG, "deviceDensity = " + f);
        float fComputeCompatibleScaling = ScreenDensityUtil.computeCompatibleScaling(this);
        this.compatScalingFactor = fComputeCompatibleScaling;
        Log.i(LOG_TAG, "compatScalingFactor = " + fComputeCompatibleScaling);
        int i = 0;
        LinearLayout linearLayout = new LinearLayout(this, 0);
        this.viewLayout = linearLayout;
        this.alignmentSetter = new AlignmentUtil(linearLayout);
        this.progress = null;
        if (!_initialized && this.formName.equals("Screen1")) {
            Log.d(LOG_TAG, "MULTI: _initialized = " + _initialized + " formName = " + this.formName);
            _initialized = true;
            if (ReplApplication.installed) {
                Log.d(LOG_TAG, "MultiDex already installed.");
                onCreateFinish();
                return;
            } else {
                ProgressDialog progressDialogShow = ProgressDialog.show(this, "Please Wait...", "Installation Finishing");
                this.progress = progressDialogShow;
                progressDialogShow.show();
                new MultiDexInstaller(i).execute(this);
                return;
            }
        }
        Log.d(LOG_TAG, "NO MULTI: _initialized = " + _initialized + " formName = " + this.formName);
        _initialized = true;
        onCreateFinish();
    }

    public void onCreateFinish() throws PackageManager.NameNotFoundException {
        OnStart();
        Log.d(LOG_TAG, "onCreateFinish called " + System.currentTimeMillis());
        ProgressDialog progressDialog = this.progress;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        populatePermissions();
        defaultPropertyValues();
        Intent intent = getIntent();
        if (intent != null && intent.hasExtra(ARGUMENT_NAME)) {
            this.startupValue = intent.getStringExtra(ARGUMENT_NAME);
        }
        this.fullScreenVideoUtil = new FullScreenVideoUtil(this, this.androidUIHandler);
        getWindow().setSoftInputMode(getWindow().getAttributes().softInputMode | 16);
        $define();
        Initialize();
    }

    private void populatePermissions() throws PackageManager.NameNotFoundException {
        try {
            Collections.addAll(this.permissions, getPackageManager().getPackageInfo(getPackageName(), 4096).requestedPermissions);
        } catch (Exception e) {
            Log.e(LOG_TAG, "Exception while attempting to learn permissions.", e);
        }
    }

    public void defaultPropertyValues() {
        if (isRepl()) {
            ActionBar(this.actionBarEnabled);
        } else {
            ActionBar(this.themeHelper.hasActionBar());
        }
        Scrollable(false);
        HighContrast(false);
        BigDefaultText(false);
        Sizing("Responsive");
        AboutScreen("");
        BackgroundImage("");
        AlignHorizontal(1);
        AlignVertical(1);
        Title("");
        Subtitle("");
        ShowStatusBar(true);
        TitleVisible(true);
        TitleColor(-1);
        SubtitleColor(-1);
        ShowListsAsJson(true);
        ActionBar(false);
        AccentColor(DEFAULT_ACCENT_COLOR);
        PrimaryColor(AppInventorCompatActivity.DEFAULT_PRIMARY_COLOR);
        PrimaryColorDark(DEFAULT_PRIMARY_COLOR_DARK);
        Theme(ComponentConstants.DEFAULT_THEME);
        BackgroundColor(0);
        NavigationBarColor(Component.COLOR_THEME);
        ScreenAnimation screenAnimation = ScreenAnimation.Default;
        OpenScreenAnimationAbstract(screenAnimation);
        CloseScreenAnimationAbstract(screenAnimation);
        DefaultFileScope(FileScope.App);
        if (isRepl()) {
            Menu menu = this.menu;
            if (menu != null) {
                menu.clear();
            }
            ActionBarDrawerToggle actionBarDrawerToggle = this.toggle;
            if (actionBarDrawerToggle != null) {
                actionBarDrawerToggle.setDrawerIndicatorEnabled(false);
                this.toggle = null;
            }
            if (this.drawerLayout != null) {
                for (int i = 1; i < this.drawerLayout.getChildCount(); i++) {
                    this.drawerLayout.removeViewAt(i);
                }
            }
            getSupportActionBar().setDisplayHomeAsUpEnabled(false);
            getSupportActionBar().setDisplayShowHomeEnabled(false);
        }
        ShowAboutInMenu(true);
        StatusBarLightIcons(true);
        ShowNavigationBar(true);
        HighQualityImages(false);
        ScreenAnimation screenAnimation2 = ScreenAnimation.Default;
        OpenScreenAnimationAbstract(screenAnimation2);
        CloseScreenAnimationAbstract(screenAnimation2);
        DefaultFileScope(FileScope.App);
    }

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.d(LOG_TAG, "onConfigurationChanged() called");
        final int i = configuration.orientation;
        if (i == 2 || i == 1) {
            this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Form.this.frameLayout != null && (i != 2 ? Form.this.frameLayout.getHeight() >= Form.this.frameLayout.getWidth() : Form.this.frameLayout.getWidth() >= Form.this.frameLayout.getHeight())) {
                        Form.this.recomputeLayout();
                        final FrameLayout frameLayout = Form.this.frameLayout;
                        Form.this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FrameLayout frameLayout2 = frameLayout;
                                if (frameLayout2 != null) {
                                    frameLayout2.invalidate();
                                }
                            }
                        }, 100L);
                        Form.this.ScreenOrientationChanged();
                        return;
                    }
                    Form.this.androidUIHandler.post(this);
                }
            });
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        float height = (r0 - this.scaleLayout.getHeight()) / this.scaleLayout.getRootView().getHeight();
        Log.d(LOG_TAG, "onGlobalLayout(): diffPercent = " + height);
        if (height < 0.25d) {
            Log.d(LOG_TAG, "keyboard hidden!");
            if (this.keyboardShown) {
                this.keyboardShown = false;
                if (sCompatibilityMode) {
                    this.scaleLayout.setScale(this.compatScalingFactor);
                    this.scaleLayout.invalidate();
                    return;
                }
                return;
            }
            return;
        }
        Log.d(LOG_TAG, "keyboard shown!");
        this.keyboardShown = true;
        ScaledFrameLayout scaledFrameLayout = this.scaleLayout;
        if (scaledFrameLayout != null) {
            scaledFrameLayout.setScale(1.0f);
            this.scaleLayout.invalidate();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (BackPressed()) {
            return;
        }
        AnimationUtil.ApplyCloseScreenAnimation(this, this.closeAnimType);
        super.onBackPressed();
    }

    @SimpleEvent(description = "Device back button pressed.")
    public boolean BackPressed() {
        return EventDispatcher.dispatchEvent(this, "BackPressed", new Object[0]);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        String stringExtra;
        Log.i(LOG_TAG, "Form " + this.formName + " got onActivityResult, requestCode = " + i + ", resultCode = " + i2);
        if (i == 1) {
            if (intent != null && intent.hasExtra(RESULT_NAME)) {
                stringExtra = intent.getStringExtra(RESULT_NAME);
            } else {
                stringExtra = "";
            }
            OtherScreenClosed(this.nextFormName, decodeJSONStringForForm(stringExtra, "other screen closed"));
            return;
        }
        ActivityResultListener activityResultListener = this.activityResultMap.get(Integer.valueOf(i));
        if (activityResultListener != null) {
            activityResultListener.resultReturned(i, i2, intent);
        }
        Set<ActivityResultListener> set = this.activityResultMultiMap.get(Integer.valueOf(i));
        if (set != null) {
            for (ActivityResultListener activityResultListener2 : (ActivityResultListener[]) set.toArray(new ActivityResultListener[0])) {
                activityResultListener2.resultReturned(i, i2, intent);
            }
        }
    }

    private static Object decodeJSONStringForForm(String str, String str2) {
        Object objectFromJson;
        _COROUTINE.a.C("decodeJSONStringForForm -- decoding JSON representation:", str, LOG_TAG);
        try {
            objectFromJson = JsonUtil.getObjectFromJson(str, true);
        } catch (JSONException unused) {
            objectFromJson = "";
        }
        try {
            Log.i(LOG_TAG, "decodeJSONStringForForm -- got decoded JSON:" + objectFromJson.toString());
            return objectFromJson;
        } catch (JSONException unused2) {
            Form form = activeForm;
            form.dispatchErrorOccurredEvent(form, str2, ErrorMessages.ERROR_SCREEN_BAD_VALUE_RECEIVED, str);
            return objectFromJson;
        }
    }

    public int registerForActivityResult(ActivityResultListener activityResultListener) {
        int iGenerateNewRequestCode = generateNewRequestCode();
        this.activityResultMap.put(Integer.valueOf(iGenerateNewRequestCode), activityResultListener);
        return iGenerateNewRequestCode;
    }

    public void registerForActivityResult(ActivityResultListener activityResultListener, int i) {
        Set<ActivityResultListener> setNewHashSet = this.activityResultMultiMap.get(Integer.valueOf(i));
        if (setNewHashSet == null) {
            setNewHashSet = Sets.newHashSet();
            this.activityResultMultiMap.put(Integer.valueOf(i), setNewHashSet);
        }
        setNewHashSet.add(activityResultListener);
    }

    public void unregisterForActivityResult(ActivityResultListener activityResultListener) {
        ArrayList arrayListNewArrayList = Lists.newArrayList();
        for (Map.Entry<Integer, ActivityResultListener> entry : this.activityResultMap.entrySet()) {
            if (activityResultListener.equals(entry.getValue())) {
                arrayListNewArrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayListNewArrayList.iterator();
        while (it.hasNext()) {
            this.activityResultMap.remove((Integer) it.next());
        }
        Iterator<Map.Entry<Integer, Set<ActivityResultListener>>> it2 = this.activityResultMultiMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, Set<ActivityResultListener>> next = it2.next();
            next.getValue().remove(activityResultListener);
            if (next.getValue().size() == 0) {
                it2.remove();
            }
        }
    }

    public void ReplayFormOrientation() {
        Log.d(LOG_TAG, "ReplayFormOrientation()");
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.dimChanges.clone();
        this.dimChanges.clear();
        for (PercentStorageRecord percentStorageRecord : linkedHashMap.values()) {
            if (percentStorageRecord.dim == PercentStorageRecord.Dim.HEIGHT) {
                percentStorageRecord.component.Height(percentStorageRecord.length);
            } else {
                percentStorageRecord.component.Width(percentStorageRecord.length);
            }
        }
    }

    private Integer generateHashCode(AndroidViewComponent androidViewComponent, PercentStorageRecord.Dim dim) {
        if (dim == PercentStorageRecord.Dim.HEIGHT) {
            return Integer.valueOf((androidViewComponent.hashCode() * 2) + 1);
        }
        return Integer.valueOf(androidViewComponent.hashCode() * 2);
    }

    public void registerPercentLength(AndroidViewComponent androidViewComponent, int i, PercentStorageRecord.Dim dim) {
        PercentStorageRecord percentStorageRecord = new PercentStorageRecord(androidViewComponent, i, dim);
        this.dimChanges.put(generateHashCode(androidViewComponent, dim), percentStorageRecord);
    }

    public void unregisterPercentLength(AndroidViewComponent androidViewComponent, PercentStorageRecord.Dim dim) {
        this.dimChanges.remove(generateHashCode(androidViewComponent, dim));
    }

    private static int generateNewRequestCode() {
        int i = nextRequestCode;
        nextRequestCode = i + 1;
        return i;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        OnResume();
        Log.i(LOG_TAG, "Form " + this.formName + " got onResume");
        activeForm = this;
        if (applicationIsBeingClosed) {
            closeApplication();
            return;
        }
        Iterator<OnResumeListener> it = this.onResumeListeners.iterator();
        while (it.hasNext()) {
            it.next().onResume();
        }
    }

    public void registerForOnResume(OnResumeListener onResumeListener) {
        this.onResumeListeners.add(onResumeListener);
    }

    public void registerForOnOrientationChange(OnOrientationChangeListener onOrientationChangeListener) {
        this.onOrientationChangeListeners.add(onOrientationChangeListener);
    }

    public void registerForOnInitialize(OnInitializeListener onInitializeListener) {
        this.onInitializeListeners.add(onInitializeListener);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Log.d(LOG_TAG, "Form " + this.formName + " got onNewIntent " + intent);
        Iterator<OnNewIntentListener> it = this.onNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().onNewIntent(intent);
        }
    }

    public void registerForOnNewIntent(OnNewIntentListener onNewIntentListener) {
        this.onNewIntentListeners.add(onNewIntentListener);
    }

    @Override // android.app.Activity
    public void onPause() {
        OnPause();
        super.onPause();
        Log.i(LOG_TAG, "Form " + this.formName + " got onPause");
        Iterator<OnPauseListener> it = this.onPauseListeners.iterator();
        while (it.hasNext()) {
            it.next().onPause();
        }
    }

    public void registerForOnPause(OnPauseListener onPauseListener) {
        this.onPauseListeners.add(onPauseListener);
    }

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onStop() {
        OnStop();
        super.onStop();
        Log.i(LOG_TAG, "Form " + this.formName + " got onStop");
        Iterator<OnStopListener> it = this.onStopListeners.iterator();
        while (it.hasNext()) {
            it.next().onStop();
        }
    }

    public void registerForOnStop(OnStopListener onStopListener) {
        this.onStopListeners.add(onStopListener);
    }

    public void registerForOnClear(OnClearListener onClearListener) {
        this.onClearListeners.add(onClearListener);
    }

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onDestroy() {
        OnDestroy();
        Log.i(LOG_TAG, "Form " + this.formName + " got onDestroy");
        EventDispatcher.removeDispatchDelegate(this);
        Iterator<OnDestroyListener> it = this.onDestroyListeners.iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
        super.onDestroy();
    }

    public void registerForOnDestroy(OnDestroyListener onDestroyListener) {
        this.onDestroyListeners.add(onDestroyListener);
    }

    public void registerForOnCreateOptionsMenu(OnCreateOptionsMenuListener onCreateOptionsMenuListener) {
        this.onCreateOptionsMenuListeners.add(onCreateOptionsMenuListener);
    }

    public void registerForOnOptionsItemSelected(OnOptionsItemSelectedListener onOptionsItemSelectedListener) {
        this.onOptionsItemSelectedListeners.add(onOptionsItemSelectedListener);
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        if (i == 189) {
            return this.fullScreenVideoUtil.createFullScreenVideoDialog();
        }
        return super.onCreateDialog(i);
    }

    @Override // android.app.Activity
    public void onPrepareDialog(int i, Dialog dialog) {
        if (i == 189) {
            this.fullScreenVideoUtil.prepareFullScreenVideoDialog(dialog);
        } else {
            super.onPrepareDialog(i, dialog);
        }
    }

    public void $define() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.HandlesEventDispatching
    public boolean canDispatchEvent(Component component, String str) {
        boolean z = this.screenInitialized || (component == this && str.equals("Initialize"));
        if (z) {
            activeForm = this;
        }
        return z;
    }

    @Override // com.google.appinventor.components.runtime.HandlesEventDispatching
    public boolean dispatchEvent(Component component, String str, String str2, Object[] objArr) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.appinventor.components.runtime.HandlesEventDispatching
    public void dispatchGenericEvent(Component component, String str, boolean z, Object[] objArr) {
        throw new UnsupportedOperationException();
    }

    @SimpleEvent(description = "The Initialize event is run when the Screen starts and is only run once per screen.")
    public void Initialize() {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.2
            @Override // java.lang.Runnable
            public void run() {
                if (Form.this.frameLayout != null && Form.this.frameLayout.getWidth() != 0 && Form.this.frameLayout.getHeight() != 0) {
                    Form.this.SetFont();
                    if (Form.sCompatibilityMode) {
                        Form.this.Sizing("Fixed");
                    } else {
                        Form.this.Sizing("Responsive");
                    }
                    Form form = Form.this;
                    form.screenInitialized = true;
                    EventDispatcher.dispatchEvent(form, "Initialize", new Object[0]);
                    Iterator it = Form.this.onInitializeListeners.iterator();
                    while (it.hasNext()) {
                        ((OnInitializeListener) it.next()).onInitialize();
                    }
                    Form form2 = Form.activeForm;
                    if (form2 instanceof ReplForm) {
                        ((ReplForm) form2).HandleReturnValues();
                        return;
                    }
                    return;
                }
                Form.this.androidUIHandler.post(this);
            }
        });
    }

    public void SetFont() {
        String str;
        String str2 = this.font;
        if (str2 == null || str2.isEmpty() || (str = this.font) == "") {
            return;
        }
        Typeface typefaceCreateFromFile = !str.contains("/") ? isRepl() ? Typeface.createFromFile(new java.io.File(_COROUTINE.a.z(QUtil.getReplAssetPath(this), this.font))) : Typeface.createFromAsset(getAssets(), this.font) : Typeface.createFromFile(new java.io.File(this.font));
        if (typefaceCreateFromFile == null) {
            return;
        }
        overrideFonts(this, getWindow().getDecorView(), typefaceCreateFromFile);
    }

    @SimpleEvent(description = "Invokes when the Screen is created")
    @Deprecated
    public void OnCreate() {
        EventDispatcher.dispatchEvent(this, "OnCreate", new Object[0]);
    }

    @SimpleEvent(description = "Invokes when the Screen starts to show the UI")
    @Deprecated
    public void OnStart() {
        EventDispatcher.dispatchEvent(this, "OnStart", new Object[0]);
    }

    @SimpleEvent(description = "Invokes when the Screen is destroyed")
    public void OnDestroy() {
        EventDispatcher.dispatchEvent(this, "OnDestroy", new Object[0]);
    }

    @SimpleEvent(description = "Invokes when Screen is no longer visible to the user")
    public void OnStop() {
        EventDispatcher.dispatchEvent(this, "OnStop", new Object[0]);
    }

    @SimpleEvent(description = "Invoked when the user leaves the Screen")
    public void OnPause() {
        EventDispatcher.dispatchEvent(this, "OnPause", new Object[0]);
    }

    @SimpleEvent(description = "Invoked when the Screen comes to the foreground")
    public void OnResume() {
        EventDispatcher.dispatchEvent(this, "OnResume", new Object[0]);
    }

    @SimpleEvent(description = "Screen orientation changed")
    public void ScreenOrientationChanged() {
        Iterator<OnOrientationChangeListener> it = this.onOrientationChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().onOrientationChange();
        }
        EventDispatcher.dispatchEvent(this, "ScreenOrientationChanged", new Object[0]);
    }

    @SimpleEvent(description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default.")
    public void ErrorOccurred(Component component, String str, int i, String str2) {
        String name = component.getClass().getName();
        String strSubstring = name.substring(name.lastIndexOf(".") + 1);
        Log.e(LOG_TAG, "Form " + this.formName + " ErrorOccurred, errorNumber = " + i + ", componentType = " + strSubstring + ", functionName = " + str + ", messages = " + str2);
        if (EventDispatcher.dispatchEvent(this, "ErrorOccurred", component, str, Integer.valueOf(i), str2) || !this.screenInitialized) {
            return;
        }
        new Notifier(this).ShowAlert("Error " + i + ": " + str2);
    }

    public void ErrorOccurredDialog(Component component, String str, int i, String str2, String str3, String str4) {
        String name = component.getClass().getName();
        String strSubstring = name.substring(name.lastIndexOf(".") + 1);
        Log.e(LOG_TAG, "Form " + this.formName + " ErrorOccurred, errorNumber = " + i + ", componentType = " + strSubstring + ", functionName = " + str + ", messages = " + str2);
        if (EventDispatcher.dispatchEvent(this, "ErrorOccurred", component, str, Integer.valueOf(i), str2) || !this.screenInitialized) {
            return;
        }
        new Notifier(this).ShowMessageDialog("Error " + i + ": " + str2, str3, str4);
    }

    public void dispatchPermissionDeniedEvent(Component component, String str, PermissionException permissionException) {
        permissionException.printStackTrace();
        dispatchPermissionDeniedEvent(component, str, permissionException.getPermissionNeeded());
    }

    public void dispatchPermissionDeniedEvent(final Component component, final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.3
            @Override // java.lang.Runnable
            public void run() {
                Form.this.PermissionDenied(component, str, str2);
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.HandlesEventDispatching
    public void dispatchErrorOccurredEvent(final Component component, final String str, final int i, final Object... objArr) {
        runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.4
            @Override // java.lang.Runnable
            public void run() {
                Form.this.ErrorOccurred(component, str, i, ErrorMessages.formatMessage(i, objArr));
            }
        });
    }

    public void dispatchErrorOccurredEventDialog(final Component component, final String str, final int i, final Object... objArr) {
        runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.5
            @Override // java.lang.Runnable
            public void run() {
                String message = ErrorMessages.formatMessage(i, objArr);
                Form form = Form.this;
                Component component2 = component;
                String str2 = str;
                form.ErrorOccurredDialog(component2, str2, i, message, _COROUTINE.a.i("Error in ", str2), "Dismiss");
            }
        });
    }

    public void runtimeFormErrorOccurredEvent(String str, int i, String str2) {
        Log.d("FORM_RUNTIME_ERROR", "functionName is " + str);
        Log.d("FORM_RUNTIME_ERROR", "errorNumber is " + i);
        Log.d("FORM_RUNTIME_ERROR", "message is " + str2);
        dispatchErrorOccurredEvent(activeForm, str, i, str2);
    }

    public Bundle getOnCreateBundle() {
        return this.onCreateBundle;
    }

    public FragmentManager getSupportFragmentManager() {
        return this.fragmentManager;
    }

    @SimpleEvent
    public void PermissionDenied(Component component, String str, @Options(Permission.class) String str2) {
        if (str2.startsWith("android.permission.")) {
            str2 = str2.replace("android.permission.", "");
        }
        if (EventDispatcher.dispatchEvent(this, "PermissionDenied", component, str, str2)) {
            return;
        }
        dispatchErrorOccurredEvent(component, str, ErrorMessages.ERROR_PERMISSION_DENIED, str2);
    }

    @SimpleEvent(description = "Event to handle when the app user has granted a needed permission. This event is only run when permission is granted in response to the AskForPermission method.")
    public void PermissionGranted(@Options(Permission.class) String str) {
        if (str.startsWith("android.permission.")) {
            str = str.replace("android.permission.", "");
        }
        EventDispatcher.dispatchEvent(this, "PermissionGranted", str);
    }

    @SimpleFunction(description = "Ask the user to grant access to a dangerous permission.")
    public void AskForPermission(@Options(Permission.class) String str) {
        if (!str.contains(".")) {
            str = "android.permission.".concat(str);
        }
        askPermission(str, new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Form.6
            @Override // com.google.appinventor.components.runtime.PermissionResultHandler
            public void HandlePermissionResponse(String str2, boolean z) {
                if (z) {
                    Form.this.PermissionGranted(str2);
                } else {
                    Form form = Form.this;
                    form.PermissionDenied(form, "RequestPermission", str2);
                }
            }
        });
    }

    @SimpleFunction(description = "Move task to back")
    public void MoveTaskToBack() {
        moveTaskToBack(true);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "When checked, we will use high contrast mode")
    public boolean HighContrast() {
        return this.highContrast;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HighContrast(boolean z) {
        this.highContrast = z;
        setHighContrastRecursive(this, z);
        recomputeLayout();
    }

    private static void setHighContrastRecursive(ComponentContainer componentContainer, boolean z) {
        for (Component component : componentContainer.getChildren()) {
            if (component instanceof ComponentContainer) {
                setHighContrastRecursive((ComponentContainer) component, z);
            } else if (component instanceof AccessibleComponent) {
                ((AccessibleComponent) component).setHighContrast(z);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "When checked, we will use high contrast mode")
    public boolean BigDefaultText() {
        return this.bigDefaultText;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void BigDefaultText(boolean z) {
        this.bigDefaultText = z;
        setBigDefaultTextRecursive(this, z);
        recomputeLayout();
    }

    private static void setBigDefaultTextRecursive(ComponentContainer componentContainer, boolean z) {
        for (Component component : componentContainer.getChildren()) {
            if (component instanceof ComponentContainer) {
                setBigDefaultTextRecursive((ComponentContainer) component, z);
            } else if (component instanceof AccessibleComponent) {
                ((AccessibleComponent) component).setLargeFont(z);
            }
        }
    }

    public void AskForPermissionAbstract(Permission permission) {
        AskForPermission(permission.toUnderlyingValue());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device.")
    public boolean Scrollable() {
        return this.scrollable;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Scrollable(boolean z) {
        if (this.scrollable != z || this.frameLayout == null) {
            this.scrollable = z;
            recomputeLayout();
        }
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HighQualityImages(boolean z) {
        highQuality = z;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void ScreenFontTypeFace(String str) {
        this.font = str;
    }

    private void overrideFonts(Context context, View view, Typeface typeface) {
        try {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    overrideFonts(context, viewGroup.getChildAt(i), typeface);
                }
                return;
            }
            if (view instanceof TextView) {
                ((TextView) view).setTypeface(typeface);
            }
        } catch (Exception unused) {
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowAboutInMenu(boolean z) {
        Menu menu;
        this.createAbout = z;
        if (z && (menu = this.menu) != null && this.showMenu) {
            addAboutInfoToMenu(menu);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowOptionsMenu(boolean z) {
        Menu menu;
        this.showMenu = z;
        if (!z && (menu = this.menu) != null) {
            menu.clear();
        }
        if (this.toolbar.getOverflowIcon() != null) {
            this.toolbar.getOverflowIcon().setTint(this.titleColor);
        }
        if (this.toolbar.getNavigationIcon() != null) {
            this.toolbar.getNavigationIcon().setTint(this.titleColor);
        }
    }

    @SimpleFunction(description = "Call this after MenuInitialize Event")
    public void AddMenuItem(final String str) {
        Menu menu = this.menu;
        if (menu != null) {
            menu.add(str).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.Form.7
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem menuItem) {
                    Form.this.MenuItemClick(str);
                    return true;
                }
            });
        }
    }

    @SimpleFunction(description = "Call this after MenuInitialize Event")
    public void AddMenuItemWithIcon(final String str, @Asset String str2) {
        Menu menu = this.menu;
        if (menu != null) {
            try {
                menu.add(str).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.Form.8
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        Form.this.MenuItemClick(str);
                        return true;
                    }
                }).setIcon(new BitmapDrawable(getResources(), Bitmap.createScaledBitmap(MediaUtil.getBitmapDrawable(this, str2).getBitmap(), px(36), px(36), true)));
            } catch (Exception unused) {
            }
        }
    }

    public int px(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    private CharSequence menuIconWithText(Drawable drawable, String str) {
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        SpannableString spannableString = new SpannableString(_COROUTINE.a.i("    ", str));
        spannableString.setSpan(new ImageSpan(drawable, 0), 0, 1, 33);
        return spannableString;
    }

    @SimpleFunction(description = "Call this after MenuInitialize Event")
    public void AddActionBarIcon(@Asset String str, final String str2) {
        Menu menu = this.menu;
        if (menu != null) {
            try {
                MenuItem onMenuItemClickListener = menu.add(str2).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.Form.9
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        Form.this.ActionBarIconClick(str2);
                        return true;
                    }
                });
                onMenuItemClickListener.setIcon(MediaUtil.getBitmapDrawable(this, str));
                onMenuItemClickListener.setShowAsAction(2);
            } catch (Exception unused) {
            }
        }
    }

    @SimpleFunction(description = "Show The Title Bar Back Button, It won't show if sidebar is present in screen and it's icon is showing")
    public void ShowTitleBarBackButton(boolean z) {
        if (this.toggle == null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(z);
            getSupportActionBar().setDisplayShowHomeEnabled(z);
            if (this.toolbar.getOverflowIcon() != null) {
                this.toolbar.getOverflowIcon().setTint(this.titleColor);
            }
            if (this.toolbar.getNavigationIcon() != null) {
                this.toolbar.getNavigationIcon().setTint(this.titleColor);
                return;
            }
            return;
        }
        throw new YailRuntimeError("Cannot show back button in title bar if sidebar is present", "Screen");
    }

    @SimpleFunction(description = "Clears all the existing menus")
    public void ClearMenu() {
        this.menu.clear();
        if (this.createAbout && this.showMenu) {
            addAboutInfoToMenu(this.menu);
        }
    }

    @SimpleEvent(description = "Title bar back button clicked")
    public void TitleBarBackButtonClick() {
        EventDispatcher.dispatchEvent(this, "TitleBarBackButtonClick", new Object[0]);
    }

    @SimpleEvent(description = "Title bar icon clicked")
    public void ActionBarIconClick(String str) {
        EventDispatcher.dispatchEvent(this, "ActionBarIconClick", str);
    }

    @SimpleEvent(description = "Menu item clicked")
    public void MenuItemClick(String str) {
        EventDispatcher.dispatchEvent(this, "MenuItemClick", str);
    }

    @SimpleEvent(description = "Menu initialized")
    public void MenuInitialize() {
        EventDispatcher.dispatchEvent(this, "MenuInitialize", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recomputeLayout() {
        Log.d(LOG_TAG, "recomputeLayout called");
        FrameLayout frameLayout = this.frameLayout;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.frameWithTitle.removeAllViews();
        if (this.scrollable) {
            ScrollView scrollView = new ScrollView(this);
            this.frameLayout = scrollView;
            if (Build.VERSION.SDK_INT >= 24) {
                scrollView.setFillViewport(true);
            }
        } else {
            this.frameLayout = new FrameLayout(this);
        }
        this.frameLayout.setId(this.FRAME_LAYOUT_ID_CONSTANT);
        this.frameLayout.addView(this.viewLayout.getLayoutManager(), new ViewGroup.LayoutParams(-1, -1));
        setBackground(this.frameLayout);
        Log.d(LOG_TAG, "About to create a new ScaledFrameLayout");
        this.scaleLayout = new ScaledFrameLayout(this);
        this.drawerLayout = new DrawerLayout(this);
        this.coordinatorLayout = new CoordinatorLayout(this);
        this.scaleLayout.addView(this.frameLayout, new ViewGroup.LayoutParams(-1, -1));
        if (this.appBarLayout.getParent() != null) {
            ((ViewGroup) this.appBarLayout.getParent()).removeView(this.appBarLayout);
        }
        this.frameWithTitle.addView(this.appBarLayout);
        this.frameWithTitle.addView(this.coordinatorLayout, new ViewGroup.LayoutParams(-1, -1));
        this.coordinatorLayout.addView(this.drawerLayout, new ViewGroup.LayoutParams(-1, -1));
        this.drawerLayout.addView(this.scaleLayout, new ViewGroup.LayoutParams(-1, -1));
        this.frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.scaleLayout.requestLayout();
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.10
            @Override // java.lang.Runnable
            public void run() {
                if (Form.this.frameLayout != null && Form.this.frameLayout.getWidth() != 0 && Form.this.frameLayout.getHeight() != 0) {
                    if (Form.sCompatibilityMode) {
                        Form.this.Sizing("Fixed");
                    } else {
                        Form.this.Sizing("Responsive");
                    }
                    Form.this.ReplayFormOrientation();
                    Form.this.frameWithTitle.requestLayout();
                    return;
                }
                Form.this.androidUIHandler.post(this);
            }
        });
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        if (i == 0) {
            this.usesDefaultBackground = true;
        } else {
            this.usesDefaultBackground = false;
            this.backgroundColor = i;
        }
        setBackground(this.frameLayout);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The screen background image.")
    public String BackgroundImage() {
        return this.backgroundImagePath;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The screen background image.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void BackgroundImage(@Asset String str) {
        if (str == null) {
            str = "";
        }
        this.backgroundImagePath = str;
        try {
            this.backgroundDrawable = MediaUtil.getBitmapDrawable(this, str);
        } catch (IOException unused) {
            _COROUTINE.a.w("Unable to load ", this.backgroundImagePath, LOG_TAG);
            this.backgroundDrawable = null;
        }
        setBackground(this.frameLayout);
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, userVisible = false)
    @DesignerProperty(defaultValue = "App", editorType = PropertyTypeConstants.PROPERTY_TYPE_FILESCOPE)
    public void DefaultFileScope(FileScope fileScope) {
        this.defaultFileScope = fileScope;
    }

    public FileScope DefaultFileScope() {
        return this.defaultFileScope;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The caption for the form, which apears in the title bar")
    public String Title() {
        return getTitle().toString();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Title(String str) {
        this.title = str;
        setTitle(str);
        updateTitle();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info.")
    public String AboutScreen() {
        return this.aboutScreen;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void AboutScreen(String str) {
        this.aboutScreen = str;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible.")
    public boolean TitleVisible() {
        return this.showTitle;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TitleVisible(boolean z) {
        if (z != this.showTitle) {
            this.showTitle = z;
            if (this.actionBarEnabled) {
                this.actionBarEnabled = this.themeHelper.setActionBarVisible(z);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TitleColor(int i) {
        this.titleColor = i;
        this.toolbar.setTitleTextColor(i);
        if (this.toolbar.getOverflowIcon() != null) {
            this.toolbar.getOverflowIcon().setTint(i);
        }
        if (this.toolbar.getNavigationIcon() != null) {
            this.toolbar.getNavigationIcon().setTint(i);
        }
        ActionBarDrawerToggle actionBarDrawerToggle = this.toggle;
        if (actionBarDrawerToggle != null) {
            actionBarDrawerToggle.getDrawerArrowDrawable().setColor(this.titleColor);
        }
    }

    @SimpleProperty
    public int TitleColor() {
        return this.titleColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Subtitle() {
        return this.toolbar.getSubtitle() != null ? this.toolbar.getSubtitle().toString() : "";
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Subtitle(String str) {
        this.toolbar.setSubtitle(str);
    }

    @SimpleProperty
    public int SubtitleColor() {
        return this.subTitleColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SubtitleColor(int i) {
        this.subTitleColor = i;
        this.toolbar.setSubtitleTextColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible.")
    public boolean ShowStatusBar() {
        return this.showStatusBar;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowStatusBar(boolean z) {
        if (z != this.showStatusBar) {
            this.showStatusBar = z;
            applyStatusbar();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowNavigationBar(final boolean z) {
        this.showNavigationBar = z;
        if (!z) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | InputDeviceCompat.SOURCE_TOUCHSCREEN);
        } else if (!this.lightIcons) {
            getWindow().getDecorView().setSystemUiVisibility(8192);
        } else {
            getWindow().getDecorView().setSystemUiVisibility(0);
        }
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.google.appinventor.components.runtime.Form.11
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if (z) {
                    return;
                }
                Form.this.getWindow().getDecorView().setSystemUiVisibility(Form.this.getWindow().getDecorView().getSystemUiVisibility() | InputDeviceCompat.SOURCE_TOUCHSCREEN);
            }
        });
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void StatusBarLightIcons(boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.lightIcons = z;
            if (!z) {
                getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
            } else if (!this.showNavigationBar) {
                getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings.")
    public String ScreenOrientation() {
        return ScreenOrientationAbstract().toUnderlyingValue();
    }

    public ScreenOrientation ScreenOrientationAbstract() {
        switch (getRequestedOrientation()) {
            case -1:
                return ScreenOrientation.Unspecified;
            case 0:
                return ScreenOrientation.Landscape;
            case 1:
                return ScreenOrientation.Portrait;
            case 2:
                return ScreenOrientation.User;
            case 3:
                return ScreenOrientation.Behind;
            case 4:
                return ScreenOrientation.Sensor;
            case 5:
                return ScreenOrientation.NoSensor;
            case 6:
                return ScreenOrientation.SensorLandscape;
            case 7:
                return ScreenOrientation.SensorPortrait;
            case 8:
                return ScreenOrientation.ReverseLandscape;
            case 9:
                return ScreenOrientation.ReversePortrait;
            case 10:
                return ScreenOrientation.FullSensor;
            default:
                return ScreenOrientation.Unspecified;
        }
    }

    public void ScreenOrientationAbstract(ScreenOrientation screenOrientation) {
        int orientationConstant = screenOrientation.getOrientationConstant();
        if (orientationConstant > 5 && SdkLevel.getLevel() < 9) {
            dispatchErrorOccurredEvent(this, "ScreenOrientation", ErrorMessages.ERROR_INVALID_SCREEN_ORIENTATION, screenOrientation);
        } else {
            setRequestedOrientation(orientationConstant);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @SuppressLint({"SourceLockedOrientationActivity"})
    @DesignerProperty(alwaysSend = true, defaultValue = "unspecified", editorType = PropertyTypeConstants.PROPERTY_TYPE_SCREEN_ORIENTATION)
    public void ScreenOrientation(@Options(ScreenOrientation.class) String str) {
        ScreenOrientation screenOrientationFromUnderlyingValue = ScreenOrientation.fromUnderlyingValue(str);
        if (screenOrientationFromUnderlyingValue == null) {
            dispatchErrorOccurredEvent(this, "ScreenOrientation", ErrorMessages.ERROR_INVALID_SCREEN_ORIENTATION, str);
        } else {
            ScreenOrientationAbstract(screenOrientationFromUnderlyingValue);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ActionBar(boolean z) {
        if (this.actionBarEnabled != z) {
            setActionBarEnabled(z);
            if (z) {
                this.actionBarEnabled = this.themeHelper.setActionBarVisible(this.showTitle);
            } else {
                this.actionBarEnabled = this.themeHelper.setActionBarVisible(false);
            }
            this.actionBarEnabled = z;
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 3 = horizontally centered,  2 = right aligned.")
    public int AlignHorizontal() {
        return this.horizontalAlignment.toUnderlyingValue().intValue();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_HORIZONTAL_ALIGNMENT)
    public void AlignHorizontal(@Options(HorizontalAlignment.class) int i) {
        HorizontalAlignment horizontalAlignmentFromUnderlyingValue = HorizontalAlignment.fromUnderlyingValue(Integer.valueOf(i));
        if (horizontalAlignmentFromUnderlyingValue == null) {
            dispatchErrorOccurredEvent(this, "HorizontalAlignment", ErrorMessages.ERROR_BAD_VALUE_FOR_HORIZONTAL_ALIGNMENT, Integer.valueOf(i));
        } else {
            AlignHorizontalAbstract(horizontalAlignmentFromUnderlyingValue);
        }
    }

    public HorizontalAlignment AlignHorizontalAbstract() {
        return this.horizontalAlignment;
    }

    public void AlignHorizontalAbstract(HorizontalAlignment horizontalAlignment) {
        this.alignmentSetter.setHorizontalAlignment(horizontalAlignment);
        this.horizontalAlignment = horizontalAlignment;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable.")
    public int AlignVertical() {
        return AlignVerticalAbstract().toUnderlyingValue().intValue();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_VERTICAL_ALIGNMENT)
    public void AlignVertical(@Options(VerticalAlignment.class) int i) {
        VerticalAlignment verticalAlignmentFromUnderlyingValue = VerticalAlignment.fromUnderlyingValue(Integer.valueOf(i));
        if (verticalAlignmentFromUnderlyingValue == null) {
            dispatchErrorOccurredEvent(this, "VerticalAlignment", ErrorMessages.ERROR_BAD_VALUE_FOR_VERTICAL_ALIGNMENT, Integer.valueOf(i));
        } else {
            AlignVerticalAbstract(verticalAlignmentFromUnderlyingValue);
        }
    }

    public VerticalAlignment AlignVerticalAbstract() {
        return this.verticalAlignment;
    }

    public void AlignVerticalAbstract(VerticalAlignment verticalAlignment) {
        this.alignmentSetter.setVerticalAlignment(verticalAlignment);
        this.verticalAlignment = verticalAlignment;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none")
    public String OpenScreenAnimation() {
        ScreenAnimation screenAnimation = this.openAnimType;
        if (screenAnimation != null) {
            return screenAnimation.toUnderlyingValue();
        }
        return null;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "default", editorType = PropertyTypeConstants.PROPERTY_TYPE_SCREEN_ANIMATION)
    public void OpenScreenAnimation(@Options(ScreenAnimation.class) String str) {
        ScreenAnimation screenAnimationFromUnderlyingValue = ScreenAnimation.fromUnderlyingValue(str);
        if (screenAnimationFromUnderlyingValue == null) {
            dispatchErrorOccurredEvent(this, "Screen", ErrorMessages.ERROR_SCREEN_INVALID_ANIMATION, str);
        } else {
            OpenScreenAnimationAbstract(screenAnimationFromUnderlyingValue);
        }
    }

    public ScreenAnimation OpenScreenAnimationAbstract() {
        return this.openAnimType;
    }

    public void OpenScreenAnimationAbstract(ScreenAnimation screenAnimation) {
        this.openAnimType = screenAnimation;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none")
    public String CloseScreenAnimation() {
        if (this.closeAnimType != null) {
            return CloseScreenAnimationAbstract().toUnderlyingValue();
        }
        return null;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "default", editorType = PropertyTypeConstants.PROPERTY_TYPE_SCREEN_ANIMATION)
    public void CloseScreenAnimation(@Options(ScreenAnimation.class) String str) {
        ScreenAnimation screenAnimationFromUnderlyingValue = ScreenAnimation.fromUnderlyingValue(str);
        if (screenAnimationFromUnderlyingValue == null) {
            dispatchErrorOccurredEvent(this, "Screen", ErrorMessages.ERROR_SCREEN_INVALID_ANIMATION, str);
        } else {
            CloseScreenAnimationAbstract(screenAnimationFromUnderlyingValue);
        }
    }

    public ScreenAnimation CloseScreenAnimationAbstract() {
        return this.closeAnimType;
    }

    public void CloseScreenAnimationAbstract(ScreenAnimation screenAnimation) {
        this.closeAnimType = screenAnimation;
    }

    @SimpleProperty(category = PropertyCategory.PUBLISHING, description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store.")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void VersionCode(int i) {
        this.versionCode = i;
    }

    @SimpleProperty(userVisible = true)
    public int VersionCode() throws PackageManager.NameNotFoundException {
        long longVersionCode;
        try {
            PackageInfo packageInfo = $context().getPackageManager().getPackageInfo($context().getPackageName(), 0);
            if (Build.VERSION.SDK_INT >= 28) {
                longVersionCode = packageInfo.getLongVersionCode();
            } else {
                longVersionCode = packageInfo.versionCode;
            }
            return (int) longVersionCode;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @SimpleProperty(category = PropertyCategory.PUBLISHING, description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App.")
    @DesignerProperty(defaultValue = "1.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void VersionName(String str) {
        this.versionName = str;
    }

    @SimpleProperty
    public String VersionName() {
        try {
            return $context().getPackageManager().getPackageInfo($context().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app.", userVisible = false)
    @DesignerProperty(alwaysSend = true, defaultValue = "Responsive", editorType = PropertyTypeConstants.PROPERTY_TYPE_SIZING)
    public void Sizing(String str) {
        Log.d(LOG_TAG, "Sizing(" + str + ")");
        this.formWidth = (int) (((float) getResources().getDisplayMetrics().widthPixels) / this.deviceDensity);
        this.formHeight = (int) (((float) getResources().getDisplayMetrics().heightPixels) / this.deviceDensity);
        if (str.equals("Fixed")) {
            sCompatibilityMode = true;
            float f = this.formWidth;
            float f2 = this.compatScalingFactor;
            this.formWidth = (int) (f / f2);
            this.formHeight = (int) (this.formHeight / f2);
        } else {
            sCompatibilityMode = false;
        }
        this.scaleLayout.setScale(sCompatibilityMode ? this.compatScalingFactor : 1.0f);
        FrameLayout frameLayout = this.frameLayout;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
        Log.d(LOG_TAG, "formWidth = " + this.formWidth + " formHeight = " + this.formHeight);
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"true\" meaning that the App Inventor programmer must explicitly set it to \"false\" if Lisp syntax is desired. In older versions of App Inventor, this setting defaulted to false. Older projects should not have been affected by this default settings update.", userVisible = false)
    @DesignerProperty(alwaysSend = true, defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowListsAsJson(boolean z) {
        showListsAsJson = z;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, userVisible = false)
    public boolean ShowListsAsJson() {
        return showListsAsJson;
    }

    @SimpleProperty(category = PropertyCategory.THEMING, description = "This is the primary color used for Material UI elements, such as the ActionBar.", userVisible = false)
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void PrimaryColor(int i) {
        setPrimaryColor(i);
    }

    @SimpleProperty
    public int PrimaryColor() {
        return this.primaryColor;
    }

    @SimpleProperty(category = PropertyCategory.THEMING, description = "This is the primary color used for darker elements in Material UI.", userVisible = false)
    @DesignerProperty(defaultValue = ComponentConstants.DEFAULT_PRIMARY_DARK_COLOR, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void PrimaryColorDark(int i) {
        this.primaryColorDark = i;
    }

    @SimpleProperty
    public int PrimaryColorDark() {
        return this.primaryColorDark;
    }

    @SimpleProperty(category = PropertyCategory.THEMING, description = "This is the accent color used for highlights and other user interface accents.", userVisible = false)
    @DesignerProperty(defaultValue = ComponentConstants.DEFAULT_ACCENT_COLOR, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void AccentColor(int i) {
        this.accentColor = i;
    }

    @SimpleProperty
    public int AccentColor() {
        return this.accentColor;
    }

    @SimpleProperty(category = PropertyCategory.THEMING, description = "Pick a design theme for your app. Themes change the appearance of an app, such as how buttons and text look. The most common themes are: </p> <ul> <li> <code>Classic</code>: This theme stays consistent whether you are looking at an Android, iOS, or the screen layout in App Inventor’s designer. Choose Classic if you want detailed control of the appearance of your app. </li><li> <code>Device Default</code>: This theme makes your app resemble the other apps on your device. With the default theme, however, your app won’t look consistent across Android, iOS, and App Inventor’s designer. The best way to see the true appearance of your app is to view it using the Companion.", userVisible = false)
    @DesignerProperty(defaultValue = ComponentConstants.DEFAULT_THEME, editorType = PropertyTypeConstants.PROPERTY_TYPE_THEME)
    public void Theme(String str) {
        if (this.usesDefaultBackground) {
            if (str.equalsIgnoreCase("AppTheme")) {
                this.backgroundColor = -16777216;
            } else {
                this.backgroundColor = -1;
            }
            setBackground(this.frameLayout);
        }
        this.usesDarkTheme = false;
        if (str.equals("Theme.MaterialComponents")) {
            setAppInventorTheme(AppInventorCompatActivity.Theme.MATERIAL_DARK);
        } else if (str.equals(ComponentConstants.DEFAULT_THEME)) {
            setAppInventorTheme(AppInventorCompatActivity.Theme.MATERIAL);
        }
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Screen width (x-size).")
    public int Width() {
        Log.d(LOG_TAG, "Form.Width = " + this.formWidth);
        return this.formWidth;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Screen height (y-size).")
    public int Height() {
        Log.d(LOG_TAG, "Form.Height = " + this.formHeight);
        return this.formHeight;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets navigation bar color")
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void NavigationBarColor(int i) {
        $context().getWindow().setNavigationBarColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets status bar color")
    @DesignerProperty(defaultValue = ComponentConstants.DEFAULT_PRIMARY_DARK_COLOR, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void StatusBarColor(int i) {
        this.statusBarColor = i;
        applyStatusbar();
    }

    private void applyStatusbar() {
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 35) {
            WindowCompat.setDecorFitsSystemWindows(window, false);
            WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
            insetsController.setSystemBarsBehavior(2);
            if (this.showStatusBar) {
                insetsController.show(WindowInsetsCompat.Type.statusBars());
                handleStatusbarOverlay();
                return;
            }
            insetsController.hide(WindowInsetsCompat.Type.statusBars());
            View view = this.statusBarOverlay;
            if (view == null || view.getParent() == null) {
                return;
            }
            ((ViewGroup) this.statusBarOverlay.getParent()).removeView(this.statusBarOverlay);
            this.statusBarOverlay = null;
            return;
        }
        if (this.showStatusBar) {
            window.clearFlags(1024);
            window.addFlags(2048);
            window.clearFlags(Declaration.PUBLIC_ACCESS);
            window.addFlags(Integer.MIN_VALUE);
            int i = this.statusBarColor;
            if (i == 0) {
                i = DEFAULT_PRIMARY_COLOR_DARK;
            }
            window.setStatusBarColor(i);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(2048);
    }

    private void handleStatusbarOverlay() {
        if (this.frameWithTitle == null) {
            return;
        }
        if (this.statusBarOverlay == null) {
            this.statusBarOverlay = new View(this);
        }
        View view = this.statusBarOverlay;
        int i = this.statusBarColor;
        if (i == 0) {
            i = DEFAULT_PRIMARY_COLOR_DARK;
        }
        view.setBackgroundColor(i);
        ViewCompat.setOnApplyWindowInsetsListener(this.frameWithTitle, new androidx.core.view.inputmethod.a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$handleStatusbarOverlay$0(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        if (insets.top > 0) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, insets.top);
            if (this.statusBarOverlay.getParent() == null) {
                this.frameWithTitle.addView(this.statusBarOverlay, 0, layoutParams);
            } else {
                this.statusBarOverlay.setLayoutParams(layoutParams);
            }
            CoordinatorLayout coordinatorLayout = this.coordinatorLayout;
            if (coordinatorLayout != null) {
                coordinatorLayout.setPadding(coordinatorLayout.getPaddingLeft(), 0, this.coordinatorLayout.getPaddingRight(), this.coordinatorLayout.getPaddingBottom());
            }
        }
        return WindowInsetsCompat.CONSUMED;
    }

    @SimpleProperty(description = "The platform the app is running on, for example \"Android\" or \"iOS\".")
    public String Platform() {
        return "Android";
    }

    @SimpleProperty(description = "The dotted version number of the platform, such as 4.2.2 or 10.0. This is platform specific and there is no guarantee that it has a particular format.")
    public String PlatformVersion() {
        return Build.VERSION.RELEASE;
    }

    public static void switchForm(String str) {
        String str2 = CLASS_NAME;
        if (activeForm != null) {
            StringBuilder sb = new StringBuilder("");
            if (!str2.startsWith(YaVersion.ACCEPTABLE_COMPANION_PACKAGE)) {
                String str3 = CLASS_NAME;
                sb.append(str3.substring(0, str3.lastIndexOf(46)));
                sb.append(".");
            }
            sb.append(str);
            activeForm.startNewForm(sb.toString(), null);
            return;
        }
        throw new IllegalStateException("activeForm is null");
    }

    public static void switchFormWithStartValue(String str, Object obj) {
        String str2 = CLASS_NAME;
        if (activeForm != null) {
            StringBuilder sb = new StringBuilder("");
            if (!str2.startsWith(YaVersion.ACCEPTABLE_COMPANION_PACKAGE)) {
                String str3 = CLASS_NAME;
                sb.append(str3.substring(0, str3.lastIndexOf(46)));
                sb.append(".");
            }
            sb.append(str);
            activeForm.startNewForm(sb.toString(), obj);
            return;
        }
        throw new IllegalStateException("activeForm is null");
    }

    public void startNewForm(String str, Object obj) {
        String strJsonEncodeForForm;
        Log.i(LOG_TAG, "startNewForm:" + str);
        Intent intent = new Intent();
        String packageName = getPackageName();
        intent.setClassName(this, packageName.startsWith(YaVersion.ACCEPTABLE_COMPANION_PACKAGE) ? _COROUTINE.a.j(packageName, ".", str) : str);
        String str2 = obj == null ? "open another screen" : "open another screen with start value";
        if (obj != null) {
            Log.i(LOG_TAG, "StartNewForm about to JSON encode:" + obj);
            strJsonEncodeForForm = jsonEncodeForForm(obj, str2);
            _COROUTINE.a.C("StartNewForm got JSON encoding:", strJsonEncodeForForm, LOG_TAG);
        } else {
            strJsonEncodeForForm = "";
        }
        intent.putExtra(ARGUMENT_NAME, strJsonEncodeForForm);
        this.nextFormName = str;
        _COROUTINE.a.C("about to start new form", str, LOG_TAG);
        try {
            Log.i(LOG_TAG, "startNewForm starting activity:" + intent);
            startActivityForResult(intent, 1);
            AnimationUtil.ApplyOpenScreenAnimation(this, this.openAnimType);
        } catch (ActivityNotFoundException unused) {
            dispatchErrorOccurredEvent(this, str2, ErrorMessages.ERROR_SCREEN_NOT_FOUND, str);
        }
    }

    public static String jsonEncodeForForm(Object obj, String str) {
        String jsonRepresentation;
        _COROUTINE.a.C("jsonEncodeForForm -- creating JSON representation:", obj.toString(), LOG_TAG);
        try {
            jsonRepresentation = JsonUtil.getJsonRepresentation(obj);
        } catch (JSONException unused) {
            jsonRepresentation = "";
        }
        try {
            Log.i(LOG_TAG, "jsonEncodeForForm -- got JSON representation:" + jsonRepresentation);
            return jsonRepresentation;
        } catch (JSONException unused2) {
            Form form = activeForm;
            form.dispatchErrorOccurredEvent(form, str, ErrorMessages.ERROR_SCREEN_BAD_VALUE_FOR_SENDING, obj.toString());
            return jsonRepresentation;
        }
    }

    @SimpleEvent(description = "Event raised when another screen has closed and control has returned to this screen.")
    public void OtherScreenClosed(String str, Object obj) {
        Log.i(LOG_TAG, "Form " + this.formName + " OtherScreenClosed, otherScreenName = " + str + ", result = " + obj.toString());
        EventDispatcher.dispatchEvent(this, "OtherScreenClosed", str, obj);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void $add(AndroidViewComponent androidViewComponent) {
        this.viewLayout.add(androidViewComponent);
        this.allChildren.add(androidViewComponent);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public List<? extends Component> getChildren() {
        return this.allChildren;
    }

    public float deviceDensity() {
        return this.deviceDensity;
    }

    public float compatScalingFactor() {
        return this.compatScalingFactor;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(final AndroidViewComponent androidViewComponent, final int i) {
        int iWidth = Width();
        if (iWidth == 0) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.12
                @Override // java.lang.Runnable
                public void run() {
                    System.err.println("(Form)Width not stable yet... trying again");
                    Form.this.setChildWidth(androidViewComponent, i);
                }
            }, 100L);
        }
        PrintStream printStream = System.err;
        StringBuilder sbN = _COROUTINE.a.n(i, iWidth, "Form.setChildWidth(): width = ", " parent Width = ", " child = ");
        sbN.append(androidViewComponent);
        printStream.println(sbN.toString());
        if (i <= -1000) {
            i = (iWidth * (-(i + 1000))) / 100;
        }
        androidViewComponent.setLastWidth(i);
        ViewUtil.setChildWidthForVerticalLayout(androidViewComponent.getView(), i);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(final AndroidViewComponent androidViewComponent, final int i) {
        if (Height() == 0) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.13
                @Override // java.lang.Runnable
                public void run() {
                    System.err.println("(Form)Height not stable yet... trying again");
                    Form.this.setChildHeight(androidViewComponent, i);
                }
            }, 100L);
        }
        if (i <= -1000) {
            i = (Height() * (-(i + 1000))) / 100;
        }
        androidViewComponent.setLastHeight(i);
        ViewUtil.setChildHeightForVerticalLayout(androidViewComponent.getView(), i);
    }

    public static Form getActiveForm() {
        return activeForm;
    }

    public static String getStartText() {
        Form form = activeForm;
        if (form != null) {
            return form.startupValue;
        }
        throw new IllegalStateException("activeForm is null");
    }

    public static Object getStartValue() {
        Form form = activeForm;
        if (form != null) {
            return decodeJSONStringForForm(form.startupValue, "get start value");
        }
        throw new IllegalStateException("activeForm is null");
    }

    public static void finishActivity() {
        Form form = activeForm;
        if (form != null) {
            form.closeForm(null);
            return;
        }
        throw new IllegalStateException("activeForm is null");
    }

    public static void finishActivityWithResult(Object obj) {
        Form form = activeForm;
        if (form != null) {
            if (form instanceof ReplForm) {
                ((ReplForm) form).setResult(obj);
                activeForm.closeForm(null);
                return;
            } else {
                String strJsonEncodeForForm = jsonEncodeForForm(obj, "close screen with value");
                Intent intent = new Intent();
                intent.putExtra(RESULT_NAME, strJsonEncodeForForm);
                activeForm.closeForm(intent);
                return;
            }
        }
        throw new IllegalStateException("activeForm is null");
    }

    public static void finishActivityWithTextResult(String str) {
        if (activeForm != null) {
            Intent intent = new Intent();
            intent.putExtra(RESULT_NAME, str);
            activeForm.closeForm(intent);
            return;
        }
        throw new IllegalStateException("activeForm is null");
    }

    public void closeForm(Intent intent) {
        if (intent != null) {
            setResult(-1, intent);
        }
        finish();
        AnimationUtil.ApplyCloseScreenAnimation(this, this.closeAnimType);
    }

    public static void finishApplication() {
        Form form = activeForm;
        if (form != null) {
            form.closeApplicationFromBlocks();
            return;
        }
        throw new IllegalStateException("activeForm is null");
    }

    public void closeApplicationFromBlocks() {
        closeApplication();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeApplicationFromMenu() {
        closeApplication();
    }

    private void closeApplication() {
        applicationIsBeingClosed = true;
        finish();
        if (this.formName.equals("Screen1")) {
            System.exit(0);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        this.menu = menu;
        ((MenuBuilder) menu).setOptionalIconsVisible(true);
        if (this.createAbout && this.showMenu) {
            addAboutInfoToMenu(menu);
        }
        Iterator<OnCreateOptionsMenuListener> it = this.onCreateOptionsMenuListeners.iterator();
        while (it.hasNext()) {
            it.next().onCreateOptionsMenu(menu);
        }
        MenuInitialize();
        return true;
    }

    public void addExitButtonToMenu(Menu menu) {
        menu.add(0, 0, 1, "Stop this application").setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.Form.14
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                Form.this.showExitApplicationNotification();
                return true;
            }
        }).setIcon(R.drawable.ic_notification_clear_all);
    }

    public void addAboutInfoToMenu(Menu menu) {
        menu.add("About this application").setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.Form.15
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                Form.this.showAboutApplicationNotification();
                return true;
            }
        });
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            TitleBarBackButtonClick();
            return true;
        }
        Iterator<OnOptionsItemSelectedListener> it = this.onOptionsItemSelectedListeners.iterator();
        while (it.hasNext()) {
            if (it.next().onOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExitApplicationNotification() {
        Runnable runnable = new Runnable() { // from class: com.google.appinventor.components.runtime.Form.16
            @Override // java.lang.Runnable
            public void run() {
                Form.this.closeApplicationFromMenu();
            }
        };
        Runnable runnable2 = new Runnable() { // from class: com.google.appinventor.components.runtime.Form.17
            @Override // java.lang.Runnable
            public void run() {
            }
        };
        Notifier.twoButtonDialog(this, "Stop this application and exit? You'll need to relaunch the application to use it again.", "Stop application?", "Stop and exit", "Don't stop", false, runnable, runnable2, runnable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAboutApplicationNotification() {
        Notifier.oneButtonAlert(this, (this.aboutScreen + "<p><small><em>Invented Niotron<br>niotron.com</em></small></p>").replaceAll("\\n", "<br>"), "About this app", "Got it");
    }

    public void clear() {
        Log.d(LOG_TAG, "Form " + this.formName + " clear called");
        this.viewLayout.getLayoutManager().removeAllViews();
        FrameLayout frameLayout = this.frameLayout;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            this.frameLayout = null;
        }
        defaultPropertyValues();
        this.onStopListeners.clear();
        this.onNewIntentListeners.clear();
        this.onResumeListeners.clear();
        this.onOrientationChangeListeners.clear();
        this.onPauseListeners.clear();
        this.onDestroyListeners.clear();
        this.onInitializeListeners.clear();
        this.onCreateOptionsMenuListeners.clear();
        this.onOptionsItemSelectedListeners.clear();
        this.screenInitialized = false;
        Iterator<OnClearListener> it = this.onClearListeners.iterator();
        while (it.hasNext()) {
            it.next().onClear();
        }
        this.onClearListeners.clear();
        System.err.println("Form.clear() About to do moby GC!");
        System.gc();
        this.dimChanges.clear();
    }

    public FrameLayout getFrameLayout() {
        return this.frameLayout;
    }

    public void deleteComponent(Object obj) {
        if (obj instanceof OnStopListener) {
            this.onStopListeners.remove(obj);
        }
        if (obj instanceof OnNewIntentListener) {
            this.onNewIntentListeners.remove(obj);
        }
        if (obj instanceof OnResumeListener) {
            this.onResumeListeners.remove(obj);
        }
        if (obj instanceof OnOrientationChangeListener) {
            this.onOrientationChangeListeners.remove(obj);
        }
        if (obj instanceof OnPauseListener) {
            this.onPauseListeners.remove(obj);
        }
        if (obj instanceof OnDestroyListener) {
            this.onDestroyListeners.remove(obj);
        }
        if (obj instanceof OnInitializeListener) {
            this.onInitializeListeners.remove(obj);
        }
        if (obj instanceof OnCreateOptionsMenuListener) {
            this.onCreateOptionsMenuListeners.remove(obj);
        }
        if (obj instanceof OnOptionsItemSelectedListener) {
            this.onOptionsItemSelectedListeners.remove(obj);
        }
        if (obj instanceof Deleteable) {
            ((Deleteable) obj).onDelete();
        }
    }

    public void dontGrabTouchEventsForComponent() {
        this.frameLayout.requestDisallowInterceptTouchEvent(true);
    }

    public boolean toastAllowed() {
        long jNanoTime = System.nanoTime();
        if (jNanoTime <= this.lastToastTime + minimumToastWait) {
            return false;
        }
        this.lastToastTime = jNanoTime;
        return true;
    }

    public void callInitialize(Object obj) throws Throwable {
        try {
            Method method = obj.getClass().getMethod("Initialize", null);
            try {
                Log.i(LOG_TAG, "calling Initialize method for Object " + obj.toString());
                method.invoke(obj, null);
            } catch (InvocationTargetException e) {
                Log.i(LOG_TAG, "invoke exception: " + e.getMessage());
                throw e.getTargetException();
            }
        } catch (NoSuchMethodException unused) {
        } catch (SecurityException e2) {
            _COROUTINE.a.C("Security exception ", e2.getMessage(), LOG_TAG);
        }
    }

    public synchronized Bundle fullScreenVideoAction(int i, VideoPlayer videoPlayer, Object obj) {
        return this.fullScreenVideoUtil.performAction(i, videoPlayer, obj);
    }

    private void setBackground(View view) {
        Drawable colorDrawable;
        Drawable drawable = this.backgroundDrawable;
        if (this.backgroundImagePath != "" && drawable != null) {
            colorDrawable = drawable.getConstantState().newDrawable();
            int i = this.backgroundColor;
            colorDrawable.setColorFilter(i != 0 ? i : -1, PorterDuff.Mode.DST_OVER);
        } else {
            int i2 = this.backgroundColor;
            colorDrawable = new ColorDrawable(i2 != 0 ? i2 : -1);
        }
        ViewUtil.setBackgroundImage(view, colorDrawable);
        view.invalidate();
    }

    public static boolean getCompatibilityMode() {
        return sCompatibilityMode;
    }

    @SimpleFunction(description = "Hide the onscreen soft keyboard.")
    public void HideKeyboard() {
        View currentFocus = getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = this.frameLayout;
        }
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }

    @SimpleFunction(description = "Keeps the screen on")
    public void KeepScreeenOn() {
        $context().getWindow().addFlags(128);
    }

    public void updateTitle() {
        this.themeHelper.setTitle(this.title);
    }

    public boolean isDarkTheme() {
        return this.usesDarkTheme;
    }

    public boolean isDeniedPermission(String str) {
        return Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(this, str) == -1;
    }

    public void assertPermission(String str) {
        if (isDeniedPermission(str)) {
            throw new PermissionException(str);
        }
    }

    @SimpleFunction(description = "Checks whether the mentioned permission has been granted, it will return true or false.")
    public boolean IsPermissionGranted(@Options(Permission.class) String str) {
        return ContextCompat.checkSelfPermission($context(), str) == 0;
    }

    @SimpleFunction(description = "When Verifying that all the permissions mentioned in the list have been allowed, it will return true or false.")
    public boolean AreMultiplePermissionGranted(YailList yailList) {
        String[] stringArray = yailList.toStringArray();
        Boolean bool = Boolean.TRUE;
        for (String str : stringArray) {
            if (ContextCompat.checkSelfPermission($context(), str) != 0) {
                bool = Boolean.FALSE;
            }
        }
        return bool.booleanValue();
    }

    public void askPermission(final String str, final PermissionResultHandler permissionResultHandler) {
        if (!isDeniedPermission(str)) {
            permissionResultHandler.HandlePermissionResponse(str, true);
        } else {
            this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.18
                @Override // java.lang.Runnable
                public void run() {
                    int iNextInt = Form.this.permissionRandom.nextInt(Form.MAX_PERMISSION_NONCE);
                    Log.d(Form.LOG_TAG, "askPermission: permission = " + str + " requestCode = " + iNextInt);
                    Form.this.permissionHandlers.put(Integer.valueOf(iNextInt), permissionResultHandler);
                    ActivityCompat.requestPermissions(this, new String[]{str}, iNextInt);
                }
            });
        }
    }

    public void askPermission(final BulkPermissionRequest bulkPermissionRequest) {
        final List<String> permissions = bulkPermissionRequest.getPermissions();
        Iterator<String> it = permissions.iterator();
        while (it.hasNext()) {
            if (!isDeniedPermission(it.next())) {
                it.remove();
            }
        }
        if (permissions.size() == 0) {
            bulkPermissionRequest.onGranted();
        } else {
            this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Form.19
                @Override // java.lang.Runnable
                public void run() {
                    final Iterator it2 = permissions.iterator();
                    Form.this.askPermission((String) it2.next(), new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Form.19.1
                        final List<String> deniedPermissions = new ArrayList();

                        @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                        public void HandlePermissionResponse(String str, boolean z) {
                            if (!z) {
                                this.deniedPermissions.add(str);
                            }
                            if (it2.hasNext()) {
                                Form.this.askPermission((String) it2.next(), this);
                            } else if (this.deniedPermissions.size() == 0) {
                                bulkPermissionRequest.onGranted();
                            } else {
                                bulkPermissionRequest.onDenied((String[]) this.deniedPermissions.toArray(new String[0]));
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        PermissionResultHandler permissionResultHandler = this.permissionHandlers.get(Integer.valueOf(i));
        if (permissionResultHandler == null) {
            Log.e(LOG_TAG, "Received permission response which we cannot match.");
            return;
        }
        if (iArr.length > 0) {
            if (iArr[0] == 0) {
                permissionResultHandler.HandlePermissionResponse(strArr[0], true);
            } else {
                permissionResultHandler.HandlePermissionResponse(strArr[0], false);
            }
        } else {
            Log.d(LOG_TAG, "onRequestPermissionsResult: grantResults.length = " + iArr.length + " requestCode = " + i);
        }
        this.permissionHandlers.remove(Integer.valueOf(i));
    }

    public boolean doesAppDeclarePermission(String str) {
        return this.permissions.contains(str);
    }

    public String getAssetPath(String str) {
        return _COROUTINE.a.i(ASSETS_PREFIX, str);
    }

    public String getCachePath(String str) {
        return _COROUTINE.a.i("file://", new java.io.File(getCacheDir(), str).getAbsolutePath());
    }

    public String getDefaultPath(String str) {
        return FileUtil.resolveFileName(this, str, this.defaultFileScope);
    }

    public String getPrivatePath(String str) {
        return _COROUTINE.a.i("file://", new java.io.File(getFilesDir(), str).getAbsolutePath());
    }

    public InputStream openAsset(String str) throws IOException {
        return openAssetInternal(getAssetPath(str));
    }

    public String getAssetPathForExtension(Component component, String str) throws FileNotFoundException {
        return ASSETS_PREFIX + component.getClass().getPackage().getName() + "/" + str;
    }

    public InputStream openAssetForExtension(Component component, String str) throws IOException {
        return openAssetInternal(getAssetPathForExtension(component, str));
    }

    @VisibleForTesting
    public InputStream openAssetInternal(String str) throws IOException {
        if (str.startsWith(ASSETS_PREFIX)) {
            return getAssets().open(str.substring(22));
        }
        if (str.startsWith("file:")) {
            return FileUtil.openFile(this, URI.create(str));
        }
        return FileUtil.openFile(this, str);
    }

    public Bitmap getBitmapFromAsset(String str) throws IOException {
        if (str.startsWith(ASSETS_PREFIX)) {
            return BitmapFactory.decodeStream(getAssets().open(str.substring(22)));
        }
        if (str.startsWith("file:")) {
            getAssets();
            return BitmapFactory.decodeStream(FileUtil.openFile(URI.create(str)));
        }
        getAssets();
        return BitmapFactory.decodeStream(FileUtil.openFile(str));
    }

    public DrawerLayout getDrawerLayout() {
        return this.drawerLayout;
    }

    public void enableHamburger() {
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, this.drawerLayout, this.toolbar, R.string.untitled, R.string.untitled);
        this.toggle = actionBarDrawerToggle;
        actionBarDrawerToggle.setDrawerIndicatorEnabled(true);
        this.toggle.setDrawerSlideAnimationEnabled(true);
        this.toggle.syncState();
        this.toggle.getDrawerArrowDrawable().setColor(this.titleColor);
    }

    public ActionBarDrawerToggle getToggle() {
        return this.toggle;
    }

    public ExtendedFloatingActionButton getFAB() {
        return this.fab;
    }

    public void setFAB(ExtendedFloatingActionButton extendedFloatingActionButton) {
        this.fab = extendedFloatingActionButton;
        this.coordinatorLayout.addView(extendedFloatingActionButton);
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
        layoutParams.gravity = 8388693;
        this.fab.setLayoutParams(layoutParams);
    }

    public BottomAppBar getBottomAppBar() {
        return this.bottomAppBar;
    }

    public void setBottomAppBar(BottomAppBar bottomAppBar) {
        this.bottomAppBar = bottomAppBar;
        this.coordinatorLayout.addView(bottomAppBar);
    }

    public CoordinatorLayout getCoordinatorLayout() {
        return this.coordinatorLayout;
    }
}
