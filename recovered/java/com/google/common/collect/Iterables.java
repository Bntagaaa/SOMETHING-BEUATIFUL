package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Iterables {
    private Iterables() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> unmodifiableIterable(Iterable<? extends T> iterable) {
        Preconditions.checkNotNull(iterable);
        return ((iterable instanceof j) || (iterable instanceof ImmutableCollection)) ? iterable : new j(iterable);
    }

    @Deprecated
    public static <E> Iterable<E> unmodifiableIterable(ImmutableCollection<E> immutableCollection) {
        return (Iterable) Preconditions.checkNotNull(immutableCollection);
    }

    public static final class j<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final Iterable f3939b;

        public j(Iterable iterable) {
            this.f3939b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.unmodifiableIterator(this.f3939b.iterator());
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.f3939b.toString();
        }
    }

    public static int size(Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return Iterators.size(iterable.iterator());
    }

    public static boolean contains(Iterable<?> iterable, @NullableDecl Object obj) {
        if (iterable instanceof Collection) {
            return Collections2.c(obj, (Collection) iterable);
        }
        return Iterators.contains(iterable.iterator(), obj);
    }

    @CanIgnoreReturnValue
    public static boolean removeAll(Iterable<?> iterable, Collection<?> collection) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).removeAll((Collection) Preconditions.checkNotNull(collection));
        }
        return Iterators.removeAll(iterable.iterator(), collection);
    }

    @CanIgnoreReturnValue
    public static boolean retainAll(Iterable<?> iterable, Collection<?> collection) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).retainAll((Collection) Preconditions.checkNotNull(collection));
        }
        return Iterators.retainAll(iterable.iterator(), collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CanIgnoreReturnValue
    public static <T> boolean removeIf(Iterable<T> iterable, Predicate<? super T> predicate) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            List list = (List) iterable;
            Predicate predicate2 = (Predicate) Preconditions.checkNotNull(predicate);
            int i2 = 0;
            int i3 = 0;
            while (i2 < list.size()) {
                Object obj = list.get(i2);
                if (!predicate2.apply(obj)) {
                    if (i2 > i3) {
                        try {
                            list.set(i3, obj);
                        } catch (IllegalArgumentException unused) {
                            b(list, predicate2, i3, i2);
                            return true;
                        } catch (UnsupportedOperationException unused2) {
                            b(list, predicate2, i3, i2);
                            return true;
                        }
                    }
                    i3++;
                }
                i2++;
            }
            list.subList(i3, list.size()).clear();
            return i2 != i3;
        }
        return Iterators.removeIf(iterable.iterator(), predicate);
    }

    public static void b(List list, Predicate predicate, int i2, int i3) {
        for (int size = list.size() - 1; size > i3; size--) {
            if (predicate.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            list.remove(i4);
        }
    }

    public static Object a(Iterable iterable, Predicate predicate) {
        Preconditions.checkNotNull(predicate);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (predicate.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    public static boolean elementsEqual(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return Iterators.elementsEqual(iterable.iterator(), iterable2.iterator());
    }

    public static String toString(Iterable<?> iterable) {
        return Iterators.toString(iterable.iterator());
    }

    public static <T> T getOnlyElement(Iterable<T> iterable) {
        return (T) Iterators.getOnlyElement(iterable.iterator());
    }

    @NullableDecl
    public static <T> T getOnlyElement(Iterable<? extends T> iterable, @NullableDecl T t) {
        return (T) Iterators.getOnlyElement(iterable.iterator(), t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public static <T> T[] toArray(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) (iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator())).toArray(ObjectArrays.newArray(cls, 0));
    }

    @CanIgnoreReturnValue
    public static <T> boolean addAll(Collection<T> collection, Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        return Iterators.addAll(collection, ((Iterable) Preconditions.checkNotNull(iterable)).iterator());
    }

    public static int frequency(Iterable<?> iterable, @NullableDecl Object obj) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).count(obj);
        }
        if (iterable instanceof Set) {
            return ((Set) iterable).contains(obj) ? 1 : 0;
        }
        return Iterators.frequency(iterable.iterator(), obj);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class a<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3928b;

        public a(Iterable iterable) {
            this.f3928b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.cycle(this.f3928b);
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.f3928b.toString() + " (cycled)";
        }
    }

    public static <T> Iterable<T> cycle(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new a(iterable);
    }

    @SafeVarargs
    public static <T> Iterable<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return FluentIterable.concat(iterable, iterable2);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return FluentIterable.concat(iterable, iterable2, iterable3);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return FluentIterable.concat(iterable, iterable2, iterable3, iterable4);
    }

    @SafeVarargs
    public static <T> Iterable<T> concat(Iterable<? extends T>... iterableArr) {
        return FluentIterable.concat(iterableArr);
    }

    public static <T> Iterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        return FluentIterable.concat(iterable);
    }

    public static <T> Iterable<List<T>> partition(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 > 0);
        return new b(iterable, i2);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class b<T> extends FluentIterable<List<T>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3929b;
        public final /* synthetic */ int c;

        public b(Iterable iterable, int i) {
            this.f3929b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return Iterators.partition(this.f3929b.iterator(), this.c);
        }
    }

    public static <T> Iterable<List<T>> paddedPartition(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 > 0);
        return new c(iterable, i2);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class c<T> extends FluentIterable<List<T>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3930b;
        public final /* synthetic */ int c;

        public c(Iterable iterable, int i) {
            this.f3930b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return Iterators.paddedPartition(this.f3930b.iterator(), this.c);
        }
    }

    public static <T> Iterable<T> filter(Iterable<T> iterable, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(predicate);
        return new d(iterable, predicate);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class d<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3931b;
        public final /* synthetic */ Predicate c;

        public d(Iterable iterable, Predicate predicate) {
            this.f3931b = iterable;
            this.c = predicate;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.filter(this.f3931b.iterator(), this.c);
        }
    }

    @GwtIncompatible
    public static <T> Iterable<T> filter(Iterable<?> iterable, Class<T> cls) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(cls);
        return filter(iterable, Predicates.instanceOf(cls));
    }

    public static <T> boolean any(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.any(iterable.iterator(), predicate);
    }

    public static <T> boolean all(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.all(iterable.iterator(), predicate);
    }

    public static <T> T find(Iterable<T> iterable, Predicate<? super T> predicate) {
        return (T) Iterators.find(iterable.iterator(), predicate);
    }

    @NullableDecl
    public static <T> T find(Iterable<? extends T> iterable, Predicate<? super T> predicate, @NullableDecl T t) {
        return (T) Iterators.find(iterable.iterator(), predicate, t);
    }

    public static <T> Optional<T> tryFind(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.tryFind(iterable.iterator(), predicate);
    }

    public static <T> int indexOf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.indexOf(iterable.iterator(), predicate);
    }

    public static <F, T> Iterable<T> transform(Iterable<F> iterable, Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(function);
        return new e(iterable, function);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class e<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3932b;
        public final /* synthetic */ Function c;

        public e(Iterable iterable, Function function) {
            this.f3932b = iterable;
            this.c = function;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.f3932b.iterator(), this.c);
        }
    }

    public static <T> T get(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof List) {
            return (T) ((List) iterable).get(i2);
        }
        return (T) Iterators.get(iterable.iterator(), i2);
    }

    @NullableDecl
    public static <T> T get(Iterable<? extends T> iterable, int i2, @NullableDecl T t) {
        Preconditions.checkNotNull(iterable);
        Iterators.a(i2);
        if (!(iterable instanceof List)) {
            Iterator<? extends T> it = iterable.iterator();
            Iterators.advance(it, i2);
            return (T) Iterators.getNext(it, t);
        }
        List list = (List) iterable;
        return i2 < list.size() ? (T) list.get(i2) : t;
    }

    @NullableDecl
    public static <T> T getFirst(Iterable<? extends T> iterable, @NullableDecl T t) {
        return (T) Iterators.getNext(iterable.iterator(), t);
    }

    public static <T> T getLast(Iterable<T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return (T) list.get(list.size() - 1);
        }
        return (T) Iterators.getLast(iterable.iterator());
    }

    @NullableDecl
    public static <T> T getLast(Iterable<? extends T> iterable, @NullableDecl T t) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t;
            }
            if (iterable instanceof List) {
                return (T) ((List) iterable).get(r1.size() - 1);
            }
        }
        return (T) Iterators.getLast(iterable.iterator(), t);
    }

    public static <T> Iterable<T> skip(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 >= 0, "number to skip cannot be negative");
        return new f(iterable, i2);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class f<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3933b;
        public final /* synthetic */ int c;

        public f(Iterable iterable, int i) {
            this.f3933b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f3933b;
            boolean z = iterable instanceof List;
            int i = this.c;
            if (z) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), i), list.size()).iterator();
            }
            Iterator<T> it = iterable.iterator();
            Iterators.advance(it, i);
            return new a(it);
        }

        public class a implements Iterator<T> {

            /* renamed from: a, reason: collision with root package name */
            public boolean f3934a = true;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Iterator f3935b;

            public a(Iterator it) {
                this.f3935b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f3935b.hasNext();
            }

            @Override // java.util.Iterator
            public T next() {
                T t = (T) this.f3935b.next();
                this.f3934a = false;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                g0.e(!this.f3934a);
                this.f3935b.remove();
            }
        }
    }

    public static <T> Iterable<T> limit(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 >= 0, "limit is negative");
        return new g(iterable, i2);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class g<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3936b;
        public final /* synthetic */ int c;

        public g(Iterable iterable, int i) {
            this.f3936b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.limit(this.f3936b.iterator(), this.c);
        }
    }

    public static <T> Iterable<T> consumingIterable(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new h(iterable);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class h<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3937b;

        public h(Iterable iterable) {
            this.f3937b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f3937b;
            return iterable instanceof Queue ? new u0((Queue) iterable) : Iterators.consumingIterator(iterable.iterator());
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return "Iterables.consumingIterable(...)";
        }
    }

    public static boolean isEmpty(Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).isEmpty();
        }
        return !iterable.iterator().hasNext();
    }

    @Beta
    public static <T> Iterable<T> mergeSorted(Iterable<? extends Iterable<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterables");
        Preconditions.checkNotNull(comparator, "comparator");
        return new j(new i(iterable, comparator));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class i<T> extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Iterable f3938b;
        public final /* synthetic */ Comparator c;

        public i(Iterable iterable, Comparator comparator) {
            this.f3938b = iterable;
            this.c = comparator;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.mergeSorted(Iterables.transform(this.f3938b, new b3()), this.c);
        }
    }
}
