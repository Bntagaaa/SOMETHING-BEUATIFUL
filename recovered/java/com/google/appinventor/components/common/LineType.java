package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum LineType implements OptionList<Integer> {
    Linear(0),
    Curved(1),
    Stepped(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3557b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3558a;

    static {
        for (LineType lineType : values()) {
            f3557b.put(lineType.toUnderlyingValue(), lineType);
        }
    }

    LineType(int i) {
        this.f3558a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3558a);
    }

    public static LineType fromUnderlyingValue(Integer num) {
        return (LineType) f3557b.get(num);
    }

    public static LineType fromUnderlyingValue(String str) {
        return fromUnderlyingValue(Integer.valueOf(Integer.parseInt(str)));
    }
}
