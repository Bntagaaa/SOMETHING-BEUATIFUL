package com.google.common.graph;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.n;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
final class k<N, V> extends m<N, V> implements MutableValueGraph<N, V> {
    public final ElementOrder d;

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, "node");
        if (containsNode(n)) {
            return false;
        }
        a(n);
        return true;
    }

    public k(c cVar) {
        super(cVar, cVar.c.a(((Integer) cVar.e.or((Optional) 10)).intValue()), 0L);
        ElementOrder elementOrder = cVar.d;
        elementOrder.getClass();
        this.d = elementOrder;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public V putEdgeValue(N n, N n2, V v) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(v, "value");
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!n.equals(n2), "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n);
        }
        v<N, V> vVarA = this.nodeConnections.get(n);
        if (vVarA == null) {
            vVarA = a(n);
        }
        V vAddSuccessor = vVarA.addSuccessor(n2, v);
        v<N, V> vVarA2 = this.nodeConnections.get(n2);
        if (vVarA2 == null) {
            vVarA2 = a(n2);
        }
        vVarA2.addPredecessor(n, v);
        if (vAddSuccessor == null) {
            long j = this.edgeCount + 1;
            this.edgeCount = j;
            Preconditions.checkArgument(j > 0, "Not true that %s is positive.", j);
        }
        return vAddSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public V putEdgeValue(EndpointPair<N> endpointPair, V v) {
        validateEndpoints(endpointPair);
        return putEdgeValue(endpointPair.nodeU(), endpointPair.nodeV(), v);
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public boolean removeNode(N n) {
        Preconditions.checkNotNull(n, "node");
        v<N, V> vVar = this.nodeConnections.get(n);
        if (vVar == null) {
            return false;
        }
        if (allowsSelfLoops() && vVar.removeSuccessor(n) != null) {
            vVar.removePredecessor(n);
            this.edgeCount--;
        }
        Iterator<N> it = vVar.successors().iterator();
        while (it.hasNext()) {
            this.nodeConnections.getWithoutCaching(it.next()).removePredecessor(n);
            this.edgeCount--;
        }
        if (isDirected()) {
            Iterator<N> it2 = vVar.predecessors().iterator();
            while (it2.hasNext()) {
                Preconditions.checkState(this.nodeConnections.getWithoutCaching(it2.next()).removeSuccessor(n) != null);
                this.edgeCount--;
            }
        }
        this.nodeConnections.remove(n);
        long j = this.edgeCount;
        Preconditions.checkArgument(j >= 0, "Not true that %s is non-negative.", j);
        return true;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public V removeEdge(N n, N n2) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        v<N, V> vVar = this.nodeConnections.get(n);
        v<N, V> vVar2 = this.nodeConnections.get(n2);
        if (vVar == null || vVar2 == null) {
            return null;
        }
        V vRemoveSuccessor = vVar.removeSuccessor(n2);
        if (vRemoveSuccessor != null) {
            vVar2.removePredecessor(n);
            long j = this.edgeCount - 1;
            this.edgeCount = j;
            Preconditions.checkArgument(j >= 0, "Not true that %s is non-negative.", j);
        }
        return vRemoveSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public V removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    public final v a(Object obj) {
        v<N, V> g0Var;
        ArrayList arrayList;
        if (!isDirected()) {
            g0Var = new g0(new HashMap(2, 1.0f));
        } else {
            int[] iArr = n.h.f4530a;
            ElementOrder elementOrder = this.d;
            int i = iArr[elementOrder.type().ordinal()];
            if (i == 1) {
                arrayList = null;
            } else if (i == 2) {
                arrayList = new ArrayList();
            } else {
                throw new AssertionError(elementOrder.type());
            }
            g0Var = new n<>(new HashMap(4, 1.0f), arrayList, 0, 0);
        }
        Preconditions.checkState(this.nodeConnections.put(obj, g0Var) == null);
        return g0Var;
    }
}
