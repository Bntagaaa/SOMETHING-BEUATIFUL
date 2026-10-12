package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class q4<T> extends Ordering<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Ordering f4322a;

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> nullsLast() {
        return this;
    }

    public q4(Ordering ordering) {
        this.f4322a = ordering;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(@NullableDecl T t, @NullableDecl T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return 1;
        }
        if (t2 == null) {
            return -1;
        }
        return this.f4322a.compare(t, t2);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> reverse() {
        return this.f4322a.reverse().nullsFirst();
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> nullsFirst() {
        return this.f4322a.nullsFirst();
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q4) {
            return this.f4322a.equals(((q4) obj).f4322a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4322a.hashCode() ^ (-921210296);
    }

    public String toString() {
        return this.f4322a + ".nullsLast()";
    }
}
