package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
class c5<E> extends ImmutableMultiset<E> {
    public static final c5 h = new c5(r4.create());
    public final transient r4 e;
    public final transient int f;

    /* renamed from: g, reason: collision with root package name */
    public transient ImmutableSet f4191g;

    @GwtIncompatible
    public static class c implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    public c5(r4 r4Var) {
        this.e = r4Var;
        long jD = 0;
        for (int i = 0; i < r4Var.c; i++) {
            jD += r4Var.d(i);
        }
        this.f = Ints.saturatedCast(jD);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@NullableDecl Object obj) {
        return this.e.get(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return this.f;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f4191g;
        if (immutableSet != null) {
            return immutableSet;
        }
        b bVar = new b();
        this.f4191g = bVar;
        return bVar;
    }

    public final class b extends a3<E> {
        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public b() {
        }

        @Override // com.google.common.collect.a3
        public final Object get(int i) {
            return c5.this.e.c(i);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return c5.this.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c5.this.e.c;
        }
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public final Multiset.Entry f(int i) {
        r4 r4Var = this.e;
        Preconditions.checkElementIndex(i, r4Var.c);
        return new r4.a(i);
    }
}
