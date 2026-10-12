package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImmutableCollection f5024a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f5025b;

    public h(i iVar, ImmutableCollection immutableCollection) {
        this.f5025b = iVar;
        this.f5024a = immutableCollection;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.j(this.f5025b, this.f5024a);
    }
}
