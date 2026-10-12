package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.a0;

/* loaded from: classes.dex */
final class d implements a0.a<Service.Listener> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Service.State f5013a;

    public d(Service.State state) {
        this.f5013a = state;
    }

    @Override // com.google.common.util.concurrent.a0.a
    public void call(Service.Listener listener) {
        listener.stopping(this.f5013a);
    }

    public String toString() {
        return "stopping({from = " + this.f5013a + "})";
    }
}
