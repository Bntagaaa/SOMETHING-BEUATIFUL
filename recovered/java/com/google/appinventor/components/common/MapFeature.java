package com.google.appinventor.components.common;

import com.google.appinventor.components.runtime.util.MapFactory;
import java.util.HashMap;

/* loaded from: classes.dex */
public enum MapFeature implements OptionList<String> {
    Circle(MapFactory.MapFeatureType.TYPE_CIRCLE),
    LineString(MapFactory.MapFeatureType.TYPE_LINESTRING),
    Marker(MapFactory.MapFeatureType.TYPE_MARKER),
    Polygon(MapFactory.MapFeatureType.TYPE_POLYGON),
    Rectangle(MapFactory.MapFeatureType.TYPE_RECTANGLE);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3561b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3562a;

    static {
        for (MapFeature mapFeature : values()) {
            f3561b.put(mapFeature.toUnderlyingValue(), mapFeature);
        }
    }

    MapFeature(String str) {
        this.f3562a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3562a;
    }

    public static MapFeature fromUnderlyingValue(String str) {
        return (MapFeature) f3561b.get(str);
    }
}
