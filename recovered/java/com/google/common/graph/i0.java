package com.google.common.graph;

import com.google.common.collect.BiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class i0<N, E> extends f<N, E> {
    public i0(Map<E, N> map) {
        super(map);
    }

    @Override // com.google.common.graph.f0
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(((BiMap) this.f4512a).values());
    }

    @Override // com.google.common.graph.f0
    public Set<E> edgesConnecting(N n) {
        return new q(((BiMap) this.f4512a).inverse(), n);
    }
}
