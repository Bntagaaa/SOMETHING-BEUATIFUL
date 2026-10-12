package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class g0<N, V> implements v<N, V> {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4514a;

    public g0(Map map) {
        this.f4514a = (Map) Preconditions.checkNotNull(map);
    }

    @Override // com.google.common.graph.v
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(this.f4514a.keySet());
    }

    @Override // com.google.common.graph.v
    public Set<N> predecessors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.v
    public Set<N> successors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.v
    public Iterator<EndpointPair<N>> incidentEdgeIterator(N n) {
        return Iterators.transform(this.f4514a.keySet().iterator(), new a(n));
    }

    public class a implements Function<N, EndpointPair<N>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f4515a;

        public a(Object obj) {
            this.f4515a = obj;
        }

        @Override // com.google.common.base.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return apply((a) obj);
        }

        @Override // com.google.common.base.Function
        public EndpointPair<N> apply(N n) {
            return EndpointPair.unordered(this.f4515a, n);
        }
    }

    @Override // com.google.common.graph.v
    public V value(N n) {
        return (V) this.f4514a.get(n);
    }

    @Override // com.google.common.graph.v
    public void removePredecessor(N n) {
        removeSuccessor(n);
    }

    @Override // com.google.common.graph.v
    public V removeSuccessor(N n) {
        return (V) this.f4514a.remove(n);
    }

    @Override // com.google.common.graph.v
    public void addPredecessor(N n, V v) {
        addSuccessor(n, v);
    }

    @Override // com.google.common.graph.v
    public V addSuccessor(N n, V v) {
        return (V) this.f4514a.put(n, v);
    }
}
