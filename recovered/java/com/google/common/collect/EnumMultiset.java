package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class EnumMultiset<E extends Enum<E>> extends m<E> implements Serializable {
    public final transient Class c;
    public final transient Enum[] d;
    public final transient int[] e;
    public transient int f;

    /* renamed from: g, reason: collision with root package name */
    public transient long f3862g;

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        Iterables.addAll(enumMultiset, iterable);
        return enumMultiset;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> enumMultisetCreate = create(cls);
        Iterables.addAll(enumMultisetCreate, iterable);
        return enumMultisetCreate;
    }

    public EnumMultiset(Class cls) {
        this.c = cls;
        Preconditions.checkArgument(cls.isEnum());
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        this.d = enumArr;
        this.e = new int[enumArr.length];
    }

    public final boolean f(Object obj) {
        if (obj instanceof Enum) {
            Enum r5 = (Enum) obj;
            int iOrdinal = r5.ordinal();
            Enum[] enumArr = this.d;
            if (iOrdinal < enumArr.length && enumArr[iOrdinal] == r5) {
                return true;
            }
        }
        return false;
    }

    public final void e(Enum r4) {
        Preconditions.checkNotNull(r4);
        if (f(r4)) {
            return;
        }
        throw new ClassCastException("Expected an " + this.c + " but got " + r4);
    }

    @Override // com.google.common.collect.m
    public final int b() {
        return this.f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(this.f3862g);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@NullableDecl Object obj) {
        if (f(obj)) {
            return this.e[((Enum) obj).ordinal()];
        }
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(E e, int i) {
        e(e);
        g0.b(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        int iOrdinal = e.ordinal();
        int[] iArr = this.e;
        int i2 = iArr[iOrdinal];
        long j = i;
        long j2 = i2 + j;
        Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
        iArr[iOrdinal] = (int) j2;
        if (i2 == 0) {
            this.f++;
        }
        this.f3862g += j;
        return i2;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i) {
        if (f(obj)) {
            Enum r0 = (Enum) obj;
            g0.b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            int iOrdinal = r0.ordinal();
            int[] iArr = this.e;
            int i2 = iArr[iOrdinal];
            if (i2 != 0) {
                if (i2 <= i) {
                    iArr[iOrdinal] = 0;
                    this.f--;
                    this.f3862g -= i2;
                    return i2;
                }
                iArr[iOrdinal] = i2 - i;
                this.f3862g -= i;
                return i2;
            }
        }
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(E e, int i) {
        e(e);
        g0.b(i, "count");
        int iOrdinal = e.ordinal();
        int[] iArr = this.e;
        int i2 = iArr[iOrdinal];
        iArr[iOrdinal] = i;
        this.f3862g += i - i2;
        if (i2 == 0 && i > 0) {
            this.f++;
            return i2;
        }
        if (i2 > 0 && i == 0) {
            this.f--;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.e, 0);
        this.f3862g = 0L;
        this.f = 0;
    }

    public abstract class a<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public int f3863a = 0;

        /* renamed from: b, reason: collision with root package name */
        public int f3864b = -1;

        public abstract Object a(int i);

        public a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                int i = this.f3863a;
                EnumMultiset enumMultiset = EnumMultiset.this;
                if (i >= enumMultiset.d.length) {
                    return false;
                }
                if (enumMultiset.e[i] > 0) {
                    return true;
                }
                this.f3863a = i + 1;
            }
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) a(this.f3863a);
            int i = this.f3863a;
            this.f3864b = i;
            this.f3863a = i + 1;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            g0.e(this.f3864b >= 0);
            EnumMultiset enumMultiset = EnumMultiset.this;
            int[] iArr = enumMultiset.e;
            int i = this.f3864b;
            int i2 = iArr[i];
            if (i2 > 0) {
                enumMultiset.f--;
                enumMultiset.f3862g -= i2;
                iArr[i] = 0;
            }
            this.f3864b = -1;
        }
    }

    @Override // com.google.common.collect.m
    public final Iterator c() {
        return new g1(this);
    }

    @Override // com.google.common.collect.m
    public final Iterator d() {
        return new i1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.c(this);
    }
}
