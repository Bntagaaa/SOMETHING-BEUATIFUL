package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum AdmobAdSize implements OptionList<Integer> {
    Banner(0),
    LargeBanner(1),
    MediumRectangle(2),
    FullBanner(3),
    LeaderBoard(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3507b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3508a;

    static {
        for (AdmobAdSize admobAdSize : values()) {
            f3507b.put(admobAdSize.toUnderlyingValue(), admobAdSize);
        }
    }

    AdmobAdSize(Integer num) {
        this.f3508a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3508a;
    }

    public static AdmobAdSize fromUnderlyingValue(Integer num) {
        return (AdmobAdSize) f3507b.get(num);
    }
}
