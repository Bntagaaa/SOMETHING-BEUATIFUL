package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ImmutableGraph;
import com.google.errorprone.annotations.DoNotMock;

@DoNotMock
@Beta
/* loaded from: classes.dex */
public final class GraphBuilder<N> extends c<N> {
    public static GraphBuilder<Object> directed() {
        return new GraphBuilder<>(true);
    }

    public static GraphBuilder<Object> undirected() {
        return new GraphBuilder<>(false);
    }

    public static <N> GraphBuilder<N> from(Graph<N> graph) {
        return (GraphBuilder<N>) new GraphBuilder(graph.isDirected()).allowsSelfLoops(graph.allowsSelfLoops()).nodeOrder(graph.nodeOrder());
    }

    public <N1 extends N> ImmutableGraph.Builder<N1> immutable() {
        return new ImmutableGraph.Builder<>(this);
    }

    public GraphBuilder<N> allowsSelfLoops(boolean z) {
        this.f4499b = z;
        return this;
    }

    public GraphBuilder<N> expectedNodeCount(int i) {
        Graphs.a(i);
        this.e = Optional.of(Integer.valueOf(i));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <N1 extends N> GraphBuilder<N1> nodeOrder(ElementOrder<N1> elementOrder) {
        this.c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return this;
    }

    public <N1 extends N> MutableGraph<N1> build() {
        return new i(this);
    }
}
