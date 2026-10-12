package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ApplovinBannerSize implements OptionList<Integer> {
    StandardBanner(0),
    LeaderBanner(1),
    MRECBanner(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3513b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3514a;

    static {
        for (ApplovinBannerSize applovinBannerSize : values()) {
            f3513b.put(applovinBannerSize.toUnderlyingValue(), applovinBannerSize);
        }
    }

    ApplovinBannerSize(Integer num) {
        this.f3514a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3514a;
    }

    public static ApplovinBannerSize fromUnderlyingValue(Integer num) {
        return (ApplovinBannerSize) f3513b.get(num);
    }
}
