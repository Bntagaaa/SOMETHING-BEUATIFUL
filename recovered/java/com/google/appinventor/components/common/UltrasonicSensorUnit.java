package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum UltrasonicSensorUnit implements OptionList<String> {
    Centimeters("Centimeters", "cm"),
    Inches("Inches", "inch");

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3612a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3613b;

    static {
        for (UltrasonicSensorUnit ultrasonicSensorUnit : values()) {
            c.put(ultrasonicSensorUnit.toUnderlyingValue(), ultrasonicSensorUnit);
        }
    }

    UltrasonicSensorUnit(String str, String str2) {
        this.f3612a = str2;
        this.f3613b = i;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3612a;
    }

    public Integer toInt() {
        return Integer.valueOf(this.f3613b);
    }

    public static UltrasonicSensorUnit fromUnderlyingValue(String str) {
        return (UltrasonicSensorUnit) c.get(str);
    }
}
