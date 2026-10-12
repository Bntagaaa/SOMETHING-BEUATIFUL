package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum OneSignalLogLevel implements OptionList<String> {
    None("None"),
    Info("Info"),
    Verbose("Verbose"),
    Debug("Debug"),
    Warn("Warn"),
    Error("Error"),
    Fatal("Fatal");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3585b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3586a;

    static {
        for (OneSignalLogLevel oneSignalLogLevel : values()) {
            f3585b.put(oneSignalLogLevel.toUnderlyingValue(), oneSignalLogLevel);
        }
    }

    OneSignalLogLevel(String str) {
        this.f3586a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3586a;
    }

    public static OneSignalLogLevel fromUnderlyingValue(String str) {
        return (OneSignalLogLevel) f3585b.get(str);
    }
}
