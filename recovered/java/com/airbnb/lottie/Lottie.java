package com.airbnb.lottie;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class Lottie {
    private Lottie() {
    }

    public static void initialize(@NonNull LottieConfig lottieConfig) {
        L.setFetcher(lottieConfig.f2459a);
        L.setCacheProvider(lottieConfig.f2460b);
        L.setTraceEnabled(lottieConfig.c);
    }
}
