package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Functions;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.w;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.util.Set;

@Immutable(containerOf = {"N"})
@Beta
/* loaded from: classes.dex */
public class ImmutableGraph<N> extends s<N> {

    /* renamed from: a, reason: collision with root package name */
    public final h f4456a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int degree(Object obj) {
        return super.degree(obj);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int inDegree(Object obj) {
        return super.inDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ int outDegree(Object obj) {
        return super.outDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableGraph<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableGraph<N>) obj);
    }

    public ImmutableGraph(h hVar) {
        this.f4456a = hVar;
    }

    public static <N> ImmutableGraph<N> copyOf(Graph<N> graph) {
        Object g0Var;
        if (graph instanceof ImmutableGraph) {
            return (ImmutableGraph) graph;
        }
        GraphBuilder graphBuilderFrom = GraphBuilder.from(graph);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : graph.nodes()) {
            Function functionConstant = Functions.constant(w.a.f4536a);
            if (!graph.isDirected()) {
                g0Var = new g0(ImmutableMap.copyOf(Maps.asMap(graph.adjacentNodes(n), functionConstant)));
            } else {
                g0Var = n.a(n, graph.incidentEdges(n), functionConstant);
            }
            builder.put(n, g0Var);
        }
        return new ImmutableGraph<>(new m(graphBuilderFrom, builder.build(), graph.edges().size()));
    }

    @Deprecated
    public static <N> ImmutableGraph<N> copyOf(ImmutableGraph<N> immutableGraph) {
        return (ImmutableGraph) Preconditions.checkNotNull(immutableGraph);
    }

    @Override // com.google.common.graph.s
    public h<N> delegate() {
        return this.f4456a;
    }

    public static class Builder<N> {

        /* renamed from: a, reason: collision with root package name */
        public final MutableGraph f4457a;

        public Builder(GraphBuilder graphBuilder) {
            GraphBuilder graphBuilder2 = new GraphBuilder(graphBuilder.f4498a);
            graphBuilder2.f4499b = graphBuilder.f4499b;
            graphBuilder2.c = graphBuilder.c;
            graphBuilder2.e = graphBuilder.e;
            graphBuilder2.d = graphBuilder.d;
            ElementOrder.Type type = ElementOrder.Type.STABLE;
            ElementOrder elementOrder = new ElementOrder(type, null);
            Preconditions.checkArgument(elementOrder.type() == ElementOrder.Type.UNORDERED || elementOrder.type() == type, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", elementOrder);
            graphBuilder2.d = (ElementOrder) Preconditions.checkNotNull(elementOrder);
            this.f4457a = graphBuilder2.build();
        }

        @CanIgnoreReturnValue
        public Builder<N> addNode(N n) {
            this.f4457a.addNode(n);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N> putEdge(N n, N n2) {
            this.f4457a.putEdge(n, n2);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<N> putEdge(EndpointPair<N> endpointPair) {
            this.f4457a.putEdge(endpointPair);
            return this;
        }

        public ImmutableGraph<N> build() {
            return ImmutableGraph.copyOf(this.f4457a);
        }
    }
}
