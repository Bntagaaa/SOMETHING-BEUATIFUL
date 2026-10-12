package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class j<T> extends Equivalence<Iterable<T>> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Equivalence f3744a;

    public j(Equivalence equivalence) {
        this.f3744a = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    @Override // com.google.common.base.Equivalence
    public boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.f3744a.equivalent(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    @Override // com.google.common.base.Equivalence
    public int doHash(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int iHash = 78721;
        while (it.hasNext()) {
            iHash = (iHash * 24943) + this.f3744a.hash(it.next());
        }
        return iHash;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof j) {
            return this.f3744a.equals(((j) obj).f3744a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3744a.hashCode() ^ 1185147655;
    }

    public String toString() {
        return this.f3744a + ".pairwise()";
    }
}
