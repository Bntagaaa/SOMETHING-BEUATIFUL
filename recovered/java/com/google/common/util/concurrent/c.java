package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.a0;

/* loaded from: classes.dex */
final class c implements a0.a<Service.Listener> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Service.State f5010a;

    public c(Service.State state) {
        this.f5010a = state;
    }

    @Override // com.google.common.util.concurrent.a0.a
    public void call(Service.Listener listener) {
        listener.terminated(this.f5010a);
    }

    public String toString() {
        return "terminated({from = " + this.f5010a + "})";
    }
}
