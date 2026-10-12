package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import java.util.TimeZone;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A Component to Get Various Info Regarding the device", iconName = "images/niotronDeviceInfo.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronDeviceInfo extends AndroidNonvisibleComponent {
    private final Context context;

    public NiotronDeviceInfo(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Get Country Code Of Device.")
    public String GetCountryCode() {
        return this.context.getResources().getConfiguration().locale.getCountry();
    }

    @SimpleFunction(description = "Get Language Code Of Device.")
    public String GetLanguageCode() {
        return this.context.getResources().getConfiguration().locale.getLanguage();
    }

    @SimpleFunction(description = "Get Default System Language")
    public String GetSystemLanguageCode() {
        return this.context.getResources().getConfiguration().locale.getLanguage();
    }

    @SimpleFunction(description = "Get Time Zone Of Device.")
    public String DeviceTimeZone() {
        return TimeZone.getDefault().getID();
    }

    @SimpleFunction(description = "Get device ID ")
    public String GetDeviceID() {
        return Settings.Secure.getString(this.context.getContentResolver(), "android_id");
    }

    @SimpleFunction(description = "Get device IMEI")
    public String GetIMEI() {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        if (Build.VERSION.SDK_INT >= 26) {
            return telephonyManager.getImei();
        }
        return telephonyManager.getDeviceId();
    }

    @SimpleFunction(description = "Get device Carrier Name")
    public String GetCarrierName() {
        return ((TelephonyManager) this.context.getSystemService("phone")).getSimOperatorName();
    }

    @SimpleFunction(description = "Software version.")
    public String GetSoftwareVersion() {
        return ((TelephonyManager) this.context.getSystemService("phone")).getDeviceSoftwareVersion();
    }

    @SimpleFunction(description = "Returns the ISO country code equivalent for the SIM provider's country code.")
    public String GetCountryISO() {
        return ((TelephonyManager) this.context.getSystemService("phone")).getSimCountryIso();
    }

    @SimpleFunction(description = "SPN : Service Provider Name.")
    public String GetSPN() {
        return ((TelephonyManager) this.context.getSystemService("phone")).getSimOperatorName();
    }

    @SimpleFunction(description = "Returns the serial number of the SIM")
    public String GetSimSerialNumber() {
        return ((TelephonyManager) this.context.getSystemService("phone")).getSimSerialNumber();
    }

    @SimpleFunction(description = "Get Android Version.")
    public String AndroidVersion() {
        return _COROUTINE.a.i("Android ", Build.VERSION.RELEASE);
    }

    @SimpleFunction(description = "Get Device SDK Version.")
    public int SDKVersion() {
        return Build.VERSION.SDK_INT;
    }

    @SimpleFunction(description = "Get Board Info.")
    public String Board() {
        return Build.BOARD;
    }

    @SimpleFunction(description = "Get System Bootloader Version.")
    public String BootloaderVersion() {
        return Build.BOOTLOADER;
    }

    @SimpleFunction(description = "Get Brand Name Of Device.")
    public String Brand() {
        return Build.BRAND;
    }

    @SimpleFunction(description = "Get Device Name.")
    public String DeviceName() {
        return Build.DEVICE;
    }

    @SimpleFunction(description = "Get Device Software Build Number.")
    public String BuildNumber() {
        return Build.DISPLAY;
    }

    @SimpleFunction(description = "Get Device Hardware Name.")
    public String HardwareName() {
        return Build.HARDWARE;
    }

    @SimpleFunction(description = "Get Device Build ID.")
    public String BuildId() {
        return Build.ID;
    }

    @SimpleFunction(description = "Get Device manufacturer.")
    public String Manufacturer() {
        return Build.MANUFACTURER;
    }

    @SimpleFunction(description = "Get Device Model Name.")
    public String ModelName() {
        return Build.MODEL;
    }

    @SimpleFunction(description = "Get Device Product Name.")
    public String ProductName() {
        return Build.PRODUCT;
    }

    @SimpleFunction(description = "Get Device Build Type.")
    public String BuildType() {
        return Build.TYPE;
    }
}
