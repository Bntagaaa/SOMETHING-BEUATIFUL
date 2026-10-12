package com.google.common.graph;

import com.google.common.base.Function;

/* loaded from: classes.dex */
final class x implements Function<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Network f4537a;

    public x(Network network) {
        this.f4537a = network;
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        return this.f4537a.incidentNodes(obj).source();
    }
}
