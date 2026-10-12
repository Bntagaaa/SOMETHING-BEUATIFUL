package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ImmutableValueGraph;

@Beta
/* loaded from: classes.dex */
public final class ValueGraphBuilder<N, V> extends c<N> {
    public static ValueGraphBuilder<Object, Object> directed() {
        return new ValueGraphBuilder<>(true);
    }

    public static ValueGraphBuilder<Object, Object> undirected() {
        return new ValueGraphBuilder<>(false);
    }

    public static <N, V> ValueGraphBuilder<N, V> from(ValueGraph<N, V> valueGraph) {
        return (ValueGraphBuilder<N, V>) new ValueGraphBuilder(valueGraph.isDirected()).allowsSelfLoops(valueGraph.allowsSelfLoops()).nodeOrder(valueGraph.nodeOrder());
    }

    public <N1 extends N, V1 extends V> ImmutableValueGraph.Builder<N1, V1> immutable() {
        return new ImmutableValueGraph.Builder<>(this);
    }

    public ValueGraphBuilder<N, V> allowsSelfLoops(boolean z) {
        this.f4499b = z;
        return this;
    }

    public ValueGraphBuilder<N, V> expectedNodeCount(int i) {
        Graphs.a(i);
        this.e = Optional.of(Integer.valueOf(i));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <N1 extends N> ValueGraphBuilder<N1, V> nodeOrder(ElementOrder<N1> elementOrder) {
        this.c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return this;
    }

    public <N1 extends N, V1 extends V> MutableValueGraph<N1, V1> build() {
        return new k(this);
    }
}
