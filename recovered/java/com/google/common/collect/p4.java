package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class p4<T> extends Ordering<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Ordering f4317a;

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> nullsFirst() {
        return this;
    }

    public p4(Ordering ordering) {
        this.f4317a = ordering;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(@NullableDecl T t, @NullableDecl T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return this.f4317a.compare(t, t2);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> reverse() {
        return this.f4317a.reverse().nullsLast();
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> nullsLast() {
        return this.f4317a.nullsLast();
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p4) {
            return this.f4317a.equals(((p4) obj).f4317a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4317a.hashCode() ^ 957692532;
    }

    public String toString() {
        return this.f4317a + ".nullsFirst()";
    }
}
