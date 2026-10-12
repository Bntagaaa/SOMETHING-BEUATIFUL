package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum AdManagerAdSize implements OptionList<Integer> {
    Banner(0),
    LargeBanner(1),
    MediumRectangle(2),
    FullBanner(3),
    LeaderBoard(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3503b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3504a;

    static {
        for (AdManagerAdSize adManagerAdSize : values()) {
            f3503b.put(adManagerAdSize.toUnderlyingValue(), adManagerAdSize);
        }
    }

    AdManagerAdSize(Integer num) {
        this.f3504a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3504a;
    }

    public static AdManagerAdSize fromUnderlyingValue(Integer num) {
        return (AdManagerAdSize) f3503b.get(num);
    }
}
