package com.google.appinventor.components.runtime;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A component to Get Info about the Device Wifi Network.", iconName = "images/niotronWifiInfo.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronWifiInfo extends AndroidNonvisibleComponent {
    private final Context context;

    public NiotronWifiInfo(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Get SSID")
    public String GetSSID() {
        return ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getSSID();
    }

    @SimpleFunction(description = "Get BSSID")
    public String GetBSSID() {
        return ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getBSSID();
    }

    @SimpleFunction(description = "Get MAC address")
    public String GetMacAddress() {
        return ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    @SimpleFunction(description = "Get IP address")
    public String GetIPAddress() {
        return intToIp(((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getIpAddress());
    }

    public static String intToIp(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    @SimpleFunction(description = "Get LinkSpeed")
    public int GetLinkSpeed() {
        return ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getLinkSpeed();
    }

    @SimpleFunction(description = "Get Frequency")
    public int GetFrequency() {
        return ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getFrequency();
    }

    @SimpleFunction(description = "Check if Wifi is enabled.")
    public boolean isWifiEnabled() {
        return ((WifiManager) this.context.getSystemService("wifi")).isWifiEnabled();
    }

    @SimpleFunction(description = "Check if 5Ghz Band Wifi is supported")
    public boolean is5GHzBandSupported() {
        return ((WifiManager) this.context.getSystemService("wifi")).is5GHzBandSupported();
    }

    @SimpleFunction(description = "Check if Enhanced Power Reporting (EPR) is supported")
    public boolean isEPRSupported() {
        return ((WifiManager) this.context.getSystemService("wifi")).isEnhancedPowerReportingSupported();
    }

    @SimpleFunction(description = "Is P2P Supported")
    public boolean isP2PSupported() {
        return ((WifiManager) this.context.getSystemService("wifi")).isP2pSupported();
    }

    @SimpleFunction(description = "Check if Preferred Network Offload (PNO) Supported")
    public boolean isPNOSupported() {
        return ((WifiManager) this.context.getSystemService("wifi")).isPreferredNetworkOffloadSupported();
    }

    @SimpleFunction(description = "Check if Scanning is always available.")
    public boolean isScanAlwaysAvailable() {
        return ((WifiManager) this.context.getSystemService("wifi")).isScanAlwaysAvailable();
    }

    @SimpleFunction(description = "Check if TDLs Supported.")
    public boolean isTDLsSupported() {
        return ((WifiManager) this.context.getSystemService("wifi")).isTdlsSupported();
    }
}
