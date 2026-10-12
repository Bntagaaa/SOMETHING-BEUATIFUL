package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SensorDbUtil {
    public static String DB_NAME;
    public static final Map<String, String> sensorMap;

    static {
        HashMap map = new HashMap();
        map.put("ActivitySensor", "edu.mit.media.funf.probe.builtin.ActivityProbe");
        map.put("BatterySensor", "edu.mit.media.funf.probe.builtin.BatteryProbe");
        map.put("CallLogHistory", "edu.mit.media.funf.probe.builtin.CallLogProbe");
        map.put("CellTowerProbeSensor", "edu.mit.media.funf.probe.builtin.CellTowerProbe");
        map.put("LightSensor", "edu.mit.media.funf.probe.builtin.LightSensorProbe");
        map.put("LocationProbeSensor", "edu.mit.media.funf.probe.builtin.SimpleLocationProbe");
        map.put("PedometerSensor", "edu.mit.media.funf.probe.builtin.PedometerProbe");
        map.put("ProximitySensor", "edu.mit.media.funf.probe.builtin.ProximitySensorProbe");
        map.put("RunningApplications", "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe");
        map.put("ScreenStatus", "edu.mit.media.funf.probe.builtin.ScreenProbe");
        map.put("SmsHistory", "edu.mit.media.funf.probe.builtin.SmsProbe");
        map.put("SocialProximitySensor", "edu.mit.media.funf.probe.builtin.BluetoothProbe");
        map.put("TelephonyInfo", "edu.mit.media.funf.probe.builtin.TelephonyProbe");
        map.put("WifiSensor", "edu.mit.media.funf.probe.builtin.WifiProbe");
        sensorMap = Collections.unmodifiableMap(map);
        DB_NAME = "__SENSOR_DB__";
    }

    public static String getPipelineName(Context context) {
        return a.z(context.getPackageName(), ".__SENSOR_DB__");
    }
}
