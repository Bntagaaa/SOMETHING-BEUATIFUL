package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtRegulationMode implements OptionList<Integer> {
    Disabled(0),
    Speed(1),
    Synchronization(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3575b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3576a;

    static {
        for (NxtRegulationMode nxtRegulationMode : values()) {
            f3575b.put(nxtRegulationMode.toUnderlyingValue(), nxtRegulationMode);
        }
    }

    NxtRegulationMode(int i) {
        this.f3576a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3576a);
    }

    public static NxtRegulationMode fromUnderlyingValue(Integer num) {
        return (NxtRegulationMode) f3575b.get(num);
    }
}
