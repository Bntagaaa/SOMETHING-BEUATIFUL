package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtMailbox implements OptionList<Integer> {
    Box1(1, 0),
    Box2(2, 1),
    Box3(3, 2),
    Box4(4, 3),
    Box5(5, 4),
    Box6(6, 5),
    Box7(7, 6),
    Box8(8, 7),
    Box9(9, 8),
    Box10(10, 9);

    public static final HashMap c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3569a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3570b;

    static {
        for (NxtMailbox nxtMailbox : values()) {
            c.put(nxtMailbox.toUnderlyingValue(), nxtMailbox);
        }
    }

    NxtMailbox(Integer num, int i) {
        this.f3569a = num;
        this.f3570b = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3569a;
    }

    public Integer toInt() {
        return Integer.valueOf(this.f3570b);
    }

    public static NxtMailbox fromUnderlyingValue(Integer num) {
        return (NxtMailbox) c.get(num);
    }
}
