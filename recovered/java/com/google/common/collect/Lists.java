package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Lists {

    public static class e<E> extends a<E> implements RandomAccess {
    }

    public static class f<T> extends d<T> implements RandomAccess {
    }

    public static class g<T> extends h<T> implements RandomAccess {
    }

    private Lists() {
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList() {
        return new ArrayList<>();
    }

    @SafeVarargs
    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(E... eArr) {
        Preconditions.checkNotNull(eArr);
        int length = eArr.length;
        g0.b(length, "arraySize");
        ArrayList<E> arrayList = new ArrayList<>(Ints.saturatedCast(length + 5 + (length / 10)));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            return new ArrayList<>((Collection) iterable);
        }
        return newArrayList(iterable.iterator());
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(Iterator<? extends E> it) {
        ArrayList<E> arrayListNewArrayList = newArrayList();
        Iterators.addAll(arrayListNewArrayList, it);
        return arrayListNewArrayList;
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayListWithCapacity(int i2) {
        g0.b(i2, "initialArraySize");
        return new ArrayList<>(i2);
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayListWithExpectedSize(int i2) {
        g0.b(i2, "arraySize");
        return new ArrayList<>(Ints.saturatedCast(i2 + 5 + (i2 / 10)));
    }

    @GwtCompatible(serializable = true)
    public static <E> LinkedList<E> newLinkedList() {
        return new LinkedList<>();
    }

    @GwtCompatible(serializable = true)
    public static <E> LinkedList<E> newLinkedList(Iterable<? extends E> iterable) {
        LinkedList<E> linkedListNewLinkedList = newLinkedList();
        Iterables.addAll(linkedListNewLinkedList, iterable);
        return linkedListNewLinkedList;
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList() {
        return new CopyOnWriteArrayList<>();
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList(Iterable<? extends E> iterable) {
        Collection collectionNewArrayList;
        if (!(iterable instanceof Collection)) {
            collectionNewArrayList = newArrayList(iterable);
        } else {
            collectionNewArrayList = (Collection) iterable;
        }
        return new CopyOnWriteArrayList<>(collectionNewArrayList);
    }

    public static <E> List<E> asList(@NullableDecl E e2, E[] eArr) {
        return new c(e2, eArr);
    }

    public static <E> List<E> asList(@NullableDecl E e2, @NullableDecl E e3, E[] eArr) {
        return new l(e2, e3, eArr);
    }

    public static class c<E> extends AbstractList<E> implements Serializable, RandomAccess {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3979a;

        /* renamed from: b, reason: collision with root package name */
        public final Object[] f3980b;

        public c(Object obj, Object[] objArr) {
            this.f3979a = obj;
            this.f3980b = (Object[]) Preconditions.checkNotNull(objArr);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.saturatedAdd(this.f3980b.length, 1);
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, size());
            if (i == 0) {
                return (E) this.f3979a;
            }
            return (E) this.f3980b[i - 1];
        }
    }

    public static class l<E> extends AbstractList<E> implements Serializable, RandomAccess {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3993a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f3994b;
        public final Object[] c;

        public l(Object obj, Object obj2, Object[] objArr) {
            this.f3993a = obj;
            this.f3994b = obj2;
            this.c = (Object[]) Preconditions.checkNotNull(objArr);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.saturatedAdd(this.c.length, 2);
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return (E) this.f3993a;
            }
            if (i == 1) {
                return (E) this.f3994b;
            }
            Preconditions.checkElementIndex(i, size());
            return (E) this.c[i - 2];
        }
    }

    public static <B> List<List<B>> cartesianProduct(List<? extends List<? extends B>> list) {
        int i2 = f0.c;
        ImmutableList.Builder builder = new ImmutableList.Builder(list.size());
        Iterator<? extends List<? extends B>> it = list.iterator();
        while (it.hasNext()) {
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) it.next());
            if (immutableListCopyOf.isEmpty()) {
                return ImmutableList.of();
            }
            builder.add((ImmutableList.Builder) immutableListCopyOf);
        }
        return new f0(builder.build());
    }

    @SafeVarargs
    public static <B> List<List<B>> cartesianProduct(List<? extends B>... listArr) {
        return cartesianProduct(Arrays.asList(listArr));
    }

    public static <F, T> List<T> transform(List<F> list, Function<? super F, ? extends T> function) {
        return list instanceof RandomAccess ? new j(list, function) : new k(list, function);
    }

    public static class k<F, T> extends AbstractSequentialList<T> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final List f3990a;

        /* renamed from: b, reason: collision with root package name */
        public final Function f3991b;

        public k(List list, Function function) {
            this.f3990a = (List) Preconditions.checkNotNull(list);
            this.f3991b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f3990a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3990a.size();
        }

        public class a extends d6<F, T> {
            public a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // com.google.common.collect.c6
            public final Object a(Object obj) {
                return k.this.f3991b.apply(obj);
            }
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new a(this.f3990a.listIterator(i));
        }
    }

    public static class j<F, T> extends AbstractList<T> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final List f3987a;

        /* renamed from: b, reason: collision with root package name */
        public final Function f3988b;

        public j(List list, Function function) {
            this.f3987a = (List) Preconditions.checkNotNull(list);
            this.f3988b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f3987a.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return (T) this.f3988b.apply(this.f3987a.get(i));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        public class a extends d6<F, T> {
            public a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // com.google.common.collect.c6
            public final Object a(Object obj) {
                return j.this.f3988b.apply(obj);
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new a(this.f3987a.listIterator(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f3987a.isEmpty();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return (T) this.f3988b.apply(this.f3987a.remove(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3987a.size();
        }
    }

    public static <T> List<List<T>> partition(List<T> list, int i2) {
        Preconditions.checkNotNull(list);
        Preconditions.checkArgument(i2 > 0);
        if (!(list instanceof RandomAccess)) {
            return new d(list, i2);
        }
        return new f(list, i2);
    }

    public static class d<T> extends AbstractList<List<T>> {

        /* renamed from: a, reason: collision with root package name */
        public final List f3981a;

        /* renamed from: b, reason: collision with root package name */
        public final int f3982b;

        public d(List list, int i) {
            this.f3981a = list;
            this.f3982b = i;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> get(int i) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f3982b;
            int i3 = i * i2;
            List list = this.f3981a;
            return list.subList(i3, Math.min(i2 + i3, list.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.divide(this.f3981a.size(), this.f3982b, RoundingMode.CEILING);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f3981a.isEmpty();
        }
    }

    public static ImmutableList<Character> charactersOf(String str) {
        return new i((String) Preconditions.checkNotNull(str));
    }

    @Beta
    public static List<Character> charactersOf(CharSequence charSequence) {
        return new b((CharSequence) Preconditions.checkNotNull(charSequence));
    }

    public static final class i extends ImmutableList<Character> {
        public final String c;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return false;
        }

        public i(String str) {
            this.c = str;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(@NullableDecl Object obj) {
            if (!(obj instanceof Character)) {
                return -1;
            }
            return this.c.indexOf(((Character) obj).charValue());
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(@NullableDecl Object obj) {
            if (!(obj instanceof Character)) {
                return -1;
            }
            return this.c.lastIndexOf(((Character) obj).charValue());
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<Character> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return Lists.charactersOf(this.c.substring(i, i2));
        }

        @Override // java.util.List
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.c.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c.length();
        }
    }

    public static final class b extends AbstractList<Character> {

        /* renamed from: a, reason: collision with root package name */
        public final CharSequence f3978a;

        public b(CharSequence charSequence) {
            this.f3978a = charSequence;
        }

        @Override // java.util.AbstractList, java.util.List
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.f3978a.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3978a.length();
        }
    }

    public static <T> List<T> reverse(List<T> list) {
        if (list instanceof ImmutableList) {
            return ((ImmutableList) list).reverse();
        }
        if (!(list instanceof h)) {
            if (!(list instanceof RandomAccess)) {
                return new h(list);
            }
            return new g(list);
        }
        return ((h) list).f3984a;
    }

    public static class h<T> extends AbstractList<T> {

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f3983b = 0;

        /* renamed from: a, reason: collision with root package name */
        public final List f3984a;

        public h(List list) {
            this.f3984a = (List) Preconditions.checkNotNull(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            int size = size();
            Preconditions.checkElementIndex(i, size);
            return (T) this.f3984a.get((size - 1) - i);
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            int size = size();
            Preconditions.checkElementIndex(i, size);
            return (T) this.f3984a.remove((size - 1) - i);
        }

        @Override // java.util.AbstractList, java.util.List
        public T set(int i, @NullableDecl T t) {
            int size = size();
            Preconditions.checkElementIndex(i, size);
            return (T) this.f3984a.set((size - 1) - i, t);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, @NullableDecl T t) {
            int size = size();
            Preconditions.checkPositionIndex(i, size);
            this.f3984a.add(size - i, t);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            int size = size();
            Preconditions.checkPositionIndex(i, size);
            return new a(this.f3984a.listIterator(size - i));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f3984a.clear();
        }

        @Override // java.util.AbstractList
        public void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3984a.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            int size = size();
            Preconditions.checkPositionIndex(i2, size);
            int i3 = size - i2;
            int size2 = size();
            Preconditions.checkPositionIndex(i, size2);
            return Lists.reverse(this.f3984a.subList(i3, size2 - i));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        public class a implements ListIterator<T> {

            /* renamed from: a, reason: collision with root package name */
            public boolean f3985a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ListIterator f3986b;

            public a(ListIterator listIterator) {
                this.f3986b = listIterator;
            }

            @Override // java.util.ListIterator
            public void add(T t) {
                ListIterator listIterator = this.f3986b;
                listIterator.add(t);
                listIterator.previous();
                this.f3985a = false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f3986b.hasPrevious();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f3986b.hasNext();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f3985a = true;
                return (T) this.f3986b.previous();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                int iNextIndex = this.f3986b.nextIndex();
                int i = h.f3983b;
                int size = h.this.size();
                Preconditions.checkPositionIndex(iNextIndex, size);
                return size - iNextIndex;
            }

            @Override // java.util.ListIterator
            public T previous() {
                if (!hasPrevious()) {
                    throw new NoSuchElementException();
                }
                this.f3985a = true;
                return (T) this.f3986b.next();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return nextIndex() - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                g0.e(this.f3985a);
                this.f3986b.remove();
                this.f3985a = false;
            }

            @Override // java.util.ListIterator
            public void set(T t) {
                Preconditions.checkState(this.f3985a);
                this.f3986b.set(t);
            }
        }
    }

    public static boolean a(List list, Object obj) {
        if (obj == Preconditions.checkNotNull(list)) {
            return true;
        }
        if (obj instanceof List) {
            List list2 = (List) obj;
            int size = list.size();
            if (size == list2.size()) {
                if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
                    return Iterators.elementsEqual(list.iterator(), list2.iterator());
                }
                for (int i2 = 0; i2 < size; i2++) {
                    if (Objects.equal(list.get(i2), list2.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static int b(List list, Object obj) {
        if (!(list instanceof RandomAccess)) {
            ListIterator listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                if (Objects.equal(obj, listIterator.next())) {
                    return listIterator.previousIndex();
                }
            }
            return -1;
        }
        int size = list.size();
        int i2 = 0;
        if (obj == null) {
            while (i2 < size) {
                if (list.get(i2) == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        while (i2 < size) {
            if (obj.equals(list.get(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int c(List list, Object obj) {
        if (!(list instanceof RandomAccess)) {
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (Objects.equal(obj, listIterator.previous())) {
                    return listIterator.nextIndex();
                }
            }
            return -1;
        }
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static class a<E> extends AbstractList<E> {

        /* renamed from: a, reason: collision with root package name */
        public final List f3977a;

        public a(ForwardingList forwardingList) {
            this.f3977a = (List) Preconditions.checkNotNull(forwardingList);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, E e) {
            this.f3977a.add(i, e);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            return this.f3977a.addAll(i, collection);
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            return (E) this.f3977a.get(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public E remove(int i) {
            return (E) this.f3977a.remove(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int i, E e) {
            return (E) this.f3977a.set(i, e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f3977a.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3977a.size();
        }
    }
}
