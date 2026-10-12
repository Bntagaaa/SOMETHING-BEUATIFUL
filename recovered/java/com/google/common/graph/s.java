package com.google.common.graph;

import java.util.Set;

/* loaded from: classes.dex */
abstract class s<N> extends AbstractGraph<N> {
    public abstract h<N> delegate();

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((s<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((s<N>) obj);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public Set<N> nodes() {
        return delegate().nodes();
    }

    @Override // com.google.common.graph.a
    public long edgeCount() {
        return delegate().edges().size();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public boolean isDirected() {
        return delegate().isDirected();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public boolean allowsSelfLoops() {
        return delegate().allowsSelfLoops();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public ElementOrder<N> nodeOrder() {
        return delegate().nodeOrder();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public Set<N> adjacentNodes(N n) {
        return delegate().adjacentNodes(n);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return delegate().predecessors((h<N>) n);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return delegate().successors((h<N>) n);
    }

    @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        return delegate().incidentEdges(n);
    }

    @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public int degree(N n) {
        return delegate().degree(n);
    }

    @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public int inDegree(N n) {
        return delegate().inDegree(n);
    }

    @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public int outDegree(N n) {
        return delegate().outDegree(n);
    }

    @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        return delegate().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        return delegate().hasEdgeConnecting(endpointPair);
    }
}
