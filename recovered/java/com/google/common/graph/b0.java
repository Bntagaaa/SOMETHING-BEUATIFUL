package com.google.common.graph;

import java.util.AbstractSet;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
abstract class b0<N> extends AbstractSet<EndpointPair<N>> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4496a;

    /* renamed from: b, reason: collision with root package name */
    public final a f4497b;

    public b0(a aVar, Object obj) {
        this.f4497b = aVar;
        this.f4496a = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        a aVar = this.f4497b;
        boolean zIsDirected = aVar.isDirected();
        Object obj = this.f4496a;
        if (zIsDirected) {
            return (aVar.inDegree(obj) + aVar.outDegree(obj)) - (aVar.successors((a) obj).contains(obj) ? 1 : 0);
        }
        return aVar.adjacentNodes(obj).size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        if (!(obj instanceof EndpointPair)) {
            return false;
        }
        EndpointPair endpointPair = (EndpointPair) obj;
        a aVar = this.f4497b;
        boolean zIsDirected = aVar.isDirected();
        Object obj2 = this.f4496a;
        if (zIsDirected) {
            if (!endpointPair.isOrdered()) {
                return false;
            }
            Object objSource = endpointPair.source();
            Object objTarget = endpointPair.target();
            if (obj2.equals(objSource) && aVar.successors((a) obj2).contains(objTarget)) {
                return true;
            }
            return obj2.equals(objTarget) && aVar.predecessors((a) obj2).contains(objSource);
        }
        if (endpointPair.isOrdered()) {
            return false;
        }
        Set setAdjacentNodes = aVar.adjacentNodes(obj2);
        Object objNodeU = endpointPair.nodeU();
        Object objNodeV = endpointPair.nodeV();
        if (obj2.equals(objNodeV) && setAdjacentNodes.contains(objNodeU)) {
            return true;
        }
        return obj2.equals(objNodeU) && setAdjacentNodes.contains(objNodeV);
    }
}
