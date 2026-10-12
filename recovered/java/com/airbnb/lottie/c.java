package com.airbnb.lottie;

/* loaded from: classes.dex */
class c implements LottieListener<LottieComposition> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2568a;

    @Override // com.airbnb.lottie.LottieListener
    public void onResult(LottieComposition lottieComposition) {
        LottieCompositionFactory.f2441a.remove(this.f2568a);
    }

    public c(String str) {
        this.f2568a = str;
    }
}
