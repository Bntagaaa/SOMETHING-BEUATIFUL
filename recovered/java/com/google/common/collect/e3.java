package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class e3<T> extends Ordering<Iterable<T>> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparator f4199a;

    public e3(Comparator comparator) {
        this.f4199a = comparator;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext()) {
                return 1;
            }
            int iCompare = this.f4199a.compare(it.next(), it2.next());
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return it2.hasNext() ? -1 : 0;
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e3) {
            return this.f4199a.equals(((e3) obj).f4199a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4199a.hashCode() ^ 2075626741;
    }

    public String toString() {
        return this.f4199a + ".lexicographical()";
    }
}
