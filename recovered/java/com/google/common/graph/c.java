package com.google.common.graph;

import com.google.common.base.Optional;

/* loaded from: classes.dex */
abstract class c<N> {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4498a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4499b = false;
    public ElementOrder c = ElementOrder.insertion();
    public ElementOrder d = ElementOrder.unordered();
    public Optional e = Optional.absent();

    public c(boolean z) {
        this.f4498a = z;
    }
}
