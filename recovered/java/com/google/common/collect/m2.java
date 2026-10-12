package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class m2<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    @GwtIncompatible
    public static class a<K, V> implements Serializable {
    }

    public abstract ImmutableMap i();

    public static final class b<K, V> extends m2<K, V> {
        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList g() {
            return null;
        }

        @Override // com.google.common.collect.m2
        public final ImmutableMap i() {
            return null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i, Object[] objArr) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            throw null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return i().size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = i().get(entry.getKey());
        return obj2 != null && obj2.equals(entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return i().f();
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean h() {
        return i().e();
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return i().hashCode();
    }
}
