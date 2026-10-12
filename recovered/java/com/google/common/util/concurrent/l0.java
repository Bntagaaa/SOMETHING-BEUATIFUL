package com.google.common.util.concurrent;

import com.google.common.util.concurrent.ServiceManager;
import com.google.common.util.concurrent.a0;

/* loaded from: classes.dex */
class l0 implements a0.a<ServiceManager.Listener> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Service f5038a;

    public l0(Service service) {
        this.f5038a = service;
    }

    @Override // com.google.common.util.concurrent.a0.a
    public void call(ServiceManager.Listener listener) {
        listener.failure(this.f5038a);
    }

    public String toString() {
        return "failed({service=" + this.f5038a + "})";
    }
}
