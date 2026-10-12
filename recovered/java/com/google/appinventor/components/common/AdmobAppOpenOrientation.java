package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum AdmobAppOpenOrientation implements OptionList<Integer> {
    Portrait(0),
    Landscape(1);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3509b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3510a;

    static {
        for (AdmobAdSize admobAdSize : AdmobAdSize.values()) {
            f3509b.put(admobAdSize.toUnderlyingValue(), admobAdSize);
        }
    }

    AdmobAppOpenOrientation(Integer num) {
        this.f3510a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3510a;
    }

    public static AdmobAdSize fromUnderlyingValue(Integer num) {
        return (AdmobAdSize) f3509b.get(num);
    }
}
