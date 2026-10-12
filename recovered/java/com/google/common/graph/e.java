package com.google.common.graph;

import com.google.common.base.Function;

/* loaded from: classes.dex */
final class e implements Function<Object, EndpointPair<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Network f4509a;

    public e(Network network) {
        this.f4509a = network;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.base.Function
    public EndpointPair<Object> apply(Object obj) {
        return this.f4509a.incidentNodes(obj);
    }
}
