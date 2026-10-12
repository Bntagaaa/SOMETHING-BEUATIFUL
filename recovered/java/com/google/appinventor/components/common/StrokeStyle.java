package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum StrokeStyle implements OptionList<Integer> {
    Solid(1),
    Dashed(2),
    Dotted(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3607b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3608a;

    static {
        for (StrokeStyle strokeStyle : values()) {
            f3607b.put(strokeStyle.toUnderlyingValue(), strokeStyle);
        }
    }

    StrokeStyle(int i) {
        this.f3608a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3608a);
    }

    public static StrokeStyle fromUnderlyingValue(Integer num) {
        return (StrokeStyle) f3607b.get(num);
    }

    public static StrokeStyle fromUnderlyingValue(String str) {
        return (StrokeStyle) f3607b.get(Integer.valueOf(Integer.parseInt(str)));
    }
}
