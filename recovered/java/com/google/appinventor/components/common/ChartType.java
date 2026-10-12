package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ChartType implements OptionList<Integer> {
    Line(0),
    Scatter(1),
    Area(2),
    Bar(3),
    Pie(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3521b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3522a;

    static {
        for (ChartType chartType : values()) {
            f3521b.put(chartType.toUnderlyingValue(), chartType);
        }
    }

    ChartType(int i) {
        this.f3522a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3522a);
    }

    public static ChartType fromUnderlyingValue(Integer num) {
        return (ChartType) f3521b.get(num);
    }

    public static ChartType fromUnderlyingValue(String str) {
        return fromUnderlyingValue(Integer.valueOf(Integer.parseInt(str)));
    }
}
