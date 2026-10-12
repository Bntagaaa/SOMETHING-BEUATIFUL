package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
abstract class f<N, E> implements f0<N, E> {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4512a;

    public f(Map<E, N> map) {
        this.f4512a = (Map) Preconditions.checkNotNull(map);
    }

    @Override // com.google.common.graph.f0
    public Set<N> predecessors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.f0
    public Set<N> successors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.f0
    public Set<E> incidentEdges() {
        return Collections.unmodifiableSet(this.f4512a.keySet());
    }

    @Override // com.google.common.graph.f0
    public Set<E> inEdges() {
        return incidentEdges();
    }

    @Override // com.google.common.graph.f0
    public Set<E> outEdges() {
        return incidentEdges();
    }

    @Override // com.google.common.graph.f0
    public N adjacentNode(E e) {
        return (N) Preconditions.checkNotNull(this.f4512a.get(e));
    }

    @Override // com.google.common.graph.f0
    public N removeInEdge(E e, boolean z) {
        if (z) {
            return null;
        }
        return removeOutEdge(e);
    }

    @Override // com.google.common.graph.f0
    public N removeOutEdge(E e) {
        return (N) Preconditions.checkNotNull(this.f4512a.remove(e));
    }

    @Override // com.google.common.graph.f0
    public void addInEdge(E e, N n, boolean z) {
        if (z) {
            return;
        }
        addOutEdge(e, n);
    }

    @Override // com.google.common.graph.f0
    public void addOutEdge(E e, N n) {
        Preconditions.checkState(this.f4512a.put(e, n) == null);
    }
}
