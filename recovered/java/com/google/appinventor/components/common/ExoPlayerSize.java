package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum ExoPlayerSize implements OptionList<Integer> {
    Fill(3),
    Fit(0),
    Zoom(4);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3535b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3536a;

    static {
        for (ExoPlayerSize exoPlayerSize : values()) {
            f3535b.put(exoPlayerSize.toUnderlyingValue(), exoPlayerSize);
        }
    }

    ExoPlayerSize(Integer num) {
        this.f3536a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3536a;
    }

    public static ExoPlayerSize fromUnderlyingValue(Integer num) {
        return (ExoPlayerSize) f3535b.get(num);
    }
}
