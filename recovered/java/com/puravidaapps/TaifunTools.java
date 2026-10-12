package com.puravidaapps;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import android.util.Patterns;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.OnDestroyListener;
import com.google.appinventor.components.runtime.OnPauseListener;
import com.google.appinventor.components.runtime.OnResumeListener;
import com.google.appinventor.components.runtime.OnStopListener;
import com.google.appinventor.components.runtime.ReplForm;
import gnu.expr.Declaration;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

@DesignerComponent(category = ComponentCategory.EXTENSION, description = "A collection of several tools, which do not need additional permissions. Version 21a as of 2021-01-06.", helpUrl = "https://puravidaapps.com/tools.php", iconName = "https://puravidaapps.com/images/taifun16.png", nonVisible = true, version = 21)
@SimpleObject(external = true)
/* loaded from: classes2.dex */
public class TaifunTools extends AndroidNonvisibleComponent implements Component, OnPauseListener, OnResumeListener, OnStopListener, OnDestroyListener {
    public static final int VERSION = 21;
    public static Activity f;

    /* renamed from: a, reason: collision with root package name */
    public final ComponentContainer f5448a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f5449b;
    public final InputMethodManager c;
    public boolean d;
    public final boolean e;

    @SimpleFunction(description = "Exclusive or for boolean: returns true only when inputs differ (one is true, the other is false).")
    public boolean Xor(boolean z, boolean z2) {
        return z ^ z2;
    }

    public TaifunTools(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.e = false;
        Form form = this.form;
        if (form instanceof ReplForm) {
            this.e = true;
        }
        form.registerForOnPause(this);
        this.form.registerForOnStop(this);
        this.form.registerForOnResume(this);
        this.form.registerForOnDestroy(this);
        this.f5448a = componentContainer;
        f = componentContainer.$context();
        this.f5449b = componentContainer.$context();
        this.c = (InputMethodManager) f.getSystemService("input_method");
        Log.d("TaifunTools", "TaifunTools Created");
    }

    @SimpleFunction(description = "Gallery Refresh for a specific filename.")
    public String GalleryRefresh(String str) {
        Log.i("TaifunTools", "Refresh, filename: " + str);
        MediaScannerConnection.scanFile(f, new String[]{new File(str).getAbsolutePath()}, null, new a());
        return str;
    }

