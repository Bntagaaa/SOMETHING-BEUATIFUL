package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.AbstractMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class RemovalNotification<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final RemovalCause f3778a;

    public static <K, V> RemovalNotification<K, V> create(@NullableDecl K k, @NullableDecl V v, RemovalCause removalCause) {
        return new RemovalNotification<>(k, v, removalCause);
    }

    public RemovalNotification(Object obj, Object obj2, RemovalCause removalCause) {
        super(obj, obj2);
        this.f3778a = (RemovalCause) Preconditions.checkNotNull(removalCause);
    }

    public RemovalCause getCause() {
        return this.f3778a;
    }

    public boolean wasEvicted() {
        return this.f3778a.a();
    }
}
