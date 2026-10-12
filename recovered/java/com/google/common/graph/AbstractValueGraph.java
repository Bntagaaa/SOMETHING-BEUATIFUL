package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.collect.Maps;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public abstract class AbstractValueGraph<N, V> extends com.google.common.graph.a<N> implements ValueGraph<N, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int degree(Object obj) {
        return super.degree(obj);
    }

    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set edges() {
        return super.edges();
    }

    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int inDegree(Object obj) {
        return super.inDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int outDegree(Object obj) {
        return super.outDegree(obj);
    }

    public class a extends AbstractGraph<N> {
        public a() {
        }

        @Override // com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((a) obj);
        }

        @Override // com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((a) obj);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.Graph
        public Set<N> nodes() {
            return AbstractValueGraph.this.nodes();
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public Set<EndpointPair<N>> edges() {
            return AbstractValueGraph.this.edges();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.Graph
        public boolean isDirected() {
            return AbstractValueGraph.this.isDirected();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.Graph
        public boolean allowsSelfLoops() {
            return AbstractValueGraph.this.allowsSelfLoops();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.Graph
        public ElementOrder<N> nodeOrder() {
            return AbstractValueGraph.this.nodeOrder();
        }

        @Override // com.google.common.graph.h, com.google.common.graph.Graph
        public Set<N> adjacentNodes(N n) {
            return AbstractValueGraph.this.adjacentNodes(n);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return AbstractValueGraph.this.predecessors((AbstractValueGraph) n);
        }

        @Override // com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return AbstractValueGraph.this.successors((AbstractValueGraph) n);
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int degree(N n) {
            return AbstractValueGraph.this.degree(n);
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int inDegree(N n) {
            return AbstractValueGraph.this.inDegree(n);
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int outDegree(N n) {
            return AbstractValueGraph.this.outDegree(n);
        }
    }

    @Override // com.google.common.graph.ValueGraph
    public Graph<N> asGraph() {
        return new a();
    }

    @Override // com.google.common.graph.ValueGraph
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueGraph)) {
            return false;
        }
        ValueGraph valueGraph = (ValueGraph) obj;
        if (isDirected() == valueGraph.isDirected() && nodes().equals(valueGraph.nodes())) {
            return Maps.asMap(edges(), new g(this)).equals(Maps.asMap(valueGraph.edges(), new g(valueGraph)));
        }
        return false;
    }

    public String toString() {
        return "isDirected: " + isDirected() + ", allowsSelfLoops: " + allowsSelfLoops() + ", nodes: " + nodes() + ", edges: " + Maps.asMap(edges(), new g(this));
    }

    @Override // com.google.common.graph.ValueGraph
    public final int hashCode() {
        return Maps.asMap(edges(), new g(this)).hashCode();
    }
}
