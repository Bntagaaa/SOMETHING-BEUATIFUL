package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.y5;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Sets {
    private Sets() {
    }

    public static abstract class k<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Sets.c(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) Preconditions.checkNotNull(collection));
        }
    }

    @GwtCompatible(serializable = true)
    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(E e2, E... eArr) {
        return i2.i(EnumSet.of((Enum) e2, (Enum[]) eArr));
    }

    @GwtCompatible(serializable = true)
    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(Iterable<E> iterable) {
        if (iterable instanceof i2) {
            return (i2) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return ImmutableSet.of();
            }
            return i2.i(EnumSet.copyOf(collection));
        }
        Iterator<E> it = iterable.iterator();
        if (it.hasNext()) {
            EnumSet enumSetOf = EnumSet.of((Enum) it.next());
            Iterators.addAll(enumSetOf, it);
            return i2.i(enumSetOf);
        }
        return ImmutableSet.of();
    }

    public static <E extends Enum<E>> EnumSet<E> newEnumSet(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> enumSetNoneOf = EnumSet.noneOf(cls);
        Iterables.addAll(enumSetNoneOf, iterable);
        return enumSetNoneOf;
    }

    public static <E> HashSet<E> newHashSet() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> newHashSet(E... eArr) {
        HashSet<E> hashSetNewHashSetWithExpectedSize = newHashSetWithExpectedSize(eArr.length);
        Collections.addAll(hashSetNewHashSetWithExpectedSize, eArr);
        return hashSetNewHashSetWithExpectedSize;
    }

    public static <E> HashSet<E> newHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new HashSet<>((Collection) iterable);
        }
        return newHashSet(iterable.iterator());
    }

    public static <E> HashSet<E> newHashSet(Iterator<? extends E> it) {
        HashSet<E> hashSetNewHashSet = newHashSet();
        Iterators.addAll(hashSetNewHashSet, it);
        return hashSetNewHashSet;
    }

    public static <E> HashSet<E> newHashSetWithExpectedSize(int i2) {
        return new HashSet<>(Maps.c(i2));
    }

    public static <E> Set<E> newConcurrentHashSet() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static <E> Set<E> newConcurrentHashSet(Iterable<? extends E> iterable) {
        Set<E> setNewConcurrentHashSet = newConcurrentHashSet();
        Iterables.addAll(setNewConcurrentHashSet, iterable);
        return setNewConcurrentHashSet;
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>((Collection) iterable);
        }
        LinkedHashSet<E> linkedHashSetNewLinkedHashSet = newLinkedHashSet();
        Iterables.addAll(linkedHashSetNewLinkedHashSet, iterable);
        return linkedHashSetNewLinkedHashSet;
    }

    public static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i2) {
        return new LinkedHashSet<>(Maps.c(i2));
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet() {
        return new TreeSet<>();
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet(Iterable<? extends E> iterable) {
        TreeSet<E> treeSetNewTreeSet = newTreeSet();
        Iterables.addAll(treeSetNewTreeSet, iterable);
        return treeSetNewTreeSet;
    }

    public static <E> TreeSet<E> newTreeSet(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <E> Set<E> newIdentityHashSet() {
        return Collections.newSetFromMap(Maps.newIdentityHashMap());
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet() {
        return new CopyOnWriteArraySet<>();
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet(Iterable<? extends E> iterable) {
        Collection collectionNewArrayList;
        if (iterable instanceof Collection) {
            collectionNewArrayList = (Collection) iterable;
        } else {
            collectionNewArrayList = Lists.newArrayList(iterable);
        }
        return new CopyOnWriteArraySet<>(collectionNewArrayList);
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        Preconditions.checkArgument(!collection.isEmpty(), "collection is empty; use the other version of this method");
        EnumSet<E> enumSetAllOf = EnumSet.allOf(collection.iterator().next().getDeclaringClass());
        enumSetAllOf.removeAll(collection);
        return enumSetAllOf;
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection, Class<E> cls) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        EnumSet<E> enumSetAllOf = EnumSet.allOf(cls);
        enumSetAllOf.removeAll(collection);
        return enumSetAllOf;
    }

    @Deprecated
    public static <E> Set<E> newSetFromMap(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static abstract class SetView<E> extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract UnmodifiableIterator<E> iterator();

        public /* synthetic */ SetView(int i) {
            this();
        }

        private SetView() {
        }

        public ImmutableSet<E> immutableCopy() {
            return ImmutableSet.copyOf((Collection) this);
        }

        @CanIgnoreReturnValue
        public <S extends Set<E>> S copyInto(S s) {
            s.addAll(this);
            return s;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }
    }

    public static <E> SetView<E> union(Set<? extends E> set, Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new a(set, set2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class a<E> extends SetView<E> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Set f4090a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Set f4091b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Set set, Set set2) {
            super(0);
            this.f4090a = set;
            this.f4091b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Set set = this.f4090a;
            int size = set.size();
            Iterator<E> it = this.f4091b.iterator();
            while (it.hasNext()) {
                if (!set.contains(it.next())) {
                    size++;
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f4090a.isEmpty() && this.f4091b.isEmpty();
        }

        /* renamed from: com.google.common.collect.Sets$a$a, reason: collision with other inner class name */
        public class C0108a extends AbstractIterator<E> {
            public final Iterator c;
            public final Iterator d;

            public C0108a() {
                this.c = a.this.f4090a.iterator();
                this.d = a.this.f4091b.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            public E computeNext() {
                E e;
                Iterator it = this.c;
                if (it.hasNext()) {
                    return (E) it.next();
                }
                do {
                    Iterator it2 = this.d;
                    if (it2.hasNext()) {
                        e = (E) it2.next();
                    } else {
                        return endOfData();
                    }
                } while (a.this.f4090a.contains(e));
                return e;
            }
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new C0108a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f4090a.contains(obj) || this.f4091b.contains(obj);
        }

        @Override // com.google.common.collect.Sets.SetView
        public <S extends Set<E>> S copyInto(S s) {
            s.addAll(this.f4090a);
            s.addAll(this.f4091b);
            return s;
        }

        @Override // com.google.common.collect.Sets.SetView
        public ImmutableSet<E> immutableCopy() {
            return new ImmutableSet.Builder().addAll((Iterable) this.f4090a).addAll((Iterable) this.f4091b).build();
        }
    }

    public static <E> SetView<E> intersection(Set<E> set, Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new b(set, set2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class b<E> extends SetView<E> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Set f4092a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Set f4093b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Set set, Set set2) {
            super(0);
            this.f4092a = set;
            this.f4093b = set2;
        }

        public class a extends AbstractIterator<E> {
            public final Iterator c;

            public a() {
                this.c = b.this.f4092a.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            public E computeNext() {
                E e;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        e = (E) it.next();
                    } else {
                        return endOfData();
                    }
                } while (!b.this.f4093b.contains(e));
                return e;
            }
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.f4092a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.f4093b.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f4093b, this.f4092a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f4092a.contains(obj) && this.f4093b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f4092a.containsAll(collection) && this.f4093b.containsAll(collection);
        }
    }

    public static <E> SetView<E> difference(Set<E> set, Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new c(set, set2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class c<E> extends SetView<E> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Set f4094a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Set f4095b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Set set, Set set2) {
            super(0);
            this.f4094a = set;
            this.f4095b = set2;
        }

        public class a extends AbstractIterator<E> {
            public final Iterator c;

            public a() {
                this.c = c.this.f4094a.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            public E computeNext() {
                E e;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        e = (E) it.next();
                    } else {
                        return endOfData();
                    }
                } while (c.this.f4095b.contains(e));
                return e;
            }
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.f4094a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.f4095b.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f4095b.containsAll(this.f4094a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f4094a.contains(obj) && !this.f4095b.contains(obj);
        }
    }

    public static <E> SetView<E> symmetricDifference(Set<? extends E> set, Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new d(set, set2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class d<E> extends SetView<E> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Set f4096a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Set f4097b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Set set, Set set2) {
            super(0);
            this.f4096a = set;
            this.f4097b = set2;
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a(this.f4096a.iterator(), this.f4097b.iterator());
        }

        public class a extends AbstractIterator<E> {
            public final /* synthetic */ Iterator c;
            public final /* synthetic */ Iterator d;

            public a(Iterator it, Iterator it2) {
                this.c = it;
                this.d = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            public E computeNext() {
                d dVar;
                E e;
                E e2;
                do {
                    Iterator it = this.c;
                    boolean zHasNext = it.hasNext();
                    dVar = d.this;
                    if (zHasNext) {
                        e2 = (E) it.next();
                    } else {
                        do {
                            Iterator it2 = this.d;
                            if (it2.hasNext()) {
                                e = (E) it2.next();
                            } else {
                                return endOfData();
                            }
                        } while (dVar.f4096a.contains(e));
                        return e;
                    }
                } while (dVar.f4097b.contains(e2));
                return e2;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Set set;
            Set set2 = this.f4096a;
            Iterator<E> it = set2.iterator();
            int i = 0;
            while (true) {
                boolean zHasNext = it.hasNext();
                set = this.f4097b;
                if (!zHasNext) {
                    break;
                }
                if (!set.contains(it.next())) {
                    i++;
                }
            }
            Iterator<E> it2 = set.iterator();
            while (it2.hasNext()) {
                if (!set2.contains(it2.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f4096a.equals(this.f4097b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f4097b.contains(obj) ^ this.f4096a.contains(obj);
        }
    }

    public static <E> Set<E> filter(Set<E> set, Predicate<? super E> predicate) {
        if (set instanceof SortedSet) {
            return filter((SortedSet) set, (Predicate) predicate);
        }
        if (set instanceof i) {
            i iVar = (i) set;
            return new i((Set) iVar.f3847a, Predicates.and(iVar.f3848b, predicate));
        }
        return new i((Set) Preconditions.checkNotNull(set), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> filter(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
        if (sortedSet instanceof i) {
            i iVar = (i) sortedSet;
            return new j((SortedSet) iVar.f3847a, Predicates.and(iVar.f3848b, predicate));
        }
        return new j((SortedSet) Preconditions.checkNotNull(sortedSet), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public static <E> NavigableSet<E> filter(NavigableSet<E> navigableSet, Predicate<? super E> predicate) {
        if (navigableSet instanceof i) {
            i iVar = (i) navigableSet;
            return new h((NavigableSet) iVar.f3847a, Predicates.and(iVar.f3848b, predicate));
        }
        return new h((NavigableSet) Preconditions.checkNotNull(navigableSet), (Predicate) Preconditions.checkNotNull(predicate));
    }

    public static class i<E> extends Collections2.a<E> implements Set<E> {
        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }
    }

    public static class j<E> extends i<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f3847a).comparator();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return new j(((SortedSet) this.f3847a).subSet(e, e2), this.f3848b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return new j(((SortedSet) this.f3847a).headSet(e), this.f3848b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return new j(((SortedSet) this.f3847a).tailSet(e), this.f3848b);
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) Iterators.find(this.f3847a.iterator(), this.f3848b);
        }

        public E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.f3847a;
            while (true) {
                E e = (E) sortedSetHeadSet.last();
                if (this.f3848b.apply(e)) {
                    return e;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e);
            }
        }
    }

    @GwtIncompatible
    public static class h<E> extends j<E> implements NavigableSet<E> {
        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return (E) Iterables.find(((NavigableSet) this.f3847a).tailSet(e, true), this.f3848b, null);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.filter(((NavigableSet) this.f3847a).descendingIterator(), this.f3848b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Sets.filter((NavigableSet) ((NavigableSet) this.f3847a).descendingSet(), this.f3848b);
        }

        @Override // java.util.NavigableSet
        @NullableDecl
        public E floor(E e) {
            return (E) Iterators.find(((NavigableSet) this.f3847a).headSet(e, true).descendingIterator(), this.f3848b, null);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return Sets.filter((NavigableSet) ((NavigableSet) this.f3847a).headSet(e, z), this.f3848b);
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return (E) Iterables.find(((NavigableSet) this.f3847a).tailSet(e, false), this.f3848b, null);
        }

        @Override // com.google.common.collect.Sets.j, java.util.SortedSet
        public E last() {
            return (E) Iterators.find(((NavigableSet) this.f3847a).descendingIterator(), this.f3848b);
        }

        @Override // java.util.NavigableSet
        @NullableDecl
        public E lower(E e) {
            return (E) Iterators.find(((NavigableSet) this.f3847a).headSet(e, false).descendingIterator(), this.f3848b, null);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) Iterables.a((NavigableSet) this.f3847a, this.f3848b);
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) Iterables.a(((NavigableSet) this.f3847a).descendingSet(), this.f3848b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return Sets.filter((NavigableSet) ((NavigableSet) this.f3847a).subSet(e, z, e2, z2), this.f3848b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return Sets.filter((NavigableSet) ((NavigableSet) this.f3847a).tailSet(e, z), this.f3848b);
        }
    }

    @SafeVarargs
    public static <B> Set<List<B>> cartesianProduct(Set<? extends B>... setArr) {
        return cartesianProduct(Arrays.asList(setArr));
    }

    public static <B> Set<List<B>> cartesianProduct(List<? extends Set<? extends B>> list) {
        ImmutableList.Builder builder = new ImmutableList.Builder(list.size());
        Iterator<? extends Set<? extends B>> it = list.iterator();
        while (it.hasNext()) {
            ImmutableSet immutableSetCopyOf = ImmutableSet.copyOf((Collection) it.next());
            if (immutableSetCopyOf.isEmpty()) {
                return ImmutableSet.of();
            }
            builder.add((ImmutableList.Builder) immutableSetCopyOf);
        }
        ImmutableList immutableListBuild = builder.build();
        return new f(immutableListBuild, new f0(new l5(immutableListBuild)));
    }

    public static final class f<E> extends ForwardingCollection<List<E>> implements Set<List<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final transient ImmutableList f4102a;

        /* renamed from: b, reason: collision with root package name */
        public final transient f0 f4103b;

        public f(ImmutableList immutableList, f0 f0Var) {
            this.f4102a = immutableList;
            this.f4103b = f0Var;
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<List<E>> delegate() {
            return this.f4103b;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f4102a.equals(((f) obj).f4102a);
            }
            return super.equals(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            ImmutableList immutableList;
            int i = 1;
            int size = size() - 1;
            int i2 = 0;
            while (true) {
                immutableList = this.f4102a;
                if (i2 >= immutableList.size()) {
                    break;
                }
                size = ~(~(size * 31));
                i2++;
            }
            UnmodifiableIterator<E> it = immutableList.iterator();
            while (it.hasNext()) {
                Set set = (Set) it.next();
                i = ~(~((set.hashCode() * (size() / set.size())) + (i * 31)));
            }
            return ~(~(i + size));
        }
    }

    @GwtIncompatible
    public static <E> NavigableSet<E> synchronizedNavigableSet(NavigableSet<E> navigableSet) {
        return new y5.o(navigableSet, null);
    }

    @GwtCompatible(serializable = false)
    public static <E> Set<Set<E>> powerSet(Set<E> set) {
        return new l(set);
    }

    public static final class m<E> extends AbstractSet<E> {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableMap f4106a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4107b;

        public m(int i, ImmutableMap immutableMap) {
            this.f4106a = immutableMap;
            this.f4107b = i;
        }

        public class a extends UnmodifiableIterator<E> {

            /* renamed from: a, reason: collision with root package name */
            public final ImmutableList f4108a;

            /* renamed from: b, reason: collision with root package name */
            public int f4109b;

            public a(m mVar) {
                this.f4108a = mVar.f4106a.keySet().asList();
                this.f4109b = mVar.f4107b;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f4109b != 0;
            }

            @Override // java.util.Iterator
            public E next() {
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(this.f4109b);
                if (iNumberOfTrailingZeros == 32) {
                    throw new NoSuchElementException();
                }
                this.f4109b &= ~(1 << iNumberOfTrailingZeros);
                return this.f4108a.get(iNumberOfTrailingZeros);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Integer.bitCount(this.f4107b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            Integer num = (Integer) this.f4106a.get(obj);
            return (num == null || ((1 << num.intValue()) & this.f4107b) == 0) ? false : true;
        }
    }

    public static final class l<E> extends AbstractSet<Set<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableMap f4105a;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return false;
        }

        public l(Set set) {
            Preconditions.checkArgument(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.f4105a = Maps.e(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return 1 << this.f4105a.size();
        }

        public class a extends com.google.common.collect.c<Set<E>> {
            public a(int i) {
                super(i);
            }

            @Override // com.google.common.collect.c
            public Set<E> get(int i) {
                return new m(i, l.this.f4105a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a(size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            return this.f4105a.keySet().containsAll((Set) obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof l) {
                return this.f4105a.equals(((l) obj).f4105a);
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f4105a.keySet().hashCode() << (r0.size() - 1);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "powerSet(" + this.f4105a + ")";
        }
    }

    @Beta
    public static <E> Set<Set<E>> combinations(Set<E> set, int i2) {
        ImmutableMap immutableMapE = Maps.e(set);
        g0.b(i2, "size");
        Preconditions.checkArgument(i2 <= immutableMapE.size(), "size (%s) must be <= set.size() (%s)", i2, immutableMapE.size());
        if (i2 == 0) {
            return ImmutableSet.of(ImmutableSet.of());
        }
        if (i2 == immutableMapE.size()) {
            return ImmutableSet.of(immutableMapE.keySet());
        }
        return new e(i2, immutableMapE);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    public static class e<E> extends AbstractSet<Set<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4098a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ImmutableMap f4099b;

        public e(int i, ImmutableMap immutableMap) {
            this.f4098a = i;
            this.f4099b = immutableMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                if (set.size() == this.f4098a && this.f4099b.keySet().containsAll(set)) {
                    return true;
                }
            }
            return false;
        }

        public class a extends AbstractIterator<Set<E>> {
            public final BitSet c;

            public a() {
                this.c = new BitSet(e.this.f4099b.size());
            }

            @Override // com.google.common.collect.AbstractIterator
            public Set<E> computeNext() {
                BitSet bitSet = this.c;
                boolean zIsEmpty = bitSet.isEmpty();
                e eVar = e.this;
                if (zIsEmpty) {
                    bitSet.set(0, eVar.f4098a);
                } else {
                    int iNextSetBit = bitSet.nextSetBit(0);
                    int iNextClearBit = bitSet.nextClearBit(iNextSetBit);
                    if (iNextClearBit == eVar.f4099b.size()) {
                        return endOfData();
                    }
                    int i = (iNextClearBit - iNextSetBit) - 1;
                    bitSet.set(0, i);
                    bitSet.clear(i, iNextClearBit);
                    bitSet.set(iNextClearBit);
                }
                return new C0109a((BitSet) bitSet.clone());
            }

            /* renamed from: com.google.common.collect.Sets$e$a$a, reason: collision with other inner class name */
            public class C0109a extends AbstractSet<E> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ BitSet f4100a;

                public C0109a(BitSet bitSet) {
                    this.f4100a = bitSet;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean contains(@NullableDecl Object obj) {
                    Integer num = (Integer) e.this.f4099b.get(obj);
                    return num != null && this.f4100a.get(num.intValue());
                }

                /* renamed from: com.google.common.collect.Sets$e$a$a$a, reason: collision with other inner class name */
                public class C0110a extends AbstractIterator<E> {
                    public int c = -1;

                    public C0110a() {
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    public E computeNext() {
                        C0109a c0109a = C0109a.this;
                        int iNextSetBit = c0109a.f4100a.nextSetBit(this.c + 1);
                        this.c = iNextSetBit;
                        if (iNextSetBit == -1) {
                            return endOfData();
                        }
                        return e.this.f4099b.keySet().asList().get(this.c);
                    }
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<E> iterator() {
                    return new C0110a();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return e.this.f4098a;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IntMath.binomial(this.f4099b.size(), this.f4098a);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "Sets.combinations(" + this.f4099b.keySet() + ", " + this.f4098a + ")";
        }
    }

    public static int b(Set set) {
        Iterator it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = ~(~(i2 + (next != null ? next.hashCode() : 0)));
        }
        return i2;
    }

    public static boolean a(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <E> NavigableSet<E> unmodifiableNavigableSet(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof n)) ? navigableSet : new n(navigableSet);
    }

    public static final class n<E> extends ForwardingSortedSet<E> implements NavigableSet<E>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final NavigableSet f4110a;

        /* renamed from: b, reason: collision with root package name */
        public final SortedSet f4111b;
        public transient n c;

        public n(NavigableSet navigableSet) {
            this.f4110a = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.f4111b = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public SortedSet<E> delegate() {
            return this.f4111b;
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            return (E) this.f4110a.lower(e);
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            return (E) this.f4110a.floor(e);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return (E) this.f4110a.ceiling(e);
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return (E) this.f4110a.higher(e);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            n nVar = this.c;
            if (nVar != null) {
                return nVar;
            }
            n nVar2 = new n(this.f4110a.descendingSet());
            this.c = nVar2;
            nVar2.c = this;
            return nVar2;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.unmodifiableIterator(this.f4110a.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return Sets.unmodifiableNavigableSet(this.f4110a.subSet(e, z, e2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return Sets.unmodifiableNavigableSet(this.f4110a.headSet(e, z));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return Sets.unmodifiableNavigableSet(this.f4110a.tailSet(e, z));
        }
    }

    public static boolean d(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    public static boolean c(Set set, Collection collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return Iterators.removeAll(set.iterator(), collection);
        }
        return d(set, collection.iterator());
    }

    @GwtIncompatible
    public static class g<E> extends ForwardingNavigableSet<E> {

        /* renamed from: a, reason: collision with root package name */
        public final ForwardingNavigableSet f4104a;

        public g(ForwardingNavigableSet forwardingNavigableSet) {
            this.f4104a = forwardingNavigableSet;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public NavigableSet<E> delegate() {
            return this.f4104a;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public E lower(E e) {
            return this.f4104a.higher(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public E floor(E e) {
            return this.f4104a.ceiling(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public E ceiling(E e) {
            return this.f4104a.floor(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public E higher(E e) {
            return this.f4104a.lower(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public E pollFirst() {
            return this.f4104a.pollLast();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public E pollLast() {
            return this.f4104a.pollFirst();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return this.f4104a;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return this.f4104a.iterator();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return this.f4104a.subSet(e2, z2, e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return standardSubSet(e, e2);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return this.f4104a.tailSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return standardHeadSet(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return this.f4104a.headSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return standardTailSet(e);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator = this.f4104a.comparator();
            if (comparator == null) {
                return Ordering.natural().reverse();
            }
            return Ordering.from(comparator).reverse();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public E first() {
            return this.f4104a.last();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public E last() {
            return this.f4104a.first();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f4104a.descendingIterator();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    @GwtIncompatible
    public static <K extends Comparable<? super K>> NavigableSet<K> subSet(NavigableSet<K> navigableSet, Range<K> range) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != Ordering.natural() && range.hasLowerBound() && range.hasUpperBound()) {
            Preconditions.checkArgument(navigableSet.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            Comparable comparableLowerEndpoint = range.lowerEndpoint();
            BoundType boundTypeLowerBoundType = range.lowerBoundType();
            BoundType boundType = BoundType.CLOSED;
            return navigableSet.subSet(comparableLowerEndpoint, boundTypeLowerBoundType == boundType, range.upperEndpoint(), range.upperBoundType() == boundType);
        }
        if (range.hasLowerBound()) {
            return navigableSet.tailSet(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        }
        if (range.hasUpperBound()) {
            return navigableSet.headSet(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        }
        return (NavigableSet) Preconditions.checkNotNull(navigableSet);
    }
}
