package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum EndedStatus implements OptionList<Integer> {
    IncomingRejected(1),
    IncomingEnded(2),
    OutgoingEnded(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3533b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3534a;

    static {
        for (EndedStatus endedStatus : values()) {
            f3533b.put(endedStatus.toUnderlyingValue(), endedStatus);
        }
    }

    EndedStatus(int i) {
        this.f3534a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3534a);
    }

    public static EndedStatus fromUnderlyingValue(Integer num) {
        return (EndedStatus) f3533b.get(num);
    }
}
