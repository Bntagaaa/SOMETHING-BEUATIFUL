package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class o2<K, V> extends ImmutableCollection<V> {

    /* renamed from: b, reason: collision with root package name */
    public final ImmutableMap f4307b;

    @GwtIncompatible
    public static class c<V> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return true;
    }

    public o2(ImmutableMap immutableMap) {
        this.f4307b = immutableMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f4307b.size();
    }

    public class a extends UnmodifiableIterator<V> {

        /* renamed from: a, reason: collision with root package name */
        public final UnmodifiableIterator f4308a;

        public a(o2 o2Var) {
            this.f4308a = o2Var.f4307b.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4308a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return (V) ((Map.Entry) this.f4308a.next()).getValue();
        }
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<V> iterator() {
        return new a(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return obj != null && Iterators.contains(iterator(), obj);
    }

    public class b extends ImmutableList<V> {
        public final /* synthetic */ ImmutableList c;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public b(ImmutableList immutableList) {
            this.c = immutableList;
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) ((Map.Entry) this.c.get(i)).getValue();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c.size();
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<V> asList() {
        return new b(this.f4307b.entrySet().asList());
    }
}
