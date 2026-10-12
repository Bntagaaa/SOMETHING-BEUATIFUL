package com.airbnb.lottie;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class e implements Callable<LottieResult<LottieComposition>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LottieComposition f2570a;

    public e(LottieComposition lottieComposition) {
        this.f2570a = lottieComposition;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public LottieResult<LottieComposition> call() {
        return new LottieResult<>(this.f2570a);
    }
}
