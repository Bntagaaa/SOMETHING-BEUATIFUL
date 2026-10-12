package com.google.common.graph;

import com.google.common.base.Function;

/* loaded from: classes.dex */
final class z implements Function<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Network f4539a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4540b;

    public z(Network network, Object obj) {
        this.f4539a = network;
        this.f4540b = obj;
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        return this.f4539a.incidentNodes(obj).adjacentNode(this.f4540b);
    }
}
