package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtMotorPort implements OptionList<String> {
    PortA("PortA", "A"),
    PortB("PortB", "B"),
    PortC("PortC", "C");

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3573a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3574b;

    static {
        for (NxtMotorPort nxtMotorPort : values()) {
            String underlyingValue = nxtMotorPort.toUnderlyingValue();
            HashMap map = c;
            map.put(underlyingValue, nxtMotorPort);
            map.put(underlyingValue.toLowerCase(), nxtMotorPort);
        }
    }

    NxtMotorPort(String str, String str2) {
        this.f3573a = str2;
        this.f3574b = i;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3573a;
    }

    public Integer toInt() {
        return Integer.valueOf(this.f3574b);
    }

    public static NxtMotorPort fromUnderlyingValue(String str) {
        return (NxtMotorPort) c.get(str);
    }
}
