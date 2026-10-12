package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ColorSensorMode implements OptionList<String> {
    Reflected("Reflected", "reflected"),
    Ambient("Ambient", "ambient"),
    Color("Color", PropertyTypeConstants.PROPERTY_TYPE_COLOR);

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3527a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3528b;

    static {
        for (ColorSensorMode colorSensorMode : values()) {
            c.put(colorSensorMode.toUnderlyingValue(), colorSensorMode);
        }
    }

    ColorSensorMode(String str, String str2) {
        this.f3527a = str2;
        this.f3528b = i;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3527a;
    }

    public Integer toInt() {
        return Integer.valueOf(this.f3528b);
    }

    public static ColorSensorMode fromUnderlyingValue(String str) {
        return (ColorSensorMode) c.get(str);
    }
}
