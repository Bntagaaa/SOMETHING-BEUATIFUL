package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum LinearProgressBarAnimations implements OptionList<Integer> {
    Disjoint(1),
    Contiguous(0);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3559b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3560a;

    static {
        for (LinearProgressBarAnimations linearProgressBarAnimations : values()) {
            f3559b.put(linearProgressBarAnimations.toUnderlyingValue(), linearProgressBarAnimations);
        }
    }

    LinearProgressBarAnimations(Integer num) {
        this.f3560a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3560a;
    }

    public static LinearProgressBarAnimations fromUnderlyingValue(Integer num) {
        return (LinearProgressBarAnimations) f3559b.get(num);
    }
}
