package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum FacebookBannerSize implements OptionList<Integer> {
    StandardBanner(0),
    MediumBanner(1),
    LargeBanner(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3537b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3538a;

    static {
        for (FacebookBannerSize facebookBannerSize : values()) {
            f3537b.put(facebookBannerSize.toUnderlyingValue(), facebookBannerSize);
        }
    }

    FacebookBannerSize(Integer num) {
        this.f3538a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3538a;
    }

    public static FacebookBannerSize fromUnderlyingValue(Integer num) {
        return (FacebookBannerSize) f3537b.get(num);
    }
}
