package com.google.common.graph;

import com.google.common.base.Function;

/* loaded from: classes.dex */
final class y implements Function<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Network f4538a;

    public y(Network network) {
        this.f4538a = network;
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        return this.f4538a.incidentNodes(obj).target();
    }
}
