package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class MutablePair<T> {

    /* renamed from: a, reason: collision with root package name */
    public Object f2588a;

    /* renamed from: b, reason: collision with root package name */
    public Object f2589b;

    public void set(T t, T t2) {
        this.f2588a = t;
        this.f2589b = t2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = this.f2588a;
        if (obj2 != obj3 && (obj2 == null || !obj2.equals(obj3))) {
            return false;
        }
        Object obj4 = pair.second;
        Object obj5 = this.f2589b;
        if (obj4 != obj5) {
            return obj4 != null && obj4.equals(obj5);
        }
        return true;
    }

    public int hashCode() {
        Object obj = this.f2588a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f2589b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f2588a) + " " + String.valueOf(this.f2589b) + "}";
    }
}
