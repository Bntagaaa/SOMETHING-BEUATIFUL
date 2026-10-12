package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum PointStyle implements OptionList<Integer> {
    Circle(0),
    Square(1),
    Triangle(2),
    Cross(3),
    X(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3589b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3590a;

    static {
        for (PointStyle pointStyle : values()) {
            f3589b.put(pointStyle.toUnderlyingValue(), pointStyle);
        }
    }

    PointStyle(int i) {
        this.f3590a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3590a);
    }

    public static PointStyle fromUnderlyingValue(Integer num) {
        return (PointStyle) f3589b.get(num);
    }

    public static PointStyle fromUnderlyingValue(String str) {
        return fromUnderlyingValue(Integer.valueOf(Integer.parseInt(str)));
    }
}
