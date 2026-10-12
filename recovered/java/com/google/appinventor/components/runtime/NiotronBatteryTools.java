package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.app.NotificationCompat;
import androidx.core.os.EnvironmentCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A new component ", iconName = "images/niotronBatteryTools.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronBatteryTools extends AndroidNonvisibleComponent implements Component, OnResumeListener, OnStopListener, OnDestroyListener {
    private static final String LOG_TAG = "NiotronBatteryTools";
    private final Activity activity;
    private final BroadcastReceiver batteryReceiver;
    private ComponentContainer container;
    private Context context;
    private String health;
    private int level;
    private boolean listening;
    private String plugged;
    private String status;
    private float temperature;
    private int voltage;

    public NiotronBatteryTools(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.health = EnvironmentCompat.MEDIA_UNKNOWN;
        this.level = 0;
        this.plugged = EnvironmentCompat.MEDIA_UNKNOWN;
        this.status = EnvironmentCompat.MEDIA_UNKNOWN;
        this.temperature = 0.0f;
        this.voltage = 0;
        this.batteryReceiver = new BroadcastReceiver() { // from class: com.google.appinventor.components.runtime.NiotronBatteryTools.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                NiotronBatteryTools niotronBatteryTools = NiotronBatteryTools.this;
                niotronBatteryTools.status = niotronBatteryTools.new MethodUtils().getStatus(intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1));
                NiotronBatteryTools niotronBatteryTools2 = NiotronBatteryTools.this;
                niotronBatteryTools2.plugged = niotronBatteryTools2.new MethodUtils().getPlugged(intent.getIntExtra("plugged", -1));
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", -1);
                if (intExtra < 0 || intExtra2 <= 0) {
                    NiotronBatteryTools.this.level = 0;
                } else {
                    NiotronBatteryTools.this.level = (intExtra * 100) / intExtra2;
                }
                NiotronBatteryTools niotronBatteryTools3 = NiotronBatteryTools.this;
                niotronBatteryTools3.health = niotronBatteryTools3.new MethodUtils().getHealth(intent.getIntExtra("health", 0));
                NiotronBatteryTools.this.temperature = intent.getIntExtra("temperature", 0) / 10;
                NiotronBatteryTools.this.voltage = intent.getIntExtra("voltage", 0);
            }
        };
        this.form.registerForOnStop(this);
        this.form.registerForOnResume(this);
        this.form.registerForOnDestroy(this);
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        startListeningBattery();
    }

    private void startListeningBattery() {
        if (this.listening) {
            return;
        }
        this.activity.registerReceiver(this.batteryReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 2);
        this.listening = true;
    }

    private void stopListeningBattery() {
        if (this.listening) {
            this.activity.unregisterReceiver(this.batteryReceiver);
            this.listening = false;
        }
    }

    @SimpleFunction(description = "Values can be : charging, full, discharging, not charging or unknown.")
    public String Status() {
        return this.status;
    }

    @SimpleFunction(description = "Values can be : usb, ac, wireless or unknown.")
    public String Plugged() {
        return this.plugged;
    }

    @SimpleFunction(description = "Values will be between 0 and 100.")
    public int Level() {
        return this.level;
    }

    @SimpleFunction(description = "Returns the current health status. Values can be : cold, dead, good, overheat, over voltage, unknown, unspecified failure.")
    public String Health() {
        return this.health;
    }

    @SimpleFunction(description = "Returns the battery temperature in celcius.")
    public float Temperature() {
        return this.temperature;
    }

    @SimpleFunction(description = "Returns the battery voltage level in millivolts.")
    public int Voltage() {
        return this.voltage;
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        startListeningBattery();
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        stopListeningBattery();
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        stopListeningBattery();
    }

    public class MethodUtils {
        public MethodUtils() {
        }

        public String getHealth(int i) {
            switch (i) {
                case 1:
                    return EnvironmentCompat.MEDIA_UNKNOWN.toUpperCase();
                case 2:
                    return "good".toUpperCase();
                case 3:
                    return "overheat".toUpperCase();
                case 4:
                    return "dead".toUpperCase();
                case 5:
                    return "over voltage".toUpperCase();
                case 6:
                    return "unspecified failure".toUpperCase();
                case 7:
                    return "cold".toUpperCase();
                default:
                    return EnvironmentCompat.MEDIA_UNKNOWN.toUpperCase();
            }
        }

        public String getPlugged(int i) {
            if (i == 1) {
                return "ac".toUpperCase();
            }
            if (i == 2) {
                return "usb".toUpperCase();
            }
            if (i == 4) {
                return "wireless".toUpperCase();
            }
            return EnvironmentCompat.MEDIA_UNKNOWN.toUpperCase();
        }

        public String getStatus(int i) {
            if (i == 2) {
                return "charging".toUpperCase();
            }
            if (i == 3) {
                return "discharging".toUpperCase();
            }
            if (i == 4) {
                return "not charging".toUpperCase();
            }
            if (i == 5) {
                return "full".toUpperCase();
            }
            return EnvironmentCompat.MEDIA_UNKNOWN.toUpperCase();
        }
    }
}
