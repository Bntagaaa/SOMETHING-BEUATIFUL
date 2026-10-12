package com.airbnb.lottie;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class b implements Callable<LottieResult<LottieComposition>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2566a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieAnimationView f2567b;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public LottieResult<LottieComposition> call() {
        LottieAnimationView lottieAnimationView = this.f2567b;
        boolean z = lottieAnimationView.q;
        String str = this.f2566a;
        return z ? LottieCompositionFactory.fromAssetSync(lottieAnimationView.getContext(), str) : LottieCompositionFactory.fromAssetSync(lottieAnimationView.getContext(), str, null);
    }

    public b(LottieAnimationView lottieAnimationView, String str) {
        this.f2567b = lottieAnimationView;
        this.f2566a = str;
    }
}
