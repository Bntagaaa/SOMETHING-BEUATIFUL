package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum AdcolonyBannerSize implements OptionList<Integer> {
    Banner(1),
    MediumRectangle(2),
    Leaderboard(3),
    Skyscraper(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3505b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3506a;

    static {
        for (AdcolonyBannerSize adcolonyBannerSize : values()) {
            f3505b.put(adcolonyBannerSize.toUnderlyingValue(), adcolonyBannerSize);
        }
    }

    AdcolonyBannerSize(Integer num) {
        this.f3506a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3506a;
    }

    public static AdcolonyBannerSize fromUnderlyingValue(Integer num) {
        return (AdcolonyBannerSize) f3505b.get(num);
    }
}
