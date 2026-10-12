package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum IronSourceBannerSize implements OptionList<Integer> {
    StandardBanner(0),
    LargeBanner(1),
    RectangleBanner(2),
    SmartBanner(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3553b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3554a;

    static {
        for (IronSourceBannerSize ironSourceBannerSize : values()) {
            f3553b.put(ironSourceBannerSize.toUnderlyingValue(), ironSourceBannerSize);
        }
    }

    IronSourceBannerSize(Integer num) {
        this.f3554a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3554a;
    }

    public static IronSourceBannerSize fromUnderlyingValue(Integer num) {
        return (IronSourceBannerSize) f3553b.get(num);
    }
}
