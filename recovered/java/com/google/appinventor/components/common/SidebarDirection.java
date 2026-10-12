package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum SidebarDirection implements OptionList<String> {
    Left("Left"),
    Right("Right");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3603b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3604a;

    static {
        for (SidebarDirection sidebarDirection : values()) {
            f3603b.put(sidebarDirection.toUnderlyingValue(), sidebarDirection);
        }
    }

    SidebarDirection(String str) {
        this.f3604a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3604a;
    }

    public static SidebarDirection fromUnderlyingValue(String str) {
        return (SidebarDirection) f3603b.get(str);
    }
}
