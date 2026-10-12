package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public final class Graphs {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4450a = new a("PENDING", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final a f4451b = new a("COMPLETE", 1);
    }

    private Graphs() {
    }

    public static <N> boolean hasCycle(Graph<N> graph) {
        int size = graph.edges().size();
        if (size == 0) {
            return false;
        }
        if (!graph.isDirected() && size >= graph.nodes().size()) {
            return true;
        }
        HashMap mapNewHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(graph.nodes().size());
        Iterator<N> it = graph.nodes().iterator();
        while (it.hasNext()) {
            if (b(graph, mapNewHashMapWithExpectedSize, it.next(), null)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasCycle(Network<?, ?> network) {
        if (network.isDirected() || !network.allowsParallelEdges() || network.edges().size() <= network.asGraph().edges().size()) {
            return hasCycle(network.asGraph());
        }
        return true;
    }

    public static boolean b(Graph graph, HashMap map, Object obj, Object obj2) {
        a aVar = (a) map.get(obj);
        a aVar2 = a.f4451b;
        if (aVar == aVar2) {
            return false;
        }
        a aVar3 = a.f4450a;
        if (aVar == aVar3) {
            return true;
        }
        map.put(obj, aVar3);
        for (Object obj3 : graph.successors((Graph) obj)) {
            if (graph.isDirected() || !Objects.equal(obj2, obj3)) {
                if (b(graph, map, obj3, obj)) {
                    return true;
                }
            }
        }
        map.put(obj, aVar2);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N> Graph<N> transitiveClosure(Graph<N> graph) {
        i iVarBuild = GraphBuilder.from(graph).allowsSelfLoops(true).build();
        if (graph.isDirected()) {
            for (N n : graph.nodes()) {
                Iterator it = reachableNodes(graph, n).iterator();
                while (it.hasNext()) {
                    iVarBuild.putEdge(n, it.next());
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            for (N n2 : graph.nodes()) {
                if (!hashSet.contains(n2)) {
                    Set setReachableNodes = reachableNodes(graph, n2);
                    hashSet.addAll(setReachableNodes);
                    int i = 1;
                    for (Object obj : setReachableNodes) {
                        int i2 = i + 1;
                        Iterator it2 = Iterables.limit(setReachableNodes, i).iterator();
                        while (it2.hasNext()) {
                            iVarBuild.putEdge(obj, it2.next());
                        }
                        i = i2;
                    }
                }
            }
        }
        return iVarBuild;
    }

    public static <N> Set<N> reachableNodes(Graph<N> graph, N n) {
        Preconditions.checkArgument(graph.nodes().contains(n), "Node %s is not an element of this graph.", n);
        return ImmutableSet.copyOf(Traverser.forGraph(graph).breadthFirst((Traverser) n));
    }

    public static <N> Graph<N> transpose(Graph<N> graph) {
        if (!graph.isDirected()) {
            return graph;
        }
        if (!(graph instanceof b)) {
            return new b(graph);
        }
        return ((b) graph).f4452a;
    }

    public static <N, V> ValueGraph<N, V> transpose(ValueGraph<N, V> valueGraph) {
        if (!valueGraph.isDirected()) {
            return valueGraph;
        }
        if (!(valueGraph instanceof d)) {
            return new d(valueGraph);
        }
        return ((d) valueGraph).f4455a;
    }

    public static <N, E> Network<N, E> transpose(Network<N, E> network) {
        if (!network.isDirected()) {
            return network;
        }
        if (!(network instanceof c)) {
            return new c(network);
        }
        return ((c) network).f4454a;
    }

    public static EndpointPair c(EndpointPair endpointPair) {
        return endpointPair.isOrdered() ? EndpointPair.ordered(endpointPair.target(), endpointPair.source()) : endpointPair;
    }

    public static class b<N> extends s<N> {

        /* renamed from: a, reason: collision with root package name */
        public final Graph f4452a;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.s, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((b<N>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.s, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((b<N>) obj);
        }

        public b(Graph graph) {
            this.f4452a = graph;
        }

        @Override // com.google.common.graph.s
        public Graph<N> delegate() {
            return this.f4452a;
        }

        @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return delegate().successors((Graph<N>) n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return delegate().predecessors((Graph<N>) n);
        }

        public class a extends b0<N> {
            public a(b bVar, Object obj) {
                super(bVar, obj);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<EndpointPair<N>> iterator() {
                return Iterators.transform(b.this.delegate().incidentEdges(this.f4496a).iterator(), new C0126a());
            }

            /* renamed from: com.google.common.graph.Graphs$b$a$a, reason: collision with other inner class name */
            public class C0126a implements Function<EndpointPair<N>, EndpointPair<N>> {
                public C0126a() {
                }

                @Override // com.google.common.base.Function
                public EndpointPair<N> apply(EndpointPair<N> endpointPair) {
                    Graph<N> graphDelegate = b.this.delegate();
                    N nNodeV = endpointPair.nodeV();
                    N nNodeU = endpointPair.nodeU();
                    return graphDelegate.isDirected() ? EndpointPair.ordered(nNodeV, nNodeU) : EndpointPair.unordered(nNodeV, nNodeU);
                }
            }
        }

        @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public Set<EndpointPair<N>> incidentEdges(N n) {
            return new a(this, n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int inDegree(N n) {
            return delegate().outDegree(n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int outDegree(N n) {
            return delegate().inDegree(n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(N n, N n2) {
            return delegate().hasEdgeConnecting(n2, n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.AbstractGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
            return delegate().hasEdgeConnecting(Graphs.c(endpointPair));
        }
    }

    public static class d<N, V> extends u<N, V> {

        /* renamed from: a, reason: collision with root package name */
        public final ValueGraph f4455a;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.u, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((d<N, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.u, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((d<N, V>) obj);
        }

        public d(ValueGraph valueGraph) {
            this.f4455a = valueGraph;
        }

        @Override // com.google.common.graph.u
        public ValueGraph<N, V> delegate() {
            return this.f4455a;
        }

        @Override // com.google.common.graph.u, com.google.common.graph.h, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return delegate().successors((ValueGraph<N, V>) n);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.h, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return delegate().predecessors((ValueGraph<N, V>) n);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int inDegree(N n) {
            return delegate().outDegree(n);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public int outDegree(N n) {
            return delegate().inDegree(n);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(N n, N n2) {
            return delegate().hasEdgeConnecting(n2, n);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.AbstractValueGraph, com.google.common.graph.a, com.google.common.graph.h, com.google.common.graph.Graph
        public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
            return delegate().hasEdgeConnecting(Graphs.c(endpointPair));
        }

        @Override // com.google.common.graph.u, com.google.common.graph.ValueGraph
        @NullableDecl
        public V edgeValueOrDefault(N n, N n2, @NullableDecl V v) {
            return delegate().edgeValueOrDefault(n2, n, v);
        }

        @Override // com.google.common.graph.u, com.google.common.graph.ValueGraph
        @NullableDecl
        public V edgeValueOrDefault(EndpointPair<N> endpointPair, @NullableDecl V v) {
            return delegate().edgeValueOrDefault(Graphs.c(endpointPair), v);
        }
    }

    public static class c<N, E> extends t<N, E> {

        /* renamed from: a, reason: collision with root package name */
        public final Network f4454a;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.t, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((c<N, E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.t, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((c<N, E>) obj);
        }

        public c(Network network) {
            this.f4454a = network;
        }

        @Override // com.google.common.graph.t
        public Network<N, E> delegate() {
            return this.f4454a;
        }

        @Override // com.google.common.graph.t, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return delegate().successors((Network<N, E>) n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return delegate().predecessors((Network<N, E>) n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public int inDegree(N n) {
            return delegate().outDegree(n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public int outDegree(N n) {
            return delegate().inDegree(n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.Network
        public Set<E> inEdges(N n) {
            return delegate().outEdges(n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.Network
        public Set<E> outEdges(N n) {
            return delegate().inEdges(n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.Network
        public EndpointPair<N> incidentNodes(E e) {
            EndpointPair<N> endpointPairIncidentNodes = delegate().incidentNodes(e);
            N nNodeV = endpointPairIncidentNodes.nodeV();
            N nNodeU = endpointPairIncidentNodes.nodeU();
            return this.f4454a.isDirected() ? EndpointPair.ordered(nNodeV, nNodeU) : EndpointPair.unordered(nNodeV, nNodeU);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public Set<E> edgesConnecting(N n, N n2) {
            return delegate().edgesConnecting(n2, n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public Set<E> edgesConnecting(EndpointPair<N> endpointPair) {
            return delegate().edgesConnecting(Graphs.c(endpointPair));
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public E edgeConnectingOrNull(N n, N n2) {
            return delegate().edgeConnectingOrNull(n2, n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public E edgeConnectingOrNull(EndpointPair<N> endpointPair) {
            return delegate().edgeConnectingOrNull(Graphs.c(endpointPair));
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public boolean hasEdgeConnecting(N n, N n2) {
            return delegate().hasEdgeConnecting(n2, n);
        }

        @Override // com.google.common.graph.t, com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
        public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
            return delegate().hasEdgeConnecting(Graphs.c(endpointPair));
        }
    }

    public static <N> MutableGraph<N> inducedSubgraph(Graph<N> graph, Iterable<? extends N> iterable) {
        i iVar;
        if (iterable instanceof Collection) {
            iVar = (MutableGraph<N>) GraphBuilder.from(graph).expectedNodeCount(((Collection) iterable).size()).build();
        } else {
            iVar = (MutableGraph<N>) GraphBuilder.from(graph).build();
        }
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            iVar.addNode(it.next());
        }
        for (N n : iVar.nodes()) {
            for (N n2 : graph.successors((Graph<N>) n)) {
                if (iVar.nodes().contains(n2)) {
                    iVar.putEdge(n, n2);
                }
            }
        }
        return iVar;
    }

    public static <N, V> MutableValueGraph<N, V> inducedSubgraph(ValueGraph<N, V> valueGraph, Iterable<? extends N> iterable) {
        k kVar;
        if (iterable instanceof Collection) {
            kVar = (MutableValueGraph<N, V>) ValueGraphBuilder.from(valueGraph).expectedNodeCount(((Collection) iterable).size()).build();
        } else {
            kVar = (MutableValueGraph<N, V>) ValueGraphBuilder.from(valueGraph).build();
        }
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            kVar.addNode(it.next());
        }
        for (N n : kVar.nodes()) {
            for (N n2 : valueGraph.successors((ValueGraph<N, V>) n)) {
                if (kVar.nodes().contains(n2)) {
                    kVar.putEdgeValue(n, n2, valueGraph.edgeValueOrDefault(n, n2, null));
                }
            }
        }
        return kVar;
    }

    public static <N, E> MutableNetwork<N, E> inducedSubgraph(Network<N, E> network, Iterable<? extends N> iterable) {
        j jVar;
        if (iterable instanceof Collection) {
            jVar = (MutableNetwork<N, E>) NetworkBuilder.from(network).expectedNodeCount(((Collection) iterable).size()).build();
        } else {
            jVar = (MutableNetwork<N, E>) NetworkBuilder.from(network).build();
        }
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            jVar.addNode(it.next());
        }
        for (E e : jVar.nodes()) {
            for (E e2 : network.outEdges(e)) {
                N nAdjacentNode = network.incidentNodes(e2).adjacentNode(e);
                if (jVar.nodes().contains(nAdjacentNode)) {
                    jVar.addEdge(e, nAdjacentNode, e2);
                }
            }
        }
        return jVar;
    }

    public static <N> MutableGraph<N> copyOf(Graph<N> graph) {
        MutableGraph<N> mutableGraph = (MutableGraph<N>) GraphBuilder.from(graph).expectedNodeCount(graph.nodes().size()).build();
        Iterator<N> it = graph.nodes().iterator();
        while (it.hasNext()) {
            mutableGraph.addNode(it.next());
        }
        for (EndpointPair<N> endpointPair : graph.edges()) {
            mutableGraph.putEdge(endpointPair.nodeU(), endpointPair.nodeV());
        }
        return mutableGraph;
    }

    public static <N, V> MutableValueGraph<N, V> copyOf(ValueGraph<N, V> valueGraph) {
        MutableValueGraph<N, V> mutableValueGraph = (MutableValueGraph<N, V>) ValueGraphBuilder.from(valueGraph).expectedNodeCount(valueGraph.nodes().size()).build();
        Iterator<N> it = valueGraph.nodes().iterator();
        while (it.hasNext()) {
            mutableValueGraph.addNode(it.next());
        }
        for (EndpointPair<N> endpointPair : valueGraph.edges()) {
            mutableValueGraph.putEdgeValue(endpointPair.nodeU(), endpointPair.nodeV(), valueGraph.edgeValueOrDefault(endpointPair.nodeU(), endpointPair.nodeV(), null));
        }
        return mutableValueGraph;
    }

    public static <N, E> MutableNetwork<N, E> copyOf(Network<N, E> network) {
        MutableNetwork<N, E> mutableNetwork = (MutableNetwork<N, E>) NetworkBuilder.from(network).expectedNodeCount(network.nodes().size()).expectedEdgeCount(network.edges().size()).build();
        Iterator<N> it = network.nodes().iterator();
        while (it.hasNext()) {
            mutableNetwork.addNode(it.next());
        }
        for (E e : network.edges()) {
            EndpointPair<N> endpointPairIncidentNodes = network.incidentNodes(e);
            mutableNetwork.addEdge(endpointPairIncidentNodes.nodeU(), endpointPairIncidentNodes.nodeV(), e);
        }
        return mutableNetwork;
    }

    public static void a(int i) {
        Preconditions.checkArgument(i >= 0, "Not true that %s is non-negative.", i);
    }
}
