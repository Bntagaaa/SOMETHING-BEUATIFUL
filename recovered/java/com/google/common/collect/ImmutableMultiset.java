package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Multiset;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class ImmutableMultiset<E> extends r2<E> implements Multiset<E> {
    public static final /* synthetic */ int d = 0;

    /* renamed from: b, reason: collision with root package name */
    public transient ImmutableList f3906b;
    public transient ImmutableSet c;

    @GwtIncompatible
    public static class c<E> implements Serializable {
    }

    @Override // com.google.common.collect.Multiset
    public abstract ImmutableSet<E> elementSet();

    public abstract Multiset.Entry f(int i);

    public static <E> ImmutableMultiset<E> of() {
        return c5.h;
    }

    public static <E> ImmutableMultiset<E> of(E e) {
        return e(e);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2) {
        return e(e, e2);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3) {
        return e(e, e2, e3);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3, E e4) {
        return e(e, e2, e3, e4);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3, E e4, E e5) {
        return e(e, e2, e3, e4, e5);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        return new Builder().add((Builder) e).add((Builder<E>) e2).add((Builder<E>) e3).add((Builder<E>) e4).add((Builder<E>) e5).add((Builder<E>) e6).add((Object[]) eArr).build();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return e(eArr);
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.isPartialView()) {
                return immutableMultiset;
            }
        }
        Builder builder = new Builder(iterable instanceof Multiset ? ((Multiset) iterable).elementSet().size() : 11);
        builder.addAll((Iterable) iterable);
        return builder.build();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        return new Builder().addAll((Iterator) it).build();
    }

    public static ImmutableMultiset e(Object... objArr) {
        return new Builder().add(objArr).build();
    }

    public class a extends UnmodifiableIterator<E> {

        /* renamed from: a, reason: collision with root package name */
        public int f3909a;

        /* renamed from: b, reason: collision with root package name */
        public Object f3910b;
        public final /* synthetic */ UnmodifiableIterator c;

        public a(UnmodifiableIterator unmodifiableIterator) {
            this.c = unmodifiableIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3909a > 0 || this.c.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f3909a <= 0) {
                Multiset.Entry entry = (Multiset.Entry) this.c.next();
                this.f3910b = entry.getElement();
                this.f3909a = entry.getCount();
            }
            this.f3909a--;
            return (E) this.f3910b;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return new a(entrySet().iterator());
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.f3906b;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListAsList = super.asList();
        this.f3906b = immutableListAsList;
        return immutableListAsList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    @Deprecated
    public final int add(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    @Deprecated
    public final int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    @Deprecated
    public final int setCount(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean setCount(E e, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        UnmodifiableIterator<Multiset.Entry<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            Multiset.Entry<E> next = it.next();
            Arrays.fill(objArr, i, next.getCount() + i, next.getElement());
            i += next.getCount();
        }
        return i;
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@NullableDecl Object obj) {
        return Multisets.b(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return Sets.b(entrySet());
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.Multiset
    public ImmutableSet<Multiset.Entry<E>> entrySet() {
        ImmutableSet<Multiset.Entry<E>> immutableSetOf = this.c;
        if (immutableSetOf == null) {
            immutableSetOf = isEmpty() ? ImmutableSet.of() : new b();
            this.c = immutableSetOf;
        }
        return immutableSetOf;
    }

    public final class b extends a3<Multiset.Entry<E>> {
        public b() {
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override // com.google.common.collect.a3
        public final Object get(int i) {
            return ImmutableMultiset.this.f(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                if (entry.getCount() > 0 && ImmutableMultiset.this.count(entry.getElement()) == entry.getCount()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    public static class Builder<E> extends ImmutableCollection.Builder<E> {

        /* renamed from: a, reason: collision with root package name */
        public r4 f3907a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f3908b;
        public boolean c;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableCollection.Builder add(Object obj) {
            return add((Builder<E>) obj);
        }

        public Builder() {
            this(4);
        }

        public Builder(int i) {
            this.f3908b = false;
            this.c = false;
            this.f3907a = r4.createWithExpectedSize(i);
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E e) {
            return addCopies(e, 1);
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<E> addCopies(E e, int i) {
            if (i == 0) {
                return this;
            }
            if (this.f3908b) {
                this.f3907a = new r4(this.f3907a);
                this.c = false;
            }
            this.f3908b = false;
            Preconditions.checkNotNull(e);
            r4 r4Var = this.f3907a;
            r4Var.put(e, i + r4Var.get(e));
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<E> setCount(E e, int i) {
            if (i == 0 && !this.c) {
                r4 r4Var = this.f3907a;
                s4 s4Var = new s4();
                s4Var.f(r4Var.c);
                for (int iB = r4Var.b(); iB != -1; iB = r4Var.i(iB)) {
                    s4Var.put(r4Var.c(iB), r4Var.d(iB));
                }
                this.f3907a = s4Var;
                this.c = true;
            } else if (this.f3908b) {
                this.f3907a = new r4(this.f3907a);
                this.c = false;
            }
            this.f3908b = false;
            Preconditions.checkNotNull(e);
            if (i == 0) {
                this.f3907a.remove(e);
                return this;
            }
            this.f3907a.put(Preconditions.checkNotNull(e), i);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            r4 r4Var;
            if (!(iterable instanceof Multiset)) {
                super.addAll((Iterable) iterable);
                return this;
            }
            Multiset multiset = (Multiset) iterable;
            if (multiset instanceof c5) {
                r4Var = ((c5) multiset).e;
            } else {
                r4Var = multiset instanceof j ? ((j) multiset).c : null;
            }
            if (r4Var != null) {
                r4 r4Var2 = this.f3907a;
                r4Var2.a(Math.max(r4Var2.c, r4Var.c));
                for (int iB = r4Var.b(); iB >= 0; iB = r4Var.i(iB)) {
                    addCopies(r4Var.c(iB), r4Var.d(iB));
                }
            } else {
                Set<Multiset.Entry<E>> setEntrySet = multiset.entrySet();
                r4 r4Var3 = this.f3907a;
                r4Var3.a(Math.max(r4Var3.c, setEntrySet.size()));
                for (Multiset.Entry<E> entry : multiset.entrySet()) {
                    addCopies(entry.getElement(), entry.getCount());
                }
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableMultiset<E> build() {
            r4 r4Var = this.f3907a;
            if (r4Var.c == 0) {
                return ImmutableMultiset.of();
            }
            if (this.c) {
                this.f3907a = new r4(r4Var);
                this.c = false;
            }
            this.f3908b = true;
            return new c5(this.f3907a);
        }
    }
}
