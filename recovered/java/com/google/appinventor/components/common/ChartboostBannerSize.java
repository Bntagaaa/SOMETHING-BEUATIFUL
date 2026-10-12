package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ChartboostBannerSize implements OptionList<Integer> {
    Standard(1),
    Medium(2),
    Leaderboard(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3523b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3524a;

    static {
        for (ChartboostBannerSize chartboostBannerSize : values()) {
            f3523b.put(chartboostBannerSize.toUnderlyingValue(), chartboostBannerSize);
        }
    }

    ChartboostBannerSize(Integer num) {
        this.f3524a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3524a;
    }

    public static ChartboostBannerSize fromUnderlyingValue(Integer num) {
        return (ChartboostBannerSize) f3523b.get(num);
    }
}
