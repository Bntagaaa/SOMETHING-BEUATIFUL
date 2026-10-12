package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.util.Map;
import java.util.Set;

@Immutable(containerOf = {"N", "E"})
@Beta
/* loaded from: classes.dex */
public final class ImmutableNetwork<N, E> extends l<N, E> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean allowsParallelEdges() {
        return super.allowsParallelEdges();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ ElementOrder edgeOrder() {
        return super.edgeOrder();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set edges() {
        return super.edges();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set edgesConnecting(Object obj, Object obj2) {
        return super.edgesConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set inEdges(Object obj) {
        return super.inEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ EndpointPair incidentNodes(Object obj) {
        return super.incidentNodes(obj);
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set outEdges(Object obj) {
        return super.outEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableNetwork<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableNetwork<N, E>) obj);
    }

    public static <N, E> ImmutableNetwork<N, E> copyOf(Network<N, E> network) {
        f0 h0Var;
        if (network instanceof ImmutableNetwork) {
            return (ImmutableNetwork) network;
        }
        NetworkBuilder networkBuilderFrom = NetworkBuilder.from(network);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : network.nodes()) {
            if (network.isDirected()) {
                Map mapAsMap = Maps.asMap(network.inEdges(n), new x(network));
                Map mapAsMap2 = Maps.asMap(network.outEdges(n), new y(network));
                int size = network.edgesConnecting(n, n).size();
                h0Var = network.allowsParallelEdges() ? new o(ImmutableMap.copyOf(mapAsMap), ImmutableMap.copyOf(mapAsMap2), size) : new p(ImmutableBiMap.copyOf(mapAsMap), ImmutableBiMap.copyOf(mapAsMap2), size);
            } else {
                Map mapAsMap3 = Maps.asMap(network.incidentEdges(n), new z(network, n));
                h0Var = network.allowsParallelEdges() ? new h0(ImmutableMap.copyOf(mapAsMap3)) : new i0(ImmutableBiMap.copyOf(mapAsMap3));
            }
            builder.put(n, h0Var);
        }
        ImmutableMap immutableMapBuild = builder.build();
        ImmutableMap.Builder builder2 = ImmutableMap.builder();
        for (E e : network.edges()) {
            builder2.put(e, network.incidentNodes(e).nodeU());
        }
        return new ImmutableNetwork<>(networkBuilderFrom, immutableMapBuild, builder2.build());
    }

    @Deprecated
    public static <N, E> ImmutableNetwork<N, E> copyOf(ImmutableNetwork<N, E> immutableNetwork) {
        return (ImmutableNetwork) Preconditions.checkNotNull(immutableNetwork);
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(super.asGraph());
    }

    public static class Builder<N, E> {

        /* renamed from: a, reason: collision with root package name */
        public final MutableNetwork f4458a;

        public Builder(NetworkBuilder networkBuilder) {
            this.f4458a = networkBuilder.build();
        }

        @CanIgnoreReturnValue
        public Builder<N, E> addNode(N n) {
            this.f4458a.addNode(n);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N, E> addEdge(N n, N n2, E e) {
            this.f4458a.addEdge(n, n2, e);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N, E> addEdge(EndpointPair<N> endpointPair, E e) {
            this.f4458a.addEdge(endpointPair, e);
            return this;
        }

        public ImmutableNetwork<N, E> build() {
            return ImmutableNetwork.copyOf(this.f4458a);
        }
    }
}
