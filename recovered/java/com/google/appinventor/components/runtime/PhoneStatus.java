package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesNativeLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.YaVersion;
import com.google.appinventor.components.runtime.util.AppInvHTTPD;
import com.google.appinventor.components.runtime.util.EclairUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.WebRTCNativeMgr;
import com.google.common.net.HttpHeaders;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.util.Formatter;
import org.acra.util.Installation;

@SimpleObject
@UsesPermissions({"android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE"})
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Component that returns information about the phone.", iconName = "images/phoneip.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "webrtc.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar")
@UsesNativeLibraries(v7aLibraries = "libjingle_peerconnection_so.so", v8aLibraries = "libjingle_peerconnection_so.so", x86_64Libraries = "libjingle_peerconnection_so.so")
/* loaded from: classes.dex */
public class PhoneStatus extends AndroidNonvisibleComponent implements Component {
    private static final String LOG_TAG = "PhoneStatus";
    private static Activity activity = null;
    private static PhoneStatus mainInstance = null;
    private static String popup = "No Page Provided!";
    private static boolean useWebRTC = false;
    private String firstHmacSeed;
    private String firstSeed;
    private final Form form;

    public PhoneStatus(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.firstSeed = null;
        this.firstHmacSeed = null;
        this.form = componentContainer.$form();
        activity = componentContainer.$context();
        if (mainInstance == null) {
            mainInstance = this;
        }
    }

    @SimpleFunction(description = "Returns the IP address of the phone in the form of a String")
    public static String GetWifiIpAddress() {
        int i = ((WifiManager) activity.getSystemService("wifi")).getDhcpInfo().ipAddress;
        if (isConnected()) {
            return intToIp(i);
        }
        return "Error: No Wifi Connection";
    }

    @SimpleFunction(description = "Returns TRUE if the phone is on Wifi, FALSE otherwise")
    public static boolean isConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) activity.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager != null ? connectivityManager.getNetworkInfo(1) : null;
        if (networkInfo == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    @SimpleFunction(description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge...")
    public String setHmacSeedReturnCode(String str, String str2) {
        if (str.equals("")) {
            return "";
        }
        String str3 = this.firstSeed;
        if (str3 != null) {
            if (!str3.equals(str)) {
                Notifier.oneButtonAlert(this.form, "You cannot use two codes with one start up of the Companion. You should restart the Companion and try again.", HttpHeaders.WARNING, "OK", new Runnable() { // from class: com.google.appinventor.components.runtime.PhoneStatus.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PhoneStatus.this.form.finish();
                        System.exit(0);
                    }
                });
            }
            return this.firstHmacSeed;
        }
        this.firstSeed = str;
        if (!useWebRTC) {
            AppInvHTTPD.setHmacKey(str);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer(bArrDigest.length * 2);
            Formatter formatter = new Formatter(stringBuffer);
            for (byte b2 : bArrDigest) {
                formatter.format("%02x", Byte.valueOf(b2));
            }
            Log.d(LOG_TAG, "Seed = ".concat(str));
            Log.d(LOG_TAG, "Code = " + stringBuffer.toString());
            String string = stringBuffer.toString();
            this.firstHmacSeed = string;
            return string;
        } catch (Exception e) {
            Log.e(LOG_TAG, "Exception getting SHA1 Instance", e);
            return "";
        }
    }

    @SimpleFunction(description = "Returns true if we are running in the emulator or USB Connection")
    public boolean isDirect() {
        _COROUTINE.a.B("android.os.Build.VERSION.RELEASE = ", Build.VERSION.RELEASE, LOG_TAG);
        Log.d(LOG_TAG, "android.os.Build.PRODUCT = " + Build.PRODUCT);
        if (AppInventorCompatActivity.isEmulator()) {
            return true;
        }
        Form form = this.form;
        if (form instanceof ReplForm) {
            return ((ReplForm) form).isDirect();
        }
        return false;
    }

    @SimpleFunction(description = "Start the WebRTC engine")
    public void startWebRTC(String str, String str2) {
        if (useWebRTC) {
            WebRTCNativeMgr webRTCNativeMgr = new WebRTCNativeMgr(str, str2);
            webRTCNativeMgr.initiate((ReplForm) this.form, activity, this.firstSeed);
            ((ReplForm) this.form).setWebRTCMgr(webRTCNativeMgr);
        }
    }

    @SimpleFunction(description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!")
    public void startHTTPD(boolean z) {
        if (this.form.isRepl()) {
            ((ReplForm) this.form).startHTTPD(z);
        }
    }

    @SimpleFunction(description = "Declare that we have loaded our initial assets and other assets should come from the sdcard")
    public void setAssetsLoaded() {
        Form form = this.form;
        if (form instanceof ReplForm) {
            ((ReplForm) form).setAssetsLoaded();
        }
    }

    @SimpleFunction(description = "Causes an Exception, used to debug exception processing.")
    public static void doFault() throws Exception {
        throw new Exception("doFault called!");
    }

    @SimpleFunction(description = "Downloads the URL and installs it as an Android Package via the installed browser")
    public void installURL(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("edu.mit.appinventor.companionextras.CompanionExtras");
            cls.getMethod("Extra1", String.class).invoke(cls.getConstructor(Form.class).newInstance(this.form), str);
        } catch (Exception unused) {
            this.form.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(str + "?store=1")));
        }
    }

    @SimpleFunction(description = "Really Exit the Application")
    public void shutdown() {
        this.form.finish();
        System.exit(0);
    }

    @SimpleEvent
    public void OnSettings() {
        EventDispatcher.dispatchEvent(this, "OnSettings", new Object[0]);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void WebRTC(boolean z) {
        useWebRTC = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If True we are using WebRTC to talk to the server.")
    public boolean WebRTC() {
        return useWebRTC;
    }

    @SimpleFunction(description = "Get the current Android SDK Level")
    public int SdkLevel() {
        return SdkLevel.getLevel();
    }

    @SimpleFunction(description = "Return the our VersionName property")
    public String GetVersionName() {
        try {
            return this.form.getPackageManager().getPackageInfo(this.form.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(LOG_TAG, "Unable to get VersionName", e);
            return "UNKNOWN";
        }
    }

    @SimpleFunction(description = "Return the app that installed us")
    public String GetInstaller() {
        if (SdkLevel.getLevel() >= 5) {
            String installerPackageName = EclairUtil.getInstallerPackageName(YaVersion.ACCEPTABLE_COMPANION_PACKAGE, this.form);
            return installerPackageName == null ? "sideloaded" : installerPackageName;
        }
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    @SimpleFunction(description = "Return the ACRA Installation ID")
    public String InstallationId() {
        return Installation.id(this.form);
    }

    @SimpleFunction(description = "Set the content of the Pop-Up page used for the new legacy connection")
    public void SetPopup(String str) {
        popup = str;
    }

    public static String getPopup() {
        return popup;
    }

    public static boolean getUseWebRTC() {
        return useWebRTC;
    }

    public static void doSettings() {
        Log.d(LOG_TAG, "doSettings called.");
        PhoneStatus phoneStatus = mainInstance;
        if (phoneStatus != null) {
            phoneStatus.OnSettings();
        } else {
            Log.d(LOG_TAG, "mainStance is null on doSettings");
        }
    }

    public static String intToIp(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }
}
