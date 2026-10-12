package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class q0<T> extends Ordering<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparator[] f4318a;

    public q0(Ordering ordering, Comparator comparator) {
        this.f4318a = new Comparator[]{ordering, comparator};
    }

    public q0(Iterable iterable) {
        this.f4318a = (Comparator[]) (iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator())).toArray(new Comparator[0]);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        int i = 0;
        while (true) {
            Comparator[] comparatorArr = this.f4318a;
            if (i >= comparatorArr.length) {
                return 0;
            }
            int iCompare = comparatorArr[i].compare(t, t2);
            if (iCompare != 0) {
                return iCompare;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q0) {
            return Arrays.equals(this.f4318a, ((q0) obj).f4318a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4318a);
    }

    public String toString() {
        return _COROUTINE.a.m(new StringBuilder("Ordering.compound("), Arrays.toString(this.f4318a), ")");
    }
}
