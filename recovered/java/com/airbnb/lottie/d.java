package com.airbnb.lottie;

/* loaded from: classes.dex */
class d implements LottieListener<Throwable> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2569a;

    @Override // com.airbnb.lottie.LottieListener
    public void onResult(Throwable th) {
        LottieCompositionFactory.f2441a.remove(this.f2569a);
    }

    public d(String str) {
        this.f2569a = str;
    }
}
