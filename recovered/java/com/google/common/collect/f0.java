package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
final class f0<E> extends AbstractList<List<E>> implements RandomAccess {
    public static final /* synthetic */ int c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final transient ImmutableList f4201a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int[] f4202b;

    public class a extends ImmutableList<E> {
        public final /* synthetic */ int c;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return f0.this.f4201a.size();
        }

        public a(int i) {
            this.c = i;
        }

        @Override // java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, size());
            f0 f0Var = f0.this;
            return (E) ((List) f0Var.f4201a.get(i)).get(f0.a(f0Var, this.c, i));
        }
    }

    public f0(ImmutableList immutableList) {
        this.f4201a = immutableList;
        int[] iArr = new int[immutableList.size() + 1];
        iArr[immutableList.size()] = 1;
        try {
            for (int size = immutableList.size() - 1; size >= 0; size--) {
                iArr[size] = IntMath.checkedMultiply(iArr[size + 1], ((List) immutableList.get(size)).size());
            }
            this.f4202b = iArr;
        } catch (ArithmeticException unused) {
            throw new IllegalArgumentException("Cartesian product too large; must have size at most Integer.MAX_VALUE");
        }
    }

    public static int a(f0 f0Var, int i, int i2) {
        return (i / f0Var.f4202b[i2 + 1]) % ((List) f0Var.f4201a.get(i2)).size();
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof List)) {
            return -1;
        }
        List list = (List) obj;
        int size = list.size();
        ImmutableList immutableList = this.f4201a;
        if (size != immutableList.size()) {
            return -1;
        }
        ListIterator<E> listIterator = list.listIterator();
        int i = 0;
        while (listIterator.hasNext()) {
            int iNextIndex = listIterator.nextIndex();
            int iIndexOf = ((List) immutableList.get(iNextIndex)).indexOf(listIterator.next());
            if (iIndexOf == -1) {
                return -1;
            }
            i += iIndexOf * this.f4202b[iNextIndex + 1];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public ImmutableList<E> get(int i) {
        Preconditions.checkElementIndex(i, size());
        return new a(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f4202b[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) != -1;
    }
}
