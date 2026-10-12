package com.google.common.graph;

import com.google.common.base.Function;

/* loaded from: classes.dex */
final class g implements Function<EndpointPair<Object>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ValueGraph f4513a;

    public g(ValueGraph valueGraph) {
        this.f4513a = valueGraph;
    }

    @Override // com.google.common.base.Function
    public Object apply(EndpointPair<Object> endpointPair) {
        return this.f4513a.edgeValueOrDefault(endpointPair.nodeU(), endpointPair.nodeV(), null);
    }
}