    public class a implements MediaScannerConnection.OnScanCompletedListener {
        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            Log.i("TaifunTools", "onScanCompleted, path: " + str + ", uri: " + uri);
        }
    }

    @SimpleFunction(description = "Returns a base64 encoded HMAC SHA1 hash. Precondition to use this block: Min Android Version of the app must be 8!")
    public String HmacSha1(String str, String str2) {
        Log.d("TaifunTools", "HmacSha1");
        return a(str, str2, "HmacSHA1");
    }

    @SimpleFunction(description = "Returns a base64 encoded HMAC SHA256 hash. Precondition to use this block: Min Android Version of the app must be 8!")
    public String HmacSha256(String str, String str2) {
        Log.d("TaifunTools", "HmacSha256");
        return a(str, str2, "HmacSha256");
    }

    public static String a(String str, String str2, String str3) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("UTF-8"), str3);
            Mac mac = Mac.getInstance(str3);
            mac.init(secretKeySpec);
            return Base64.encodeToString(mac.doFinal(str.getBytes("UTF-8")), 0);
        } catch (Exception e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    @SimpleFunction(description = "Returns a list of available sensors")
    public Object SensorList() {
        List<Sensor> sensorList = ((SensorManager) this.f5449b.getSystemService("sensor")).getSensorList(-1);
        ArrayList arrayList = new ArrayList();
        for (Sensor sensor : sensorList) {
            HashMap map = new HashMap();
            map.put("name", sensor.getName());
            map.put("vendor", sensor.getVendor());
            arrayList.add(map);
        }
        return arrayList;
    }

    @SimpleFunction(description = "Hide the system user interface")
    public void HideSystemUI() {
        this.f5449b.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    @SimpleFunction(description = "Show the system user interface")
    public void ShowSystemUI() {
        this.f5449b.getWindow().getDecorView().setSystemUiVisibility(1792);
    }

    @SimpleFunction(description = "Returns the version code of the app")
    public int VersionCode() {
        Log.d("TaifunTools", "VersionCode");
        try {
            return f.getPackageManager().getPackageInfo(f.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return 0;
        }
    }

    @SimpleEvent(description = "Event indicating that the state of the activity changed.Possible values are pause, stop, resume. See also the activity lifecycle here http://developer.android.com/reference/android/app/Activity.html#ActivityLifecycle")
    public void ActivityStateChanged(String str) {
        _COROUTINE.a.C("ActivityStateChanged: ", str, "TaifunTools");
        EventDispatcher.dispatchEvent(this, "ActivityStateChanged", str);
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        ActivityStateChanged("resume");
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        ActivityStateChanged("pause");
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        ActivityStateChanged("stop");
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        Log.i("TaifunTools", "onDestroy");
        ActivityStateChanged("destroy");
    }

    @SimpleFunction(description = "Show the keyboard")
    public void ShowKeyboard() {
        Log.d("TaifunTools", "ShowKeyboard");
        this.c.toggleSoftInput(2, 1);
    }

    @SimpleFunction(description = "Clear the cache of the current app. Returns true if clearing was successful, else false.")
    public boolean ClearCache() {
        Log.d("TaifunTools", "ClearCache");
        try {
            File cacheDir = f.getCacheDir();
            Log.d("TaifunTools", "dir: " + cacheDir);
            return b(cacheDir);
        } catch (Exception e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public static boolean b(File file) {
        if (file == null || !file.isDirectory()) {
            if (file == null || !file.isFile()) {
                return false;
            }
            return file.delete();
        }
        String[] list = file.list();
        for (int i = 0; i < list.length; i++) {
            StringBuilder sbO = _COROUTINE.a.o(i, "i: ", ", children: ");
            sbO.append(list[i]);
            Log.d("TaifunTools", sbO.toString());
            if (!b(new File(file, list[i]))) {
                return false;
            }
        }
        return file.delete();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "whether Warnings should be suppressed")
    public boolean SuppressWarnings() {
        return this.d;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "false", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SuppressWarnings(boolean z) {
        this.d = z;
    }

    @SimpleFunction(description = "Exclusive or for hex strings, returns hex result. Strings must have the same length.")
    public String XorHex(String str, String str2) {
        if (str.length() != str2.length()) {
            if (!this.d) {
                Toast.makeText(f, "Strings must have the same length.", 0).show();
                return "";
            }
        } else if (!str.matches("-?[0-9a-fA-F]+") || !str2.matches("-?[0-9a-fA-F]+")) {
            if (!this.d) {
                Toast.makeText(f, "Strings must be hex values.", 0).show();
            }
        } else {
            int length = str.length();
            char[] cArr = new char[length];
            for (int i = 0; i < length; i++) {
                int iC = c(str.charAt(i)) ^ c(str2.charAt(i));
                if (iC >= 0 && iC <= 15) {
                    cArr[i] = "0123456789ABCDEF".charAt(iC);
                } else {
                    throw new IllegalArgumentException();
                }
            }
            return new String(cArr);
        }
        return "";
    }

    public static int c(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'A' && c <= 'F') {
            return c - '7';
        }
        if (c < 'a' || c > 'f') {
            throw new IllegalArgumentException();
        }
        return c - 'W';
    }

    @SimpleProperty(description = "Set status bar color. This will work starting from API Level 21 (Android Lollipop")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void StatusBarColor(int i) {
        Window window = this.f5449b.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.clearFlags(Declaration.PUBLIC_ACCESS);
        window.setStatusBarColor(i);
    }

    @SimpleProperty(description = "Set navigation bar color. This will work starting from API Level 21 (Android Lollipop")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void NavigationBarColor(int i) {
        Window window = this.f5449b.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.clearFlags(Declaration.PACKAGE_ACCESS);
        window.setNavigationBarColor(i);
    }

    @SimpleFunction(description = "Hide content, i.e. enable content to move behind status and navigation bar.")
    public void HideContent() {
        this.f5449b.getWindow().getDecorView().setSystemUiVisibility(1792);
    }

    @SimpleProperty(description = "Set title color.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TitleColor(int i) {
        this.f5449b.getWindow().setTitleColor(i);
    }

    @SimpleProperty(description = "Returns the language code of the current Locale. A Locale object represents a specific geographical, political, or cultural region.")
    public String Language() {
        return f.getResources().getConfiguration().locale.getLanguage();
    }

    @SimpleProperty(description = "Returns the country/region code of the current Locale, which should either be the empty string, an uppercase ISO 3166 2-letter code, or a UN M.49 3-digit code. A Locale object represents a specific geographical, political, or cultural region.")
    public String Country() {
        return f.getResources().getConfiguration().locale.getCountry();
    }

    @SimpleFunction(description = "Base64 encode a string. Precondition to use this block: Min Android Version of the app must be 8!")
    public String Base64Encode(String str) {
        Log.d("TaifunTools", "Base64Encode");
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 2);
        } catch (UnsupportedEncodingException e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return e.getMessage();
        }
    }

    @SimpleFunction(description = "returns true, if string matches a regular expression, else false")
    public boolean Matches(String str, String str2) {
        Log.d("TaifunTools", "Matches");
        return str.matches(str2);
    }

    @SimpleFunction(description = "As long as this window is visible to the user, keep the device's screen turned on and bright.")
    public void KeepScreenOn() {
        Log.d("TaifunTools", "KeepScreenOn");
        this.f5449b.getWindow().addFlags(128);
    }

    @SimpleFunction(description = "Returns the version name of the app")
    public String VersionName() {
        Log.d("TaifunTools", "VersionName");
        try {
            return f.getPackageManager().getPackageInfo(f.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return "";
        }
    }

    @SimpleFunction(description = "Returns true, if it is a valid email address, else false.")
    public boolean EmailAddressIsValid(String str) {
        Log.d("TaifunTools", "EmailAddressIsValid");
        return Patterns.EMAIL_ADDRESS.matcher(str).matches();
    }

    @SimpleFunction(description = "Returns the path to the assets. This method is useful, if you want to access files from the webviewer component stored in the assets of the app. The method will return 'file:///android_asset/' in case the app is running after building the app as apk file. For the companion app there can be returned 3 different values: file:///storage/emulated/0/Android/data/<packageName>/files/assets/ for devices >= Android 10, file:///storage/emulated/0/AppInventor/assets/' for the App Inventor companion app and < Android 10, file:///storage/emulated/0/Makeroid/assets/' for the Kodular (formerly Makeroid) companion app and < Android 10.")
    public String PathToAssets() {
        Log.d("TaifunTools", "PathToAssets");
        if (this.e) {
            if (Build.VERSION.SDK_INT >= 29) {
                return "file://" + ApplicationSpecificDirectory() + "/assets/";
            }
            if (f.getPackageName().contains("makeroid")) {
                return "file:///storage/emulated/0/Makeroid/assets/";
            }
            return "file:///storage/emulated/0/AppInventor/assets/";
        }
        return Form.ASSETS_PREFIX;
    }

    @SimpleFunction(description = "Returns the density of the device.")
    public double Density() {
        Log.d("TaifunTools", "Density");
        return this.f5449b.getResources().getDisplayMetrics().density;
    }

    @SimpleFunction(description = "Returns the package name of the app.")
    public String PackageName() {
        Log.d("TaifunTools", "PackageName: " + f.getPackageName());
        return f.getPackageName();
    }

    @SimpleFunction(description = "Returns true, if app is running in development mode (using the companion app), else returns false.")
    public boolean IsDevelopment() {
        StringBuilder sb = new StringBuilder("IsDevelopment: ");
        boolean z = this.e;
        sb.append(z);
        Log.d("TaifunTools", sb.toString());
        return z;
    }

    @SimpleFunction(description = "Returns a Sha256 hash of a given string.")
    public String Sha256(String str) {
        Log.d("TaifunTools", "Sha256");
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append('0');
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return "";
        }
    }

    @SimpleFunction(description = "Remove the KeepScreenOn flag.")
    public void DontKeepScreenOn() {
        Log.d("TaifunTools", "KeepScreenOn");
        this.f5449b.getWindow().clearFlags(128);
    }

    @SimpleFunction(description = "API Level.")
    public int ApiLevel() {
        Log.d("TaifunTools", "ApiLEvel");
        return Build.VERSION.SDK_INT;
    }

    @SimpleFunction(description = "Returns the application specific directory you can use to write files without having WRITE_EXTERNAL_STORAGE permission.")
    public String ApplicationSpecificDirectory() {
        Log.d("TaifunTools", "ApplicationSpecificDirectory");
        return f.getExternalFilesDir(null).toString();
    }

    @SimpleFunction(description = "Clear the app data of the current app. Returns true if clearing was successful, else false.")
    public boolean ClearAppData() {
        Log.d("TaifunTools", "ClearAppData");
        try {
            ((ActivityManager) f.getSystemService("activity")).clearApplicationUserData();
            return true;
        } catch (Exception e) {
            Log.e("TaifunTools", e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
