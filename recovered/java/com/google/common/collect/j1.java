package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Ordering;
import java.io.Serializable;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class j1<T> extends Ordering<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final ImmutableMap f4238a;

    public j1(List list) {
        this.f4238a = Maps.e(list);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        ImmutableMap immutableMap = this.f4238a;
        Integer num = (Integer) immutableMap.get(t);
        if (num == null) {
            throw new Ordering.c(t);
        }
        int iIntValue = num.intValue();
        Integer num2 = (Integer) immutableMap.get(t2);
        if (num2 == null) {
            throw new Ordering.c(t2);
        }
        return iIntValue - num2.intValue();
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof j1) {
            return this.f4238a.equals(((j1) obj).f4238a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4238a.hashCode();
    }

    public String toString() {
        return "Ordering.explicit(" + this.f4238a.keySet() + ")";
    }
}
