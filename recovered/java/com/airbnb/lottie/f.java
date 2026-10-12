package com.airbnb.lottie;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LottieTask f2571a;

    public f(LottieTask lottieTask) {
        this.f2571a = lottieTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2571a.d == null) {
            return;
        }
        LottieResult lottieResult = this.f2571a.d;
        if (lottieResult.getValue() == null) {
            LottieTask.a(this.f2571a, lottieResult.getException());
            return;
        }
        LottieTask lottieTask = this.f2571a;
        Object value = lottieResult.getValue();
        synchronized (lottieTask) {
            Iterator it = new ArrayList(lottieTask.f2501a).iterator();
            while (it.hasNext()) {
                ((LottieListener) it.next()).onResult(value);
            }
        }
    }
}
