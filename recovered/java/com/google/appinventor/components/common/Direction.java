package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum Direction implements OptionList<Integer> {
    North(1),
    Northeast(2),
    East(3),
    Southeast(4),
    South(-1),
    Southwest(-2),
    West(-3),
    Northwest(-4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3531b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3532a;

    static {
        for (Direction direction : values()) {
            f3531b.put(direction.toUnderlyingValue(), direction);
        }
    }

    Direction(int i) {
        this.f3532a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3532a);
    }

    public static Direction fromUnderlyingValue(Integer num) {
        return (Direction) f3531b.get(num);
    }
}
