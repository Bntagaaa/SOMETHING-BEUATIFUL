package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum TransportMethod implements OptionList<String> {
    Foot("foot-walking"),
    Car("driving-car"),
    Bicycle("cycling-regular"),
    Wheelchair("wheelchair");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3610b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3611a;

    static {
        for (TransportMethod transportMethod : values()) {
            f3610b.put(transportMethod.toUnderlyingValue(), transportMethod);
        }
    }

    TransportMethod(String str) {
        this.f3611a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3611a;
    }

    public static TransportMethod fromUnderlyingValue(String str) {
        return (TransportMethod) f3610b.get(str);
    }
}
