package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum FacebookNativeBannerSize implements OptionList<Integer> {
    AdSizeHeight50(0),
    AdSizeHeight100(1),
    AdSizeHeight120(2);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3539b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3540a;

    static {
        for (FacebookNativeBannerSize facebookNativeBannerSize : values()) {
            f3539b.put(facebookNativeBannerSize.toUnderlyingValue(), facebookNativeBannerSize);
        }
    }

    FacebookNativeBannerSize(Integer num) {
        this.f3540a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3540a;
    }

    public static FacebookNativeBannerSize fromUnderlyingValue(Integer num) {
        return (FacebookNativeBannerSize) f3539b.get(num);
    }
}
