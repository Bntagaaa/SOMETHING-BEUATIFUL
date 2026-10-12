package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum PollfishIconPosition implements OptionList<String> {
    BottomLeft("BottomLeft"),
    BottomRight("BottomRight"),
    TopLeft("TopLeft"),
    TopRight("TopRight"),
    MiddleLeft("MiddleLeft"),
    MiddleRight("MiddleRight");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3591b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3592a;

    static {
        for (PollfishIconPosition pollfishIconPosition : values()) {
            f3591b.put(pollfishIconPosition.toUnderlyingValue(), pollfishIconPosition);
        }
    }

    PollfishIconPosition(String str) {
        this.f3592a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3592a;
    }

    public static PollfishIconPosition fromUnderlyingValue(String str) {
        return (PollfishIconPosition) f3591b.get(str);
    }
}
