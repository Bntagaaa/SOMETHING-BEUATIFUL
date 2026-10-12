package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NxtRunState implements OptionList<Integer> {
    Disabled(0),
    Running(32),
    RampUp(16),
    RampDown(64);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3577b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3578a;

    static {
        for (NxtRunState nxtRunState : values()) {
            f3577b.put(nxtRunState.toUnderlyingValue(), nxtRunState);
        }
    }

    NxtRunState(int i) {
        this.f3578a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3578a);
    }

    public static NxtRunState fromUnderlyingValue(Integer num) {
        return (NxtRunState) f3577b.get(num);
    }
}
