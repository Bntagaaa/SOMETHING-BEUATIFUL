package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class n2<K, V> extends a3<K> {
    public final ImmutableMap c;

    @GwtIncompatible
    public static class a<K> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return true;
    }

    public n2(ImmutableMap immutableMap) {
        this.c = immutableMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.c.size();
    }

    @Override // com.google.common.collect.a3, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<K> iterator() {
        return this.c.g();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return this.c.containsKey(obj);
    }

    @Override // com.google.common.collect.a3
    public final Object get(int i) {
        return this.c.entrySet().asList().get(i).getKey();
    }
}
