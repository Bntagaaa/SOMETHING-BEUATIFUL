package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.HashMap;

/* loaded from: classes.dex */
final class j<N, E> extends l<N, E> implements MutableNetwork<N, E> {
    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, "node");
        if (containsNode(n)) {
            return false;
        }
        a(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addEdge(N n, N n2, E e) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(e, "edge");
        if (containsEdge(e)) {
            EndpointPair<N> endpointPairIncidentNodes = incidentNodes(e);
            EndpointPair endpointPairOrdered = isDirected() ? EndpointPair.ordered(n, n2) : EndpointPair.unordered(n, n2);
            Preconditions.checkArgument(endpointPairIncidentNodes.equals(endpointPairOrdered), "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s.", e, endpointPairIncidentNodes, endpointPairOrdered);
            return false;
        }
        f0<N, E> f0VarA = this.nodeConnections.get(n);
        if (!allowsParallelEdges()) {
            Preconditions.checkArgument(f0VarA == null || !f0VarA.successors().contains(n2), "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder.", n, n2);
        }
        boolean zEquals = n.equals(n2);
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!zEquals, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n);
        }
        if (f0VarA == null) {
            f0VarA = a(n);
        }
        f0VarA.addOutEdge(e, n2);
        f0<N, E> f0VarA2 = this.nodeConnections.get(n2);
        if (f0VarA2 == null) {
            f0VarA2 = a(n2);
        }
        f0VarA2.addInEdge(e, n, zEquals);
        this.edgeToReferenceNode.put(e, n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addEdge(EndpointPair<N> endpointPair, E e) {
        validateEndpoints(endpointPair);
        return addEdge(endpointPair.nodeU(), endpointPair.nodeV(), e);
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean removeNode(N n) {
        Preconditions.checkNotNull(n, "node");
        f0<N, E> f0Var = this.nodeConnections.get(n);
        if (f0Var == null) {
            return false;
        }
        UnmodifiableIterator<E> it = ImmutableList.copyOf((Collection) f0Var.incidentEdges()).iterator();
        while (it.hasNext()) {
            removeEdge(it.next());
        }
        this.nodeConnections.remove(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean removeEdge(E e) {
        Preconditions.checkNotNull(e, "edge");
        N n = this.edgeToReferenceNode.get(e);
        boolean z = false;
        if (n == null) {
            return false;
        }
        f0<N, E> f0Var = this.nodeConnections.get(n);
        N nAdjacentNode = f0Var.adjacentNode(e);
        f0<N, E> f0Var2 = this.nodeConnections.get(nAdjacentNode);
        f0Var.removeOutEdge(e);
        if (allowsSelfLoops() && n.equals(nAdjacentNode)) {
            z = true;
        }
        f0Var2.removeInEdge(e, z);
        this.edgeToReferenceNode.remove(e);
        return true;
    }

    public final f0 a(Object obj) {
        f0<N, E> i0Var;
        if (isDirected()) {
            i0Var = allowsParallelEdges() ? new o<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0) : new p<>(HashBiMap.create(2), HashBiMap.create(2), 0);
        } else if (!allowsParallelEdges()) {
            i0Var = new i0<>(HashBiMap.create(2));
        } else {
            i0Var = new h0<>(new HashMap(2, 1.0f));
        }
        Preconditions.checkState(this.nodeConnections.put(obj, i0Var) == null);
        return i0Var;
    }
}
