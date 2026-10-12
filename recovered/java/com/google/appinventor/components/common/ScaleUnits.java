package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ScaleUnits implements OptionList<Integer> {
    Metric(1),
    Imperial(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3595b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3596a;

    static {
        for (ScaleUnits scaleUnits : values()) {
            f3595b.put(scaleUnits.toUnderlyingValue(), scaleUnits);
        }
    }

    ScaleUnits(Integer num) {
        this.f3596a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3596a;
    }

    public static ScaleUnits fromUnderlyingValue(Integer num) {
        return (ScaleUnits) f3595b.get(num);
    }
}
