package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum StartedStatus implements OptionList<Integer> {
    Incoming(1),
    Outgoing(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3605b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3606a;

    static {
        for (StartedStatus startedStatus : values()) {
            f3605b.put(startedStatus.toUnderlyingValue(), startedStatus);
        }
    }

    StartedStatus(int i) {
        this.f3606a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3606a);
    }

    public static StartedStatus fromUnderlyingValue(Integer num) {
        return (StartedStatus) f3605b.get(num);
    }
}
