package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.r;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.util.AbstractSet;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
abstract class a<N> implements h<N> {

    /* renamed from: com.google.common.graph.a$a, reason: collision with other inner class name */
    public class C0129a extends AbstractSet<EndpointPair<N>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            a aVar = a.this;
            if (aVar.isDirected()) {
                return new r.b(aVar);
            }
            r.c cVar = new r.c(aVar);
            cVar.f4535g = Sets.newHashSetWithExpectedSize(aVar.nodes().size());
            return cVar;
        }

        public C0129a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Ints.saturatedCast(a.this.edgeCount());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            a aVar = a.this;
            return aVar.isOrderingCompatible(endpointPair) && aVar.nodes().contains(endpointPair.nodeU()) && aVar.successors((a) endpointPair.nodeU()).contains(endpointPair.nodeV());
        }
    }

    public long edgeCount() {
        long jDegree = 0;
        while (nodes().iterator().hasNext()) {
            jDegree += degree(r0.next());
        }
        Preconditions.checkState((1 & jDegree) == 0);
        return jDegree >>> 1;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public Set<EndpointPair<N>> edges() {
        return new C0129a();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        Preconditions.checkNotNull(n);
        Preconditions.checkArgument(nodes().contains(n), "Node %s is not an element of this graph.", n);
        return new b(this, n);
    }

    public class b extends b0<N> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            a aVar = this.f4497b;
            boolean zIsDirected = aVar.isDirected();
            Object obj = this.f4496a;
            if (zIsDirected) {
                return Iterators.unmodifiableIterator(Iterators.concat(Iterators.transform(aVar.predecessors((a) obj).iterator(), new C0130a()), Iterators.transform(Sets.difference(aVar.successors((a) obj), ImmutableSet.of(obj)).iterator(), new C0131b())));
            }
            return Iterators.unmodifiableIterator(Iterators.transform(aVar.adjacentNodes(obj).iterator(), new c()));
        }

        /* renamed from: com.google.common.graph.a$b$a, reason: collision with other inner class name */
        public class C0130a implements Function<N, EndpointPair<N>> {
            public C0130a() {
            }

            @Override // com.google.common.base.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((C0130a) obj);
            }

            @Override // com.google.common.base.Function
            public EndpointPair<N> apply(N n) {
                return EndpointPair.ordered(n, b.this.f4496a);
            }
        }

        /* renamed from: com.google.common.graph.a$b$b, reason: collision with other inner class name */
        public class C0131b implements Function<N, EndpointPair<N>> {
            public C0131b() {
            }

            @Override // com.google.common.base.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((C0131b) obj);
            }

            @Override // com.google.common.base.Function
            public EndpointPair<N> apply(N n) {
                return EndpointPair.ordered(b.this.f4496a, n);
            }
        }

        public class c implements Function<N, EndpointPair<N>> {
            public c() {
            }

            @Override // com.google.common.base.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((c) obj);
            }

            @Override // com.google.common.base.Function
            public EndpointPair<N> apply(N n) {
                return EndpointPair.unordered(b.this.f4496a, n);
            }
        }
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public int degree(N n) {
        if (isDirected()) {
            return IntMath.saturatedAdd(predecessors((a<N>) n).size(), successors((a<N>) n).size());
        }
        Set<N> setAdjacentNodes = adjacentNodes(n);
        return IntMath.saturatedAdd(setAdjacentNodes.size(), (allowsSelfLoops() && setAdjacentNodes.contains(n)) ? 1 : 0);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public int inDegree(N n) {
        return isDirected() ? predecessors((a<N>) n).size() : degree(n);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public int outDegree(N n) {
        return isDirected() ? successors((a<N>) n).size() : degree(n);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(N n, N n2) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(n2);
        return nodes().contains(n) && successors((a<N>) n).contains(n2);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.Graph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        if (!isOrderingCompatible(endpointPair)) {
            return false;
        }
        N nNodeU = endpointPair.nodeU();
        return nodes().contains(nNodeU) && successors((a<N>) nNodeU).contains(endpointPair.nodeV());
    }

    public final void validateEndpoints(EndpointPair<?> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        Preconditions.checkArgument(isOrderingCompatible(endpointPair), "Mismatch: unordered endpoints cannot be used with directed graphs");
    }

    public final boolean isOrderingCompatible(EndpointPair<?> endpointPair) {
        return endpointPair.isOrdered() || !isDirected();
    }
}
