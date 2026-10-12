package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum VerticalAlignment implements OptionList<Integer> {
    Top(1),
    Center(2),
    Bottom(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3614b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3615a;

    static {
        for (VerticalAlignment verticalAlignment : values()) {
            f3614b.put(verticalAlignment.toUnderlyingValue(), verticalAlignment);
        }
    }

    VerticalAlignment(int i) {
        this.f3615a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3615a);
    }

    public static VerticalAlignment fromUnderlyingValue(Integer num) {
        return (VerticalAlignment) f3614b.get(num);
    }
}
