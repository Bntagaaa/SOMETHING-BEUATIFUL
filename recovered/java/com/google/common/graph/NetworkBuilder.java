package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ImmutableNetwork;

@Beta
/* loaded from: classes.dex */
public final class NetworkBuilder<N, E> extends c<N> {
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public ElementOrder f4460g;
    public Optional h;

    public NetworkBuilder(boolean z) {
        super(z);
        this.f = false;
        this.f4460g = ElementOrder.insertion();
        this.h = Optional.absent();
    }

    public static NetworkBuilder<Object, Object> directed() {
        return new NetworkBuilder<>(true);
    }

    public static NetworkBuilder<Object, Object> undirected() {
        return new NetworkBuilder<>(false);
    }

    public static <N, E> NetworkBuilder<N, E> from(Network<N, E> network) {
        return new NetworkBuilder(network.isDirected()).allowsParallelEdges(network.allowsParallelEdges()).allowsSelfLoops(network.allowsSelfLoops()).nodeOrder(network.nodeOrder()).edgeOrder(network.edgeOrder());
    }

    public <N1 extends N, E1 extends E> ImmutableNetwork.Builder<N1, E1> immutable() {
        return new ImmutableNetwork.Builder<>(this);
    }

    public NetworkBuilder<N, E> allowsParallelEdges(boolean z) {
        this.f = z;
        return this;
    }

    public NetworkBuilder<N, E> allowsSelfLoops(boolean z) {
        this.f4499b = z;
        return this;
    }

    public NetworkBuilder<N, E> expectedNodeCount(int i) {
        Graphs.a(i);
        this.e = Optional.of(Integer.valueOf(i));
        return this;
    }

    public NetworkBuilder<N, E> expectedEdgeCount(int i) {
        Graphs.a(i);
        this.h = Optional.of(Integer.valueOf(i));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <N1 extends N> NetworkBuilder<N1, E> nodeOrder(ElementOrder<N1> elementOrder) {
        this.c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E1 extends E> NetworkBuilder<N, E1> edgeOrder(ElementOrder<E1> elementOrder) {
        this.f4460g = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return this;
    }

    public <N1 extends N, E1 extends E> MutableNetwork<N1, E1> build() {
        return new j(this, this.c.a(((Integer) this.e.or((Optional) 10)).intValue()), this.f4460g.a(((Integer) this.h.or((Optional) 20)).intValue()));
    }
}
