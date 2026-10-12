package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ReceivingState implements OptionList<Integer> {
    Off(1),
    Foreground(2),
    Always(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3593b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f3594a;

    static {
        for (ReceivingState receivingState : values()) {
            f3593b.put(receivingState.toUnderlyingValue(), receivingState);
        }
    }

    ReceivingState(int i) {
        this.f3594a = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.f3594a);
    }

    public static ReceivingState fromUnderlyingValue(Integer num) {
        return (ReceivingState) f3593b.get(num);
    }
}
