package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import com.airbnb.lottie.LottieComposition;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class LottieCompositionCache {

    /* renamed from: b, reason: collision with root package name */
    public static final LottieCompositionCache f2585b = new LottieCompositionCache();

    /* renamed from: a, reason: collision with root package name */
    public final LruCache f2586a = new LruCache(20);

    public static LottieCompositionCache getInstance() {
        return f2585b;
    }

    @VisibleForTesting
    public LottieCompositionCache() {
    }

    @Nullable
    public LottieComposition get(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return (LottieComposition) this.f2586a.get(str);
    }

    public void put(@Nullable String str, LottieComposition lottieComposition) {
        if (str == null) {
            return;
        }
        this.f2586a.put(str, lottieComposition);
    }

    public void clear() {
        this.f2586a.evictAll();
    }

    public void resize(int i) {
        this.f2586a.resize(i);
    }
}
