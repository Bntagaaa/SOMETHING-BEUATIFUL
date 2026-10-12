package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class FluentIterable<E> implements Iterable<E> {

    /* renamed from: a, reason: collision with root package name */
    public final Optional f3867a;

    public FluentIterable() {
        this.f3867a = Optional.absent();
    }

    public FluentIterable(Iterable iterable) {
        Preconditions.checkNotNull(iterable);
        this.f3867a = Optional.fromNullable(this == iterable ? null : iterable);
    }

    public final Iterable b() {
        return (Iterable) this.f3867a.or((Optional) this);
    }

    public static <E> FluentIterable<E> from(Iterable<E> iterable) {
        return iterable instanceof FluentIterable ? (FluentIterable) iterable : new a(iterable, iterable);
    }

    public static class a extends FluentIterable<E> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3868b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f3868b = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f3868b.iterator();
        }
    }

    @Beta
    public static <E> FluentIterable<E> from(E[] eArr) {
        return from(Arrays.asList(eArr));
    }

    @Deprecated
    public static <E> FluentIterable<E> from(FluentIterable<E> fluentIterable) {
        return (FluentIterable) Preconditions.checkNotNull(fluentIterable);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return a(iterable, iterable2);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return a(iterable, iterable2, iterable3);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return a(iterable, iterable2, iterable3, iterable4);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T>... iterableArr) {
        return a((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class b<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3869b;

        public b(Iterable iterable) {
            this.f3869b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.concat(Iterators.transform(this.f3869b.iterator(), new b3()));
        }
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new b(iterable);
    }

    public static FluentIterable a(Iterable... iterableArr) {
        for (Iterable iterable : iterableArr) {
            Preconditions.checkNotNull(iterable);
        }
        return new w1(iterableArr);
    }

    @Beta
    public static <E> FluentIterable<E> of() {
        return from(ImmutableList.of());
    }

    @Beta
    public static <E> FluentIterable<E> of(@NullableDecl E e, E... eArr) {
        return from(Lists.asList(e, eArr));
    }

    public String toString() {
        return Iterables.toString(b());
    }

    public final int size() {
        return Iterables.size(b());
    }

    public final boolean contains(@NullableDecl Object obj) {
        return Iterables.contains(b(), obj);
    }

    public final FluentIterable<E> cycle() {
        return from(Iterables.cycle(b()));
    }

    @Beta
    public final FluentIterable<E> append(Iterable<? extends E> iterable) {
        return concat(b(), iterable);
    }

    @Beta
    public final FluentIterable<E> append(E... eArr) {
        return concat(b(), Arrays.asList(eArr));
    }

    public final FluentIterable<E> filter(Predicate<? super E> predicate) {
        return from(Iterables.filter(b(), predicate));
    }

    @GwtIncompatible
    public final <T> FluentIterable<T> filter(Class<T> cls) {
        return from(Iterables.filter((Iterable<?>) b(), cls));
    }

    public final boolean anyMatch(Predicate<? super E> predicate) {
        return Iterables.any(b(), predicate);
    }

    public final boolean allMatch(Predicate<? super E> predicate) {
        return Iterables.all(b(), predicate);
    }

    public final Optional<E> firstMatch(Predicate<? super E> predicate) {
        return Iterables.tryFind(b(), predicate);
    }

    public final <T> FluentIterable<T> transform(Function<? super E, T> function) {
        return from(Iterables.transform(b(), function));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> FluentIterable<T> transformAndConcat(Function<? super E, ? extends Iterable<? extends T>> function) {
        return concat(transform(function));
    }

    public final Optional<E> first() {
        Iterator it = b().iterator();
        return it.hasNext() ? Optional.of(it.next()) : Optional.absent();
    }

    public final Optional<E> last() {
        Object next;
        Iterable iterableB = b();
        if (iterableB instanceof List) {
            List list = (List) iterableB;
            if (list.isEmpty()) {
                return Optional.absent();
            }
            return Optional.of(list.get(list.size() - 1));
        }
        Iterator it = iterableB.iterator();
        if (!it.hasNext()) {
            return Optional.absent();
        }
        if (iterableB instanceof SortedSet) {
            return Optional.of(((SortedSet) iterableB).last());
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return Optional.of(next);
    }

    public final FluentIterable<E> skip(int i) {
        return from(Iterables.skip(b(), i));
    }

    public final FluentIterable<E> limit(int i) {
        return from(Iterables.limit(b(), i));
    }

    public final boolean isEmpty() {
        return !b().iterator().hasNext();
    }

    public final ImmutableList<E> toList() {
        return ImmutableList.copyOf(b());
    }

    public final ImmutableList<E> toSortedList(Comparator<? super E> comparator) {
        return Ordering.from(comparator).immutableSortedCopy(b());
    }

    public final ImmutableSet<E> toSet() {
        return ImmutableSet.copyOf(b());
    }

    public final ImmutableSortedSet<E> toSortedSet(Comparator<? super E> comparator) {
        return ImmutableSortedSet.copyOf(comparator, b());
    }

    public final ImmutableMultiset<E> toMultiset() {
        return ImmutableMultiset.copyOf(b());
    }

    public final <V> ImmutableMap<E, V> toMap(Function<? super E, V> function) {
        return Maps.toMap(b(), function);
    }

    public final <K> ImmutableListMultimap<K, E> index(Function<? super E, K> function) {
        return Multimaps.index(b(), function);
    }

    public final <K> ImmutableMap<K, E> uniqueIndex(Function<? super E, K> function) {
        return Maps.uniqueIndex(b(), function);
    }

    @GwtIncompatible
    public final E[] toArray(Class<E> cls) {
        return (E[]) Iterables.toArray(b(), cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CanIgnoreReturnValue
    public final <C extends Collection<? super E>> C copyInto(C c2) {
        Preconditions.checkNotNull(c2);
        Iterable iterableB = b();
        if (iterableB instanceof Collection) {
            c2.addAll((Collection) iterableB);
            return c2;
        }
        Iterator it = iterableB.iterator();
        while (it.hasNext()) {
            c2.add(it.next());
        }
        return c2;
    }

    @Beta
    public final String join(Joiner joiner) {
        return joiner.join(this);
    }

    public final E get(int i) {
        return (E) Iterables.get(b(), i);
    }

    public static class c<E> implements Function<Iterable<E>, FluentIterable<E>> {
        private c() {
        }

        @Override // com.google.common.base.Function
        public FluentIterable<E> apply(Iterable<E> iterable) {
            return FluentIterable.from(iterable);
        }
    }
}
