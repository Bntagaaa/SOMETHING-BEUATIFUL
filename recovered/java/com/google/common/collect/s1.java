package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
final class s1<K, V> extends r1<K, V> implements v1<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.r1, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((s1<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((s1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.t1
    public SetMultimap<K, V> unfiltered() {
        return (SetMultimap) this.f;
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(K k) {
        return (Set) super.get((s1<K, V>) k);
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((s1<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.r1, com.google.common.collect.l
    public final Collection b() {
        return new a();
    }

    public class a extends r1<K, V>.c implements Set<Map.Entry<K, V>> {
        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return Sets.a(this, obj);
        }
    }
}
