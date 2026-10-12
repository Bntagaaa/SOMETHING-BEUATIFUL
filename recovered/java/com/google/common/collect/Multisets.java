package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Multiset;
import com.google.common.collect.Sets;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Multisets {
    private Multisets() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Multiset<E> unmodifiableMultiset(Multiset<? extends E> multiset) {
        return ((multiset instanceof l) || (multiset instanceof ImmutableMultiset)) ? multiset : new l((Multiset) Preconditions.checkNotNull(multiset));
    }

    @Deprecated
    public static <E> Multiset<E> unmodifiableMultiset(ImmutableMultiset<E> immutableMultiset) {
        return (Multiset) Preconditions.checkNotNull(immutableMultiset);
    }

    public static class l<E> extends ForwardingMultiset<E> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Multiset f4076a;

        /* renamed from: b, reason: collision with root package name */
        public transient Set f4077b;
        public transient Set c;

        public l(Multiset multiset) {
            this.f4076a = multiset;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Multiset<E> delegate() {
            return this.f4076a;
        }

        public Set a() {
            return Collections.unmodifiableSet(this.f4076a.elementSet());
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set = this.f4077b;
            if (set != null) {
                return set;
            }
            Set<E> setA = a();
            this.f4077b = setA;
            return setA;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set = this.c;
            if (set != null) {
                return set;
            }
            Set<Multiset.Entry<E>> setUnmodifiableSet = Collections.unmodifiableSet(this.f4076a.entrySet());
            this.c = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.f4076a.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int add(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int setCount(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public boolean setCount(E e, int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    @Beta
    public static <E> SortedMultiset<E> unmodifiableSortedMultiset(SortedMultiset<E> sortedMultiset) {
        return new r6((SortedMultiset) Preconditions.checkNotNull(sortedMultiset));
    }

    public static <E> Multiset.Entry<E> immutableEntry(@NullableDecl E e2, int i2) {
        return new j(e2, i2);
    }

    public static class j<E> extends e<E> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4072a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4073b;

        public j(Object obj, int i) {
            this.f4072a = obj;
            this.f4073b = i;
            g0.b(i, "count");
        }

        @Override // com.google.common.collect.Multiset.Entry
        @NullableDecl
        public final E getElement() {
            return (E) this.f4072a;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            return this.f4073b;
        }
    }

    @Beta
    public static <E> Multiset<E> filter(Multiset<E> multiset, Predicate<? super E> predicate) {
        if (multiset instanceof i) {
            i iVar = (i) multiset;
            return new i(iVar.c, Predicates.and(iVar.d, predicate));
        }
        return new i(multiset, predicate);
    }

    public static final class i<E> extends m<E> {
        public final Multiset c;
        public final Predicate d;

        public i(Multiset multiset, Predicate predicate) {
            super(0);
            this.c = (Multiset) Preconditions.checkNotNull(multiset);
            this.d = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.collect.Multisets.m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public UnmodifiableIterator<E> iterator() {
            return Iterators.filter(this.c.iterator(), this.d);
        }

        @Override // com.google.common.collect.m
        public final Set a() {
            return Sets.filter(this.c.elementSet(), this.d);
        }

        @Override // com.google.common.collect.m
        public final Iterator c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.m
        public final Set createEntrySet() {
            return Sets.filter(this.c.entrySet(), new m4(this));
        }

        @Override // com.google.common.collect.m
        public final Iterator d() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Multiset
        public int count(@NullableDecl Object obj) {
            int iCount = this.c.count(obj);
            if (iCount <= 0 || !this.d.apply(obj)) {
                return 0;
            }
            return iCount;
        }

        @Override // com.google.common.collect.m, com.google.common.collect.Multiset
        public int add(@NullableDecl E e, int i) {
            Predicate predicate = this.d;
            Preconditions.checkArgument(predicate.apply(e), "Element %s does not match predicate %s", e, predicate);
            return this.c.add(e, i);
        }

        @Override // com.google.common.collect.m, com.google.common.collect.Multiset
        public int remove(@NullableDecl Object obj, int i) {
            g0.b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            if (contains(obj)) {
                return this.c.remove(obj, i);
            }
            return 0;
        }
    }

    @Beta
    public static <E> Multiset<E> union(Multiset<? extends E> multiset, Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new a(multiset, multiset2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class a<E> extends m<E> {
        public final /* synthetic */ Multiset c;
        public final /* synthetic */ Multiset d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Multiset multiset, Multiset multiset2) {
            super(0);
            this.c = multiset;
            this.d = multiset2;
        }

        @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@NullableDecl Object obj) {
            return this.c.contains(obj) || this.d.contains(obj);
        }

        @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.c.isEmpty() && this.d.isEmpty();
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            return Math.max(this.c.count(obj), this.d.count(obj));
        }

        @Override // com.google.common.collect.m
        public final Set a() {
            return Sets.union(this.c.elementSet(), this.d.elementSet());
        }

        @Override // com.google.common.collect.m
        public final Iterator c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.m
        public final Iterator d() {
            return new g4(this, this.c.entrySet().iterator(), this.d.entrySet().iterator());
        }
    }

    public static <E> Multiset<E> intersection(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new b(multiset, multiset2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class b<E> extends m<E> {
        public final /* synthetic */ Multiset c;
        public final /* synthetic */ Multiset d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Multiset multiset, Multiset multiset2) {
            super(0);
            this.c = multiset;
            this.d = multiset2;
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            int iCount = this.c.count(obj);
            if (iCount == 0) {
                return 0;
            }
            return Math.min(iCount, this.d.count(obj));
        }

        @Override // com.google.common.collect.m
        public final Set a() {
            return Sets.intersection(this.c.elementSet(), this.d.elementSet());
        }

        @Override // com.google.common.collect.m
        public final Iterator c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.m
        public final Iterator d() {
            return new h4(this, this.c.entrySet().iterator());
        }
    }

    @Beta
    public static <E> Multiset<E> sum(Multiset<? extends E> multiset, Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new c(multiset, multiset2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class c<E> extends m<E> {
        public final /* synthetic */ Multiset c;
        public final /* synthetic */ Multiset d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Multiset multiset, Multiset multiset2) {
            super(0);
            this.c = multiset;
            this.d = multiset2;
        }

        @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@NullableDecl Object obj) {
            return this.c.contains(obj) || this.d.contains(obj);
        }

        @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.c.isEmpty() && this.d.isEmpty();
        }

        @Override // com.google.common.collect.Multisets.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return IntMath.saturatedAdd(this.c.size(), this.d.size());
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            return this.d.count(obj) + this.c.count(obj);
        }

        @Override // com.google.common.collect.m
        public final Set a() {
            return Sets.union(this.c.elementSet(), this.d.elementSet());
        }

        @Override // com.google.common.collect.m
        public final Iterator c() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.m
        public final Iterator d() {
            return new i4(this, this.c.entrySet().iterator(), this.d.entrySet().iterator());
        }
    }

    @Beta
    public static <E> Multiset<E> difference(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new d(multiset, multiset2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class d<E> extends m<E> {
        public final /* synthetic */ Multiset c;
        public final /* synthetic */ Multiset d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Multiset multiset, Multiset multiset2) {
            super(0);
            this.c = multiset;
            this.d = multiset2;
        }

        @Override // com.google.common.collect.Multiset
        public int count(@NullableDecl Object obj) {
            int iCount = this.c.count(obj);
            if (iCount == 0) {
                return 0;
            }
            return Math.max(0, iCount - this.d.count(obj));
        }

        @Override // com.google.common.collect.Multisets.m, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.m
        public final Iterator c() {
            return new j4(this, this.c.entrySet().iterator());
        }

        @Override // com.google.common.collect.m
        public final Iterator d() {
            return new k4(this, this.c.entrySet().iterator());
        }

        @Override // com.google.common.collect.Multisets.m, com.google.common.collect.m
        public final int b() {
            return Iterators.size(d());
        }
    }

    @CanIgnoreReturnValue
    public static boolean containsOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        for (Multiset.Entry<?> entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) < entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    @CanIgnoreReturnValue
    public static boolean retainOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Multiset.Entry<?> next = it.next();
            int iCount = multiset2.count(next.getElement());
            if (iCount == 0) {
                it.remove();
            } else if (iCount < next.getCount()) {
                multiset.setCount(next.getElement(), iCount);
            }
            z = true;
        }
        return z;
    }

    @CanIgnoreReturnValue
    public static boolean removeOccurrences(Multiset<?> multiset, Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return removeOccurrences(multiset, (Multiset<?>) iterable);
        }
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(iterable);
        Iterator<?> it = iterable.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= multiset.remove(it.next());
        }
        return zRemove;
    }

    @CanIgnoreReturnValue
    public static boolean removeOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Multiset.Entry<?> next = it.next();
            int iCount = multiset2.count(next.getElement());
            if (iCount >= next.getCount()) {
                it.remove();
            } else if (iCount > 0) {
                multiset.remove(next.getElement(), iCount);
            }
            z = true;
        }
        return z;
    }

    public static abstract class e<E> implements Multiset.Entry<E> {
        @Override // com.google.common.collect.Multiset.Entry
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                if (getCount() == entry.getCount() && Objects.equal(getElement(), entry.getElement())) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.Multiset.Entry
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return strValueOf;
            }
            return strValueOf + " x " + count;
        }
    }

    public static boolean b(Multiset multiset, Object obj) {
        if (obj == multiset) {
            return true;
        }
        if (!(obj instanceof Multiset)) {
            return false;
        }
        Multiset multiset2 = (Multiset) obj;
        if (multiset.size() != multiset2.size() || multiset.entrySet().size() != multiset2.entrySet().size()) {
            return false;
        }
        for (Multiset.Entry entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) != entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Multiset multiset, Collection collection) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(collection);
        if (!(collection instanceof Multiset)) {
            if (collection.isEmpty()) {
                return false;
            }
            return Iterators.addAll(multiset, collection.iterator());
        }
        Multiset multiset2 = (Multiset) collection;
        if (multiset2 instanceof com.google.common.collect.j) {
            com.google.common.collect.j jVar = (com.google.common.collect.j) multiset2;
            if (jVar.isEmpty()) {
                return false;
            }
            Preconditions.checkNotNull(multiset);
            for (int iB = jVar.c.b(); iB >= 0; iB = jVar.c.i(iB)) {
                multiset.add(jVar.c.c(iB), jVar.c.d(iB));
            }
            return true;
        }
        if (multiset2.isEmpty()) {
            return false;
        }
        for (Multiset.Entry entry : multiset2.entrySet()) {
            multiset.add(entry.getElement(), entry.getCount());
        }
        return true;
    }

    public static abstract class g<E> extends Sets.k<E> {
        public abstract Multiset a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return a().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().entrySet().size();
        }
    }

    public static abstract class h<E> extends Sets.k<Multiset.Entry<E>> {
        public abstract Multiset a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && a().count(entry.getElement()) == entry.getCount();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                Object element = entry.getElement();
                int count = entry.getCount();
                if (count != 0) {
                    return a().setCount(element, count, 0);
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }
    }

    public static Iterator c(Multiset multiset) {
        return new k(multiset, multiset.entrySet().iterator());
    }

    public static final class k<E> implements Iterator<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Multiset f4074a;

        /* renamed from: b, reason: collision with root package name */
        public final Iterator f4075b;
        public Multiset.Entry c;
        public int d;
        public int e;
        public boolean f;

        public k(Multiset multiset, Iterator it) {
            this.f4074a = multiset;
            this.f4075b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.d > 0 || this.f4075b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.d == 0) {
                Multiset.Entry entry = (Multiset.Entry) this.f4075b.next();
                this.c = entry;
                int count = entry.getCount();
                this.d = count;
                this.e = count;
            }
            this.d--;
            this.f = true;
            return (E) this.c.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            g0.e(this.f);
            if (this.e == 1) {
                this.f4075b.remove();
            } else {
                this.f4074a.remove(this.c.getElement());
            }
            this.e--;
            this.f = false;
        }
    }

    public static int d(Multiset multiset) {
        long count = 0;
        while (multiset.entrySet().iterator().hasNext()) {
            count += ((Multiset.Entry) r4.next()).getCount();
        }
        return Ints.saturatedCast(count);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    public static <E> ImmutableMultiset<E> copyHighestCountFirst(Multiset<E> multiset) {
        Multiset.Entry[] entryArr = (Multiset.Entry[]) multiset.entrySet().toArray(new Multiset.Entry[0]);
        Arrays.sort(entryArr, f.f4071a);
        List<Multiset.Entry> listAsList = Arrays.asList(entryArr);
        int i2 = ImmutableMultiset.d;
        ImmutableMultiset.Builder builder = new ImmutableMultiset.Builder(listAsList.size());
        for (Multiset.Entry entry : listAsList) {
            builder.addCopies(entry.getElement(), entry.getCount());
        }
        return builder.build();
    }

    public static final class f implements Comparator<Multiset.Entry<?>> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f4071a = new f();

        private f() {
        }

        @Override // java.util.Comparator
        public int compare(Multiset.Entry<?> entry, Multiset.Entry<?> entry2) {
            return entry2.getCount() - entry.getCount();
        }
    }

    public static abstract class m<E> extends com.google.common.collect.m<E> {
        private m() {
        }

        public /* synthetic */ m(int i) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return Multisets.d(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            elementSet().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<E> iterator() {
            return Multisets.c(this);
        }

        @Override // com.google.common.collect.m
        public int b() {
            return elementSet().size();
        }
    }
}
