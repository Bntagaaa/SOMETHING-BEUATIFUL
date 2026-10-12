package com.google.common.graph;

import com.google.common.base.Predicate;

/* loaded from: classes.dex */
class d implements Predicate<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f4505a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4506b;
    public final /* synthetic */ AbstractNetwork c;

    public d(AbstractNetwork abstractNetwork, Object obj, Object obj2) {
        this.c = abstractNetwork;
        this.f4505a = obj;
        this.f4506b = obj2;
    }

    @Override // com.google.common.base.Predicate
    public boolean apply(Object obj) {
        return this.c.incidentNodes(obj).adjacentNode(this.f4505a).equals(this.f4506b);
    }
}
