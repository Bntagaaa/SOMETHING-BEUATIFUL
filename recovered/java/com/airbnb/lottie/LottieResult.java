package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class LottieResult<V> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2499a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f2500b;

    public LottieResult(V v) {
        this.f2499a = v;
        this.f2500b = null;
    }

    public LottieResult(Throwable th) {
        this.f2500b = th;
        this.f2499a = null;
    }

    @Nullable
    public V getValue() {
        return (V) this.f2499a;
    }

    @Nullable
    public Throwable getException() {
        return this.f2500b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LottieResult)) {
            return false;
        }
        LottieResult lottieResult = (LottieResult) obj;
        if (getValue() != null && getValue().equals(lottieResult.getValue())) {
            return true;
        }
        if (getException() == null || lottieResult.getException() == null) {
            return false;
        }
        return getException().toString().equals(getException().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getValue(), getException()});
    }
}
