package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Collections2 {
    private Collections2() {
    }

    public static <E> Collection<E> filter(Collection<E> collection, Predicate<? super E> predicate) {
        if (collection instanceof a) {
            a aVar = (a) collection;
            return new a(aVar.f3847a, Predicates.and(aVar.f3848b, predicate));
        }
        return new a((Collection) Preconditions.checkNotNull(collection), (Predicate) Preconditions.checkNotNull(predicate));
    }

    public static boolean c(Object obj, Collection collection) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static class a<E> extends AbstractCollection<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Collection f3847a;

        /* renamed from: b, reason: collision with root package name */
        public final Predicate f3848b;

        public a(Collection collection, Predicate predicate) {
            this.f3847a = collection;
            this.f3848b = predicate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e) {
            Preconditions.checkArgument(this.f3848b.apply(e));
            return this.f3847a.add(e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                Preconditions.checkArgument(this.f3848b.apply(it.next()));
            }
            return this.f3847a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Iterables.removeIf(this.f3847a, this.f3848b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (Collections2.c(obj, this.f3847a)) {
                return this.f3848b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return Collections2.b(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !Iterables.any(this.f3847a, this.f3848b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.filter(this.f3847a.iterator(), this.f3848b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.f3847a.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.f3847a.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f3848b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.f3847a.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f3848b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator<E> it = this.f3847a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.f3848b.apply(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    public static <F, T> Collection<T> transform(Collection<F> collection, Function<? super F, T> function) {
        return new f(collection, function);
    }

    public static class f<F, T> extends AbstractCollection<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Collection f3852a;

        /* renamed from: b, reason: collision with root package name */
        public final Function f3853b;

        public f(Collection collection, Function function) {
            this.f3852a = (Collection) Preconditions.checkNotNull(collection);
            this.f3853b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f3852a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f3852a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.f3852a.iterator(), this.f3853b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f3852a.size();
        }
    }

    public static boolean b(Collection collection, Collection collection2) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Beta
    public static <E extends Comparable<? super E>> Collection<List<E>> orderedPermutations(Iterable<E> iterable) {
        return orderedPermutations(iterable, Ordering.natural());
    }

    @Beta
    public static <E> Collection<List<E>> orderedPermutations(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new b(iterable, comparator);
    }

    public static final class b<E> extends AbstractCollection<List<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableList f3849a;

        /* renamed from: b, reason: collision with root package name */
        public final Comparator f3850b;
        public final int c;

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        public b(Iterable iterable, Comparator comparator) {
            int iSaturatedMultiply;
            ImmutableList immutableListSortedCopyOf = ImmutableList.sortedCopyOf(comparator, iterable);
            this.f3849a = immutableListSortedCopyOf;
            this.f3850b = comparator;
            int i = 1;
            int iSaturatedMultiply2 = 1;
            int i2 = 1;
            while (true) {
                if (i < immutableListSortedCopyOf.size()) {
                    if (comparator.compare(immutableListSortedCopyOf.get(i - 1), immutableListSortedCopyOf.get(i)) < 0) {
                        iSaturatedMultiply2 = IntMath.saturatedMultiply(iSaturatedMultiply2, IntMath.binomial(i, i2));
                        iSaturatedMultiply = Integer.MAX_VALUE;
                        if (iSaturatedMultiply2 == Integer.MAX_VALUE) {
                            break;
                        } else {
                            i2 = 0;
                        }
                    }
                    i++;
                    i2++;
                } else {
                    iSaturatedMultiply = IntMath.saturatedMultiply(iSaturatedMultiply2, IntMath.binomial(i, i2));
                    break;
                }
            }
            this.c = iSaturatedMultiply;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new c(this.f3849a, this.f3850b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.a(this.f3849a, (List) obj);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "orderedPermutationCollection(" + this.f3849a + ")";
        }
    }

    public static final class c<E> extends AbstractIterator<List<E>> {
        public ArrayList c;
        public final Comparator d;

        public c(List list, Comparator comparator) {
            this.c = Lists.newArrayList(list);
            this.d = comparator;
        }

        @Override // com.google.common.collect.AbstractIterator
        public List<E> computeNext() {
            Comparator comparator;
            ArrayList arrayList = this.c;
            if (arrayList == null) {
                return endOfData();
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) arrayList);
            int size = this.c.size() - 2;
            while (true) {
                comparator = this.d;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (comparator.compare(this.c.get(size), this.c.get(size + 1)) < 0) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                this.c = null;
                return immutableListCopyOf;
            }
            Object obj = this.c.get(size);
            for (int size2 = this.c.size() - 1; size2 > size; size2--) {
                if (comparator.compare(obj, this.c.get(size2)) < 0) {
                    Collections.swap(this.c, size, size2);
                    Collections.reverse(this.c.subList(size + 1, this.c.size()));
                    return immutableListCopyOf;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }
    }

    @Beta
    public static <E> Collection<List<E>> permutations(Collection<E> collection) {
        return new d(ImmutableList.copyOf((Collection) collection));
    }

    public static final class d<E> extends AbstractCollection<List<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableList f3851a;

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        public d(ImmutableList immutableList) {
            this.f3851a = immutableList;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return IntMath.factorial(this.f3851a.size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new e(this.f3851a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.a(this.f3851a, (List) obj);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "permutations(" + this.f3851a + ")";
        }
    }

    public static class e<E> extends AbstractIterator<List<E>> {
        public final ArrayList c;
        public final int[] d;
        public final int[] e;
        public int f;

        public e(List list) {
            this.c = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.d = iArr;
            int[] iArr2 = new int[size];
            this.e = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.f = Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.AbstractIterator
        public List<E> computeNext() {
            if (this.f <= 0) {
                return endOfData();
            }
            ArrayList arrayList = this.c;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) arrayList);
            int size = arrayList.size() - 1;
            this.f = size;
            if (size != -1) {
                int i = 0;
                while (true) {
                    int i2 = this.f;
                    int[] iArr = this.d;
                    int i3 = iArr[i2];
                    int[] iArr2 = this.e;
                    int i4 = iArr2[i2];
                    int i5 = i3 + i4;
                    if (i5 < 0) {
                        iArr2[i2] = -i4;
                        this.f = i2 - 1;
                    } else {
                        if (i5 != i2 + 1) {
                            Collections.swap(arrayList, (i2 - i3) + i, (i2 - i5) + i);
                            iArr[this.f] = i5;
                            return immutableListCopyOf;
                        }
                        if (i2 == 0) {
                            break;
                        }
                        i++;
                        iArr2[i2] = -i4;
                        this.f = i2 - 1;
                    }
                }
            }
            return immutableListCopyOf;
        }
    }

    public static boolean a(List list, List list2) {
        if (list.size() == list2.size()) {
            r4 r4Var = new r4();
            for (Object obj : list) {
                r4Var.put(obj, r4Var.get(obj) + 1);
            }
            r4 r4Var2 = new r4();
            for (Object obj2 : list2) {
                r4Var2.put(obj2, r4Var2.get(obj2) + 1);
            }
            if (list.size() == list2.size()) {
                for (int i = 0; i < list.size(); i++) {
                    if (r4Var.d(i) == r4Var2.get(r4Var.c(i))) {
                    }
                }
                return true;
            }
        }
        return false;
    }
}
