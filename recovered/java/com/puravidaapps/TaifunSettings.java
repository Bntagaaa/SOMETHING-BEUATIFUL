package com.puravidaapps;

import _COROUTINE.a;
import android.app.Activity;
import android.content.ContentResolver;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.ReplForm;

@UsesPermissions(permissionNames = "android.permission.READ_EXTERNAL_STORAGE, android.permission.WRITE_SETTINGS, android.permission.ACCESS_NOTIFICATION_POLICY")
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "Settings Extension. Version 7a (FREE VERSION) as of 2019-02-13 for App Inventor version nb175 and Companion version 2.51.", helpUrl = "https://puravidaapps.com/settings.php", iconName = "https://puravidaapps.com/images/taifun16.png", nonVisible = true, version = 7)
@SimpleObject(external = true)
/* loaded from: classes2.dex */
public class TaifunSettings extends AndroidNonvisibleComponent implements Component {
    public static final int VERSION = 7;

    /* renamed from: a, reason: collision with root package name */
    public final ComponentContainer f5445a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f5446b;
    public final Activity c;
    public Ringtone d;
    public final AudioManager e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final ContentResolver f5447g;

    public TaifunSettings(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        boolean z = this.form instanceof ReplForm;
        this.f5445a = componentContainer;
        Activity activity$context = componentContainer.$context();
        this.f5446b = activity$context;
        this.c = componentContainer.$context();
        this.f5447g = activity$context.getContentResolver();
        this.e = (AudioManager) activity$context.getApplicationContext().getSystemService("audio");
        Log.d("TaifunSettings", "TaifunSettings Created");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "brightness (a value between 0 and 255)")
    public int Brightness() {
        int i = Settings.System.getInt(this.f5447g, "screen_brightness", 0);
        Log.d("TaifunSettings", "Brightness (get): " + i);
        return i;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "whether User Interface shoud be showed while setting the volume.")
    public boolean ShowUI() {
        return this.f;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowUI(boolean z) {
        this.f = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "media volume in percent.")
    public int VolumeMusic() {
        return a(3);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "ringtone volume in percent.")
    public int VolumeRing() {
        return a(2);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "notification volume in percent.")
    public int VolumeAlarm() {
        return a(4);
    }

    public final int a(int i) {
        AudioManager audioManager = this.e;
        int streamMaxVolume = audioManager.getStreamMaxVolume(i);
        int streamVolume = audioManager.getStreamVolume(i);
        int i2 = (streamVolume * 100) / streamMaxVolume;
        StringBuilder sbN = a.n(streamVolume, streamMaxVolume, "getVolume,  percent= ", " * 100 / ", " = ");
        sbN.append(i2);
        Log.d("TaifunSettings", sbN.toString());
        return i2;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "82", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void VolumeMusic(int i) {
        c(i, 3);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "82", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void VolumeRing(int i) {
        if (Build.VERSION.SDK_INT < 28) {
            c(i, 2);
        }
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "82", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void VolumeAlarm(int i) {
        c(i, 4);
    }

    public final void c(int i, int i2) {
        if (i < 0) {
            i = 0;
        } else if (i > 255) {
            i = 100;
        }
        boolean z = this.f;
        AudioManager audioManager = this.e;
        int streamMaxVolume = audioManager.getStreamMaxVolume(i2);
        int i3 = (streamMaxVolume * i) / 100;
        StringBuilder sbN = a.n(streamMaxVolume, i, "setVolume, newVolume: ", " * ", " / 100 = ");
        sbN.append(i3);
        Log.d("TaifunSettings", sbN.toString());
        audioManager.setStreamVolume(i2, i3, z ? 1 : 0);
    }

    @SimpleFunction(description = "Get current ringtone. Type can be RINGTONE, NOTIFICATION or ALARM.")
    public String RingtoneGet(String str) {
        Log.d("TaifunSettings", "RingtoneGet, type: " + str);
        b(str);
        return this.d.getTitle(this.f5446b);
    }

    @SimpleFunction(description = "Play ringtone. Type can be RINGTONE, NOTIFICATION or ALARM.")
    public void RingtonePlay(String str) {
        a.B("RingtonePlay, type: ", str, "TaifunSettings");
        Ringtone ringtone = this.d;
        if (ringtone != null) {
            ringtone.stop();
        }
        b(str);
        this.d.play();
    }

    @SimpleFunction(description = "Stop currently playing ringtone.")
    public void RingtoneStop() {
        Log.d("TaifunSettings", "RingtoneStop");
        Ringtone ringtone = this.d;
        if (ringtone != null) {
            ringtone.stop();
        }
    }

    public final void b(String str) {
        Uri actualDefaultRingtoneUri;
        boolean zEquals = str.equals("NOTIFICATION");
        Activity activity = this.f5446b;
        if (zEquals) {
            Log.d("TaifunSettings", "setRingtone, NOTIFICATION");
            actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(activity, 2);
        } else if (str.equals("ALARM")) {
            Log.d("TaifunSettings", "setRingtone, ALARM");
            actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(activity, 4);
        } else {
            Log.d("TaifunSettings", "setRingtone, RINGTONE");
            actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(activity, 1);
        }
        this.d = RingtoneManager.getRingtone(activity, actualDefaultRingtoneUri);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "brightness mode (MANUAL or AUTO)")
    public String BrightnessMode() {
        int i = Settings.System.getInt(this.f5447g, "screen_brightness_mode", 0);
        Log.d("TaifunSettings", "BrightnessMode (get): " + i);
        return i == 1 ? "AUTO" : "MANUAL";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "font scale")
    public float FontScale() {
        Log.d("TaifunSettings", "FontScale");
        return Settings.System.getFloat(this.c.getContentResolver(), "font_scale", 1.0f);
    }
}
