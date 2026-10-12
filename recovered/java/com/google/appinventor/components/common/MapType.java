package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum MapType implements OptionList<Integer> {
    Road(1),
    Aerial(2),
    Terrain(3);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3563b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3564a;

    static {
        for (MapType mapType : values()) {
            f3563b.put(mapType.toUnderlyingValue(), mapType);
        }
    }

    MapType(Integer num) {
        this.f3564a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3564a;
    }

    public static MapType fromUnderlyingValue(Integer num) {
        return (MapType) f3563b.get(num);
    }
}
