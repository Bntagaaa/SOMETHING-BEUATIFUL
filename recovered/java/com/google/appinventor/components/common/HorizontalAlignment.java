package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum HorizontalAlignment implements OptionList<Integer> {
    Left(1),
    Center(3),
    Right(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3549b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3550a;

    static {
        for (HorizontalAlignment horizontalAlignment : values()) {
            f3549b.put(horizontalAlignment.toUnderlyingValue(), horizontalAlignment);
        }
    }

    HorizontalAlignment(int i) {
        this.f3550a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3550a);
    }

    public static HorizontalAlignment fromUnderlyingValue(Integer num) {
        return (HorizontalAlignment) f3549b.get(num);
    }
}
