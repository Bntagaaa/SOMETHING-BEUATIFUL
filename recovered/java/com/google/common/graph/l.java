package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class l<N, E> extends AbstractNetwork<N, E> {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4518a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4519b;
    public final boolean c;
    public final ElementOrder d;
    public final ElementOrder e;
    protected final c0<E, N> edgeToReferenceNode;
    protected final c0<N, f0<N, E>> nodeConnections;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((l<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((l<N, E>) obj);
    }

    public l(NetworkBuilder networkBuilder, Map map, Map map2) {
        c0<N, f0<N, E>> c0Var;
        this.f4518a = networkBuilder.f4498a;
        this.f4519b = networkBuilder.f;
        this.c = networkBuilder.f4499b;
        ElementOrder elementOrder = networkBuilder.c;
        elementOrder.getClass();
        this.d = elementOrder;
        ElementOrder elementOrder2 = networkBuilder.f4460g;
        elementOrder2.getClass();
        this.e = elementOrder2;
        if (map instanceof TreeMap) {
            c0Var = new d0<>(map);
        } else {
            c0Var = new c0<>(map);
        }
        this.nodeConnections = c0Var;
        this.edgeToReferenceNode = new c0<>(map2);
    }

    @Override // com.google.common.graph.Network
    public Set<N> nodes() {
        return this.nodeConnections.unmodifiableKeySet();
    }

    @Override // com.google.common.graph.Network
    public Set<E> edges() {
        return this.edgeToReferenceNode.unmodifiableKeySet();
    }

    @Override // com.google.common.graph.Network
    public boolean isDirected() {
        return this.f4518a;
    }

    @Override // com.google.common.graph.Network
    public boolean allowsParallelEdges() {
        return this.f4519b;
    }

    @Override // com.google.common.graph.Network
    public boolean allowsSelfLoops() {
        return this.c;
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<N> nodeOrder() {
        return this.d;
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<E> edgeOrder() {
        return this.e;
    }

    @Override // com.google.common.graph.Network
    public Set<E> incidentEdges(N n) {
        return checkedConnections(n).incidentEdges();
    }

    @Override // com.google.common.graph.Network
    public EndpointPair<N> incidentNodes(E e) {
        N nCheckedReferenceNode = checkedReferenceNode(e);
        N nAdjacentNode = this.nodeConnections.get(nCheckedReferenceNode).adjacentNode(e);
        return isDirected() ? EndpointPair.ordered(nCheckedReferenceNode, nAdjacentNode) : EndpointPair.unordered(nCheckedReferenceNode, nAdjacentNode);
    }

    @Override // com.google.common.graph.Network
    public Set<N> adjacentNodes(N n) {
        return checkedConnections(n).adjacentNodes();
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        f0<N, E> f0VarCheckedConnections = checkedConnections(n);
        if (!this.c && n == n2) {
            return ImmutableSet.of();
        }
        Preconditions.checkArgument(containsNode(n2), "Node %s is not an element of this graph.", n2);
        return f0VarCheckedConnections.edgesConnecting(n2);
    }

    @Override // com.google.common.graph.Network
    public Set<E> inEdges(N n) {
        return checkedConnections(n).inEdges();
    }

    @Override // com.google.common.graph.Network
    public Set<E> outEdges(N n) {
        return checkedConnections(n).outEdges();
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return checkedConnections(n).predecessors();
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return checkedConnections(n).successors();
    }

    public final f0<N, E> checkedConnections(N n) {
        f0<N, E> f0Var = this.nodeConnections.get(n);
        if (f0Var != null) {
            return f0Var;
        }
        Preconditions.checkNotNull(n);
        throw new IllegalArgumentException(String.format("Node %s is not an element of this graph.", n));
    }

    public final N checkedReferenceNode(E e) {
        N n = this.edgeToReferenceNode.get(e);
        if (n != null) {
            return n;
        }
        Preconditions.checkNotNull(e);
        throw new IllegalArgumentException(String.format("Edge %s is not an element of this graph.", e));
    }

    public final boolean containsNode(@NullableDecl N n) {
        return this.nodeConnections.containsKey(n);
    }

    public final boolean containsEdge(@NullableDecl E e) {
        return this.edgeToReferenceNode.containsKey(e);
    }
}
