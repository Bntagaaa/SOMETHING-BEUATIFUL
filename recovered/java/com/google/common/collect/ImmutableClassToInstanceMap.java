package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.primitives.Primitives;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable(containerOf = {"B"})
@GwtIncompatible
/* loaded from: classes.dex */
public final class ImmutableClassToInstanceMap<B> extends ForwardingMap<Class<? extends B>, B> implements ClassToInstanceMap<B>, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final ImmutableClassToInstanceMap f3890b = new ImmutableClassToInstanceMap(ImmutableMap.of());

    /* renamed from: a, reason: collision with root package name */
    public final ImmutableMap f3891a;

    public static <B> ImmutableClassToInstanceMap<B> of() {
        return f3890b;
    }

    public static <B, T extends B> ImmutableClassToInstanceMap<B> of(Class<T> cls, T t) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.of(cls, t));
    }

    public static <B> Builder<B> builder() {
        return new Builder<>();
    }

    public static final class Builder<B> {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableMap.Builder f3892a = ImmutableMap.builder();

        @CanIgnoreReturnValue
        public <T extends B> Builder<B> put(Class<T> cls, T t) {
            this.f3892a.put(cls, t);
            return this;
        }

        @CanIgnoreReturnValue
        public <T extends B> Builder<B> putAll(Map<? extends Class<? extends T>, ? extends T> map) {
            for (Map.Entry<? extends Class<? extends T>, ? extends T> entry : map.entrySet()) {
                Class<? extends T> key = entry.getKey();
                this.f3892a.put(key, Primitives.wrap(key).cast(entry.getValue()));
            }
            return this;
        }

        public ImmutableClassToInstanceMap<B> build() {
            ImmutableMap immutableMapBuild = this.f3892a.build();
            if (!immutableMapBuild.isEmpty()) {
                return new ImmutableClassToInstanceMap<>(immutableMapBuild);
            }
            return ImmutableClassToInstanceMap.of();
        }
    }

    public static <B, S extends B> ImmutableClassToInstanceMap<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        if (map instanceof ImmutableClassToInstanceMap) {
            return (ImmutableClassToInstanceMap) map;
        }
        return new Builder().putAll(map).build();
    }

    public ImmutableClassToInstanceMap(ImmutableMap immutableMap) {
        this.f3891a = immutableMap;
    }

    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public Map<Class<? extends B>, B> delegate() {
        return this.f3891a;
    }

    @Override // com.google.common.collect.ClassToInstanceMap
    @NullableDecl
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) this.f3891a.get(Preconditions.checkNotNull(cls));
    }

    @Override // com.google.common.collect.ClassToInstanceMap
    @CanIgnoreReturnValue
    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t) {
        throw new UnsupportedOperationException();
    }
}
