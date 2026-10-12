package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.a0;

/* loaded from: classes.dex */
class e implements a0.a<Service.Listener> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Service.State f5014a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Throwable f5015b;

    public e(Service.State state, Throwable th) {
        this.f5014a = state;
        this.f5015b = th;
    }

    @Override // com.google.common.util.concurrent.a0.a
    public void call(Service.Listener listener) {
        listener.failed(this.f5014a, this.f5015b);
    }

    public String toString() {
        return "failed({from = " + this.f5014a + ", cause = " + this.f5015b + "})";
    }
}
