package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum NativeAdSize implements OptionList<Integer> {
    Medium(0),
    Small(1);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3567b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3568a;

    static {
        for (NativeAdSize nativeAdSize : values()) {
            f3567b.put(nativeAdSize.toUnderlyingValue(), nativeAdSize);
        }
    }

    NativeAdSize(Integer num) {
        this.f3568a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3568a;
    }

    public static NativeAdSize fromUnderlyingValue(Integer num) {
        return (NativeAdSize) f3567b.get(num);
    }
}
