package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ChipType implements OptionList<String> {
    Choice("choice"),
    Action("action"),
    Entry("entry"),
    Filter("filter");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3525b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3526a;

    static {
        for (ChipType chipType : values()) {
            f3525b.put(chipType.toUnderlyingValue(), chipType);
        }
    }

    ChipType(String str) {
        this.f3526a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3526a;
    }

    public static ChipType fromUnderlyingValue(String str) {
        return (ChipType) f3525b.get(str);
    }
}
