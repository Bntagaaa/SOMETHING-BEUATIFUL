package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.math.IntMath;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
abstract class b<N, E> implements f0<N, E> {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4493a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f4494b;
    public int c;

    public class a extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            Iterable iterableUnion;
            b bVar = b.this;
            if (bVar.c == 0) {
                iterableUnion = Iterables.concat(bVar.f4493a.keySet(), bVar.f4494b.keySet());
            } else {
                iterableUnion = Sets.union(bVar.f4493a.keySet(), bVar.f4494b.keySet());
            }
            return Iterators.unmodifiableIterator(iterableUnion.iterator());
        }

        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            b bVar = b.this;
            return IntMath.saturatedAdd(bVar.f4493a.size(), bVar.f4494b.size() - bVar.c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            b bVar = b.this;
            return bVar.f4493a.containsKey(obj) || bVar.f4494b.containsKey(obj);
        }
    }

    public b(Map<E, N> map, Map<E, N> map2, int i) {
        this.f4493a = (Map) Preconditions.checkNotNull(map);
        this.f4494b = (Map) Preconditions.checkNotNull(map2);
        Graphs.a(i);
        this.c = i;
        Preconditions.checkState(i <= map.size() && i <= map2.size());
    }

    @Override // com.google.common.graph.f0
    public Set<N> adjacentNodes() {
        return Sets.union(predecessors(), successors());
    }

    @Override // com.google.common.graph.f0
    public Set<E> incidentEdges() {
        return new a();
    }

    @Override // com.google.common.graph.f0
    public Set<E> inEdges() {
        return Collections.unmodifiableSet(this.f4493a.keySet());
    }

    @Override // com.google.common.graph.f0
    public Set<E> outEdges() {
        return Collections.unmodifiableSet(this.f4494b.keySet());
    }

    @Override // com.google.common.graph.f0
    public N adjacentNode(E e) {
        return (N) Preconditions.checkNotNull(this.f4494b.get(e));
    }

    @Override // com.google.common.graph.f0
    public N removeInEdge(E e, boolean z) {
        if (z) {
            int i = this.c - 1;
            this.c = i;
            Graphs.a(i);
        }
        return (N) Preconditions.checkNotNull(this.f4493a.remove(e));
    }

    @Override // com.google.common.graph.f0
    public N removeOutEdge(E e) {
        return (N) Preconditions.checkNotNull(this.f4494b.remove(e));
    }

    @Override // com.google.common.graph.f0
    public void addInEdge(E e, N n, boolean z) {
        if (z) {
            int i = this.c + 1;
            this.c = i;
            Preconditions.checkArgument(i > 0, "Not true that %s is positive.", i);
        }
        Preconditions.checkState(this.f4493a.put(e, n) == null);
    }

    @Override // com.google.common.graph.f0
    public void addOutEdge(E e, N n) {
        Preconditions.checkState(this.f4494b.put(e, n) == null);
    }
}
