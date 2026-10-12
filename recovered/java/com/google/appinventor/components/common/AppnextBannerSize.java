package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum AppnextBannerSize implements OptionList<Integer> {
    Banner(1),
    LargeBanner(2),
    MediumRectangle(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3515b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3516a;

    static {
        for (AppnextBannerSize appnextBannerSize : values()) {
            f3515b.put(appnextBannerSize.toUnderlyingValue(), appnextBannerSize);
        }
    }

    AppnextBannerSize(Integer num) {
        this.f3516a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3516a;
    }

    public static AppnextBannerSize fromUnderlyingValue(Integer num) {
        return (AppnextBannerSize) f3515b.get(num);
    }
}
