package com.google.common.graph;

import com.google.common.graph.w;

/* loaded from: classes.dex */
final class i<N> extends s<N> implements MutableGraph<N> {

    /* renamed from: a, reason: collision with root package name */
    public final MutableValueGraph f4517a;

    public i(GraphBuilder graphBuilder) {
        this.f4517a = new k(graphBuilder);
    }

    @Override // com.google.common.graph.s
    public h<N> delegate() {
        return this.f4517a;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean addNode(N n) {
        return this.f4517a.addNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(N n, N n2) {
        return this.f4517a.putEdgeValue(n, n2, w.a.f4536a) == null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return putEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeNode(N n) {
        return this.f4517a.removeNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(N n, N n2) {
        return this.f4517a.removeEdge(n, n2) != null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }
}
