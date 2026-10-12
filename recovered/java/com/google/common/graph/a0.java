package com.google.common.graph;

import com.google.common.base.Function;

/* loaded from: classes.dex */
final class a0 implements Function<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ValueGraph f4491a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4492b;

    public a0(ValueGraph valueGraph, Object obj) {
        this.f4491a = valueGraph;
        this.f4492b = obj;
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        return this.f4491a.edgeValueOrDefault(this.f4492b, obj, null);
    }
}
