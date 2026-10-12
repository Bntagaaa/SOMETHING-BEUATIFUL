package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum Sensitivity implements OptionList<Integer> {
    Weak(1),
    Moderate(2),
    Strong(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3601b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3602a;

    static {
        for (Sensitivity sensitivity : values()) {
            f3601b.put(sensitivity.toUnderlyingValue(), sensitivity);
        }
    }

    Sensitivity(int i) {
        this.f3602a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3602a);
    }

    public static Sensitivity fromUnderlyingValue(Integer num) {
        return (Sensitivity) f3601b.get(num);
    }
}
