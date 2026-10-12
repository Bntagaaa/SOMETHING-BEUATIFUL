package com.google.appinventor.components.common;

import com.google.appinventor.components.runtime.Component;
import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtSensorPort implements OptionList<String> {
    Port1("Port1", "1"),
    Port2("Port2", "2"),
    Port3("Port3", "3"),
    Port4("Port4", Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN);

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3581a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3582b;

    static {
        for (NxtSensorPort nxtSensorPort : values()) {
            c.put(nxtSensorPort.toUnderlyingValue(), nxtSensorPort);
        }
    }

    NxtSensorPort(String str, String str2) {
        this.f3581a = str2;
        this.f3582b = i;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3581a;
    }

    public Integer toInt() {
        return Integer.valueOf(this.f3582b);
    }

    public static NxtSensorPort fromUnderlyingValue(String str) {
        return (NxtSensorPort) c.get(str);
    }
}
