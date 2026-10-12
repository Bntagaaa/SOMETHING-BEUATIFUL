package com.google.common.graph;

import com.google.common.collect.BiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class p<N, E> extends b<N, E> {
    public p(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    @Override // com.google.common.graph.f0
    public Set<N> predecessors() {
        return Collections.unmodifiableSet(((BiMap) this.f4493a).values());
    }

    @Override // com.google.common.graph.f0
    public Set<N> successors() {
        return Collections.unmodifiableSet(((BiMap) this.f4494b).values());
    }

    @Override // com.google.common.graph.f0
    public Set<E> edgesConnecting(N n) {
        return new q(((BiMap) this.f4494b).inverse(), n);
    }
}
