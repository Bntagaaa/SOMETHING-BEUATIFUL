package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends b<K, V> {
    public transient Class f;

    /* renamed from: g, reason: collision with root package name */
    public transient Class f3861g;

    @Override // com.google.common.collect.b
    public final Object a(Object obj) {
        return (Enum) Preconditions.checkNotNull((Enum) obj);
    }

    @Override // com.google.common.collect.b
    public final Object b(Object obj) {
        return (Enum) Preconditions.checkNotNull((Enum) obj);
    }

    @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.b, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ BiMap inverse() {
        return super.inverse();
    }

    @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        EnumBiMap<K, V> enumBiMap = new EnumBiMap<>(new EnumMap(cls), new EnumMap(cls2));
        enumBiMap.f = cls;
        enumBiMap.f3861g = cls2;
        return enumBiMap;
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        Class declaringClass;
        Class clsD = d(map);
        if (map instanceof EnumBiMap) {
            declaringClass = ((EnumBiMap) map).f3861g;
        } else {
            Preconditions.checkArgument(!map.isEmpty());
            declaringClass = map.values().iterator().next().getDeclaringClass();
        }
        EnumBiMap<K, V> enumBiMapCreate = create(clsD, declaringClass);
        enumBiMapCreate.putAll(map);
        return enumBiMapCreate;
    }

    public static Class d(Map map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).keyType();
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).keyType();
        }
        Preconditions.checkArgument(!map.isEmpty());
        return ((Enum) map.keySet().iterator().next()).getDeclaringClass();
    }

    public Class<K> keyType() {
        return this.f;
    }

    public Class<V> valueType() {
        return this.f3861g;
    }
}
