package com.watermelonice.BrightnessTools;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.OnDestroyListener;
import com.google.appinventor.components.runtime.OnPauseListener;
import com.google.appinventor.components.runtime.OnResumeListener;
import java.lang.reflect.Field;

@UsesPermissions(permissionNames = "android.permission.WRITE_SETTINGS")
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "This extension is created for changing the brightness of user's phone. <br> Created by WatermelonIce <br><br> <b>My Profile in Kodular Community: </b><a href=\"https://community.kodular.io/u/WatermelonIce/summary\">My Profile</a><br><b>Support me by subscribing my YouTube Channel: </b> <a href=\"https://www.youtube.com/channel/UCBq9ouxr4C4OZG0sMCgmpwg\">WatermelonIce YouTube Channel</a>", iconName = "aiwebres/icon.png", nonVisible = true, version = 3, versionName = "v1.2")
@SimpleObject(external = true)
/* loaded from: classes2.dex */
public class BrightnessTools extends AndroidNonvisibleComponent implements OnDestroyListener, OnPauseListener, OnResumeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f5451a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5452b;
    public final ContentObserver c;
    public final ContentObserver d;

    public BrightnessTools(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.f5452b = false;
        this.c = new a(new Handler());
        this.d = new b(new Handler());
        this.f5451a = componentContainer.$context();
        componentContainer.$form().registerForOnDestroy(this);
        componentContainer.$form().registerForOnPause(this);
        componentContainer.$form().registerForOnResume(this);
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        a();
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        a();
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.f5452b) {
            RegisterOnChange();
        }
    }

    @SimpleEvent(description = "Raises when error occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Triggered when detected any brightness or adaptive change. The param \"changed\" indicate what has change.")
    public void Changed(int i, int i2, boolean z) {
        EventDispatcher.dispatchEvent(this, "Changed", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
    }

    @SimpleFunction(description = "After registering, you can detect the brightness and adaptive change.")
    public void RegisterOnChange() {
        Activity activity = this.f5451a;
        try {
            activity.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.c);
            activity.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness_mode"), true, this.d);
            this.f5452b = true;
        } catch (Exception e) {
            ErrorOccurred(e.getMessage());
        }
    }

    @SimpleFunction(description = "Check if modify system setting permission is granted.")
    public boolean CanWriteSettings() {
        try {
            int i = Build.VERSION.SDK_INT;
            Activity activity = this.f5451a;
            if (i >= 23) {
                return Settings.System.canWrite(activity);
            }
            return activity.getPackageManager().checkPermission("android.permission.WRITE_SETTINGS", activity.getPackageName()) == 0;
        } catch (Exception e) {
            ErrorOccurred(e.getMessage());
            return false;
        }
    }

    @SimpleFunction(description = "Show screen for controlling which apps are allowed to write/modify system settings.")
    public void OpenWriteSettingsScreen() {
        try {
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            StringBuilder sb = new StringBuilder("package:");
            Activity activity = this.f5451a;
            sb.append(activity.getPackageName());
            intent.setDataAndNormalize(Uri.parse(sb.toString()));
            activity.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            if (Build.VERSION.SDK_INT < 23) {
                ErrorOccurred("Write Setting screen failed to be opened because it does not exist before API level 23.");
            } else {
                ErrorOccurred("Write Setting screen failed to be opened because it does not exist.");
            }
        } catch (Exception e) {
            ErrorOccurred(e.getMessage());
        }
    }

    @SimpleProperty(description = "Set the brightness of user's phone. Minimum value is 0.")
    public void Brightness(int i) {
        if (CanWriteSettings()) {
            try {
                if (Settings.System.putInt(this.f5451a.getContentResolver(), "screen_brightness", i)) {
                    return;
                }
                ErrorOccurred("The system attempted to modify \"SCREEN_BRIGHTNESS\", but failed.");
                return;
            } catch (Exception e) {
                ErrorOccurred(e.getMessage());
                return;
            }
        }
        ErrorOccurred("Attempted to modify \"SCREEN_BRIGHTNESS\", but \"android.permission.WRITE_SETTINGS\" is not granted.");
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Get current brightness of user's phone. Minimum value is 0. Return -1 if not found.")
    public int Brightness() {
        return Settings.System.getInt(this.f5451a.getContentResolver(), "screen_brightness", -1);
    }

    @SimpleProperty(description = "Set brightness to adaptive or non-adaptive. Adaptive if true, otherwise non-adaptive.")
    public void Adaptive(boolean z) {
        if (CanWriteSettings()) {
            try {
                if (Settings.System.putInt(this.f5451a.getContentResolver(), "screen_brightness_mode", z ? 1 : 0)) {
                    return;
                }
                ErrorOccurred("The system attempted to modify \"SCREEN_BRIGHTNESS_MODE\", but failed.");
                return;
            } catch (Exception e) {
                ErrorOccurred(e.getMessage());
                return;
            }
        }
        ErrorOccurred("Attempted to modify \"SCREEN_BRIGHTNESS_MODE\", but \"android.permission.WRITE_SETTINGS\" is not granted.");
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Get current adaptive state. True if adaptive, otherwise false.")
    public boolean Adaptive() {
        return Settings.System.getInt(this.f5451a.getContentResolver(), "screen_brightness_mode", 0) == 1;
    }

    @SimpleFunction(description = "Get Max brightness of user's phone. If max brightness not found, return 255.")
    public int MaxBrightness() throws SecurityException {
        PowerManager powerManager = (PowerManager) this.f5451a.getSystemService("power");
        if (powerManager == null) {
            return 255;
        }
        for (Field field : powerManager.getClass().getDeclaredFields()) {
            if (field.getName().equals("BRIGHTNESS_ON")) {
                field.setAccessible(true);
                try {
                    return ((Integer) field.get(powerManager)).intValue();
                } catch (IllegalAccessException unused) {
                    return 255;
                }
            }
        }
        return 255;
    }

    public class a extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return false;
        }

        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            BrightnessTools brightnessTools = BrightnessTools.this;
            brightnessTools.Changed(0, brightnessTools.Brightness(), brightnessTools.Adaptive());
        }
    }

    public class b extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return false;
        }

        public b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            BrightnessTools brightnessTools = BrightnessTools.this;
            brightnessTools.Changed(1, brightnessTools.Brightness(), brightnessTools.Adaptive());
        }
    }

    public final void a() {
        if (this.f5452b) {
            Activity activity = this.f5451a;
            try {
                activity.getContentResolver().unregisterContentObserver(this.c);
                activity.getContentResolver().unregisterContentObserver(this.d);
            } catch (Exception e) {
                ErrorOccurred(e.getMessage());
            }
        }
    }
}
