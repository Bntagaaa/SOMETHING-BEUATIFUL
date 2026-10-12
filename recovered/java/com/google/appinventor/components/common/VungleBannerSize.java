package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum VungleBannerSize implements OptionList<Integer> {
    Banner(0),
    BannerShort(1),
    BannerLeaderboard(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3616b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3617a;

    static {
        for (VungleBannerSize vungleBannerSize : values()) {
            f3616b.put(vungleBannerSize.toUnderlyingValue(), vungleBannerSize);
        }
    }

    VungleBannerSize(Integer num) {
        this.f3617a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3617a;
    }

    public static VungleBannerSize fromUnderlyingValue(Integer num) {
        return (VungleBannerSize) f3616b.get(num);
    }
}
