package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ScreenOrientation implements OptionList<String> {
    Unspecified("Unspecified", "unspecified"),
    Landscape("Landscape", "landscape"),
    Portrait("Portrait", "portrait"),
    Sensor("Sensor", "sensor"),
    User("User", "user"),
    Behind("Behind", "behind"),
    NoSensor("NoSensor", "nosensor"),
    FullSensor("FullSensor", "fullSensor"),
    ReverseLandscape("ReverseLandscape", "reverseLandscape"),
    ReversePortrait("ReversePortrait", "reversePortrait"),
    SensorLandscape("SensorLandscape", "sensorLandscape"),
    SensorPortrait("SensorPortrait", "sensorPortrait");

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3599a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3600b;

    static {
        for (ScreenOrientation screenOrientation : values()) {
            c.put(screenOrientation.toUnderlyingValue().toLowerCase(), screenOrientation);
        }
    }

    ScreenOrientation(String str, String str2) {
        this.f3599a = str2;
        this.f3600b = i;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3599a;
    }

    public int getOrientationConstant() {
        return this.f3600b;
    }

    public static ScreenOrientation fromUnderlyingValue(String str) {
        return (ScreenOrientation) c.get(str.toLowerCase());
    }
}
