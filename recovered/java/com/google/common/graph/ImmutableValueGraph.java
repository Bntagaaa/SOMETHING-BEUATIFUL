package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable(containerOf = {"N", "V"})
@Beta
/* loaded from: classes.dex */
public final class ImmutableValueGraph<N, V> extends m<N, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.ValueGraph
    @NullableDecl
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(EndpointPair endpointPair, @NullableDecl Object obj) {
        return super.edgeValueOrDefault(endpointPair, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.ValueGraph
    @NullableDecl
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(Object obj, Object obj2, @NullableDecl Object obj3) {
        return super.edgeValueOrDefault(obj, obj2, obj3);
    }

    @Override // com.google.common.graph.m, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableValueGraph<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableValueGraph<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N, V> ImmutableValueGraph<N, V> copyOf(ValueGraph<N, V> valueGraph) {
        Object g0Var;
        if (valueGraph instanceof ImmutableValueGraph) {
            return (ImmutableValueGraph) valueGraph;
        }
        ValueGraphBuilder valueGraphBuilderFrom = ValueGraphBuilder.from(valueGraph);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : valueGraph.nodes()) {
            a0 a0Var = new a0(valueGraph, n);
            if (!valueGraph.isDirected()) {
                g0Var = new g0(ImmutableMap.copyOf(Maps.asMap(valueGraph.adjacentNodes(n), a0Var)));
            } else {
                g0Var = n.a(n, valueGraph.incidentEdges(n), a0Var);
            }
            builder.put(n, g0Var);
        }
        return new ImmutableValueGraph<>(valueGraphBuilderFrom, builder.build(), valueGraph.edges().size());
    }

    @Deprecated
    public static <N, V> ImmutableValueGraph<N, V> copyOf(ImmutableValueGraph<N, V> immutableValueGraph) {
        return (ImmutableValueGraph) Preconditions.checkNotNull(immutableValueGraph);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(this);
    }

    public static class Builder<N, V> {

        /* renamed from: a, reason: collision with root package name */
        public final MutableValueGraph f4459a;

        public Builder(ValueGraphBuilder valueGraphBuilder) {
            this.f4459a = valueGraphBuilder.build();
        }

        @CanIgnoreReturnValue
        public Builder<N, V> addNode(N n) {
            this.f4459a.addNode(n);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N, V> putEdgeValue(N n, N n2, V v) {
            this.f4459a.putEdgeValue(n, n2, v);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N, V> putEdgeValue(EndpointPair<N> endpointPair, V v) {
            this.f4459a.putEdgeValue(endpointPair, v);
            return this;
        }

        public ImmutableValueGraph<N, V> build() {
            return ImmutableValueGraph.copyOf(this.f4459a);
        }
    }
}
