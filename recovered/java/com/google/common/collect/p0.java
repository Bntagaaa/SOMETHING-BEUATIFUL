package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class p0<T> extends Ordering<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparator f4312a;

    public p0(Comparator comparator) {
        this.f4312a = (Comparator) Preconditions.checkNotNull(comparator);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return this.f4312a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p0) {
            return this.f4312a.equals(((p0) obj).f4312a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4312a.hashCode();
    }

    public String toString() {
        return this.f4312a.toString();
    }
}
