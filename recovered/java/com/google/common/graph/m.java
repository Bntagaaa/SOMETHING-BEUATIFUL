package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class m<N, V> extends AbstractValueGraph<N, V> {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4520a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4521b;
    public final ElementOrder c;
    protected long edgeCount;
    protected final c0<N, v<N, V>> nodeConnections;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((m<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((m<N, V>) obj);
    }

    public m(c cVar, Map map, long j) {
        c0<N, v<N, V>> c0Var;
        this.f4520a = cVar.f4498a;
        this.f4521b = cVar.f4499b;
        ElementOrder elementOrder = cVar.c;
        elementOrder.getClass();
        this.c = elementOrder;
        if (map instanceof TreeMap) {
            c0Var = new d0<>(map);
        } else {
            c0Var = new c0<>(map);
        }
        this.nodeConnections = c0Var;
        Preconditions.checkArgument(j >= 0, "Not true that %s is non-negative.", j);
        this.edgeCount = j;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public Set<N> nodes() {
        return this.nodeConnections.unmodifiableKeySet();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public boolean isDirected() {
        return this.f4520a;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public boolean allowsSelfLoops() {
        return this.f4521b;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public ElementOrder<N> nodeOrder() {
        return this.c;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public Set<N> adjacentNodes(N n) {
        return checkedConnections(n).adjacentNodes();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return checkedConnections(n).predecessors();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return checkedConnections(n).successors();
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        return new a(this, n, checkedConnections(n));
    }

    public class a extends b0<N> {
        public final /* synthetic */ v c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(m mVar, Object obj, v vVar) {
            super(mVar, obj);
            this.c = vVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<EndpointPair<N>> iterator() {
            return this.c.incidentEdgeIterator(this.f4496a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        return hasEdgeConnecting_internal(Preconditions.checkNotNull(n), Preconditions.checkNotNull(n2));
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        return isOrderingCompatible(endpointPair) && hasEdgeConnecting_internal(endpointPair.nodeU(), endpointPair.nodeV());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NullableDecl
    public V edgeValueOrDefault(N n, N n2, @NullableDecl V v) {
        return (V) edgeValueOrDefault_internal(Preconditions.checkNotNull(n), Preconditions.checkNotNull(n2), v);
    }

    @NullableDecl
    public V edgeValueOrDefault(EndpointPair<N> endpointPair, @NullableDecl V v) {
        validateEndpoints(endpointPair);
        return edgeValueOrDefault_internal(endpointPair.nodeU(), endpointPair.nodeV(), v);
    }

    @Override // com.google.common.graph.a
    public long edgeCount() {
        return this.edgeCount;
    }

    public final v<N, V> checkedConnections(N n) {
        v<N, V> vVar = this.nodeConnections.get(n);
        if (vVar != null) {
            return vVar;
        }
        Preconditions.checkNotNull(n);
        throw new IllegalArgumentException("Node " + n + " is not an element of this graph.");
    }

    public final boolean containsNode(@NullableDecl N n) {
        return this.nodeConnections.containsKey(n);
    }

    public final boolean hasEdgeConnecting_internal(N n, N n2) {
        v<N, V> vVar = this.nodeConnections.get(n);
        return vVar != null && vVar.successors().contains(n2);
    }

    public final V edgeValueOrDefault_internal(N n, N n2, V v) {
        v<N, V> vVar = this.nodeConnections.get(n);
        V vValue = vVar == null ? null : vVar.value(n2);
        return vValue == null ? v : vValue;
    }
}
