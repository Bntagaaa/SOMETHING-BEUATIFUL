package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtMotorMode implements OptionList<Integer> {
    On(1),
    Brake(2),
    Regulated(4),
    Coast(0);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3571b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3572a;

    static {
        for (NxtMotorMode nxtMotorMode : values()) {
            f3571b.put(nxtMotorMode.toUnderlyingValue(), nxtMotorMode);
        }
    }

    NxtMotorMode(int i) {
        this.f3572a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3572a);
    }

    public static NxtMotorMode fromUnderlyingValue(Integer num) {
        return (NxtMotorMode) f3571b.get(num);
    }
}
