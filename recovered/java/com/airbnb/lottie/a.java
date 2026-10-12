package com.airbnb.lottie;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class a implements Callable<LottieResult<LottieComposition>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2509a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieAnimationView f2510b;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public LottieResult<LottieComposition> call() {
        LottieAnimationView lottieAnimationView = this.f2510b;
        boolean z = lottieAnimationView.q;
        int i = this.f2509a;
        return z ? LottieCompositionFactory.fromRawResSync(lottieAnimationView.getContext(), i) : LottieCompositionFactory.fromRawResSync(lottieAnimationView.getContext(), i, null);
    }

    public a(LottieAnimationView lottieAnimationView, int i) {
        this.f2510b = lottieAnimationView;
        this.f2509a = i;
    }
}
