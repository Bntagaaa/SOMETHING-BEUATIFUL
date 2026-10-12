package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class d5<E> extends ImmutableSet<E> {
    public static final d5 h = new d5(new Object[0], null, 0, 0, 0);
    public final transient Object[] c;
    public final transient Object[] d;
    public final transient int e;
    public final transient int f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f4196g;

    @Override // com.google.common.collect.ImmutableCollection
    public final int d() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean h() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    public d5(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        this.c = objArr;
        this.d = objArr2;
        this.e = i2;
        this.f = i;
        this.f4196g = i3;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        Object[] objArr;
        if (obj == null || (objArr = this.d) == null) {
            return false;
        }
        int iC = e2.c(obj);
        while (true) {
            int i = iC & this.e;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iC = i + 1;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f4196g;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return asList().iterator();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] b() {
        return this.c;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c() {
        return this.f4196g;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        Object[] objArr2 = this.c;
        int i2 = this.f4196g;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        return ImmutableList.e(this.f4196g, this.c);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f;
    }
}
