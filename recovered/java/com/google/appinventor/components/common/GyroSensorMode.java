package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum GyroSensorMode implements OptionList<String> {
    Angle("Angle", "angle"),
    Rate("Rate", "rate");

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3547a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3548b;

    static {
        for (GyroSensorMode gyroSensorMode : values()) {
            c.put(gyroSensorMode.toUnderlyingValue(), gyroSensorMode);
        }
    }

    GyroSensorMode(String str, String str2) {
        this.f3547a = str2;
        this.f3548b = i;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3547a;
    }

    public Integer toInt() {
        return Integer.valueOf(this.f3548b);
    }

    public static GyroSensorMode fromUnderlyingValue(String str) {
        return (GyroSensorMode) c.get(str);
    }
}
