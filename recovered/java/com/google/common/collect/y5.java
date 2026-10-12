package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Table;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class y5 {

    public static class r<E> extends i<E> implements RandomAccess {
    }

    private y5() {
    }

    public static class p implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4395a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f4396b;

        public p(Object obj, Object obj2) {
            this.f4395a = Preconditions.checkNotNull(obj);
            this.f4396b = obj2 == null ? this : obj2;
        }

        public String toString() {
            String string;
            synchronized (this.f4396b) {
                string = this.f4395a.toString();
            }
            return string;
        }
    }

    @VisibleForTesting
    public static class f<E> extends p implements Collection<E> {
        public Collection a() {
            return (Collection) this.f4395a;
        }

        @Override // java.util.Collection
        public boolean add(E e) {
            boolean zAdd;
            synchronized (this.f4396b) {
                zAdd = a().add(e);
            }
            return zAdd;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.f4396b) {
                zAddAll = a().addAll(collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection
        public void clear() {
            synchronized (this.f4396b) {
                a().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.f4396b) {
                zContains = a().contains(obj);
            }
            return zContains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean zContainsAll;
            synchronized (this.f4396b) {
                zContainsAll = a().containsAll(collection);
            }
            return zContainsAll;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.f4396b) {
                zIsEmpty = a().isEmpty();
            }
            return zIsEmpty;
        }

        public Iterator<E> iterator() {
            return a().iterator();
        }

        public boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.f4396b) {
                zRemove = a().remove(obj);
            }
            return zRemove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.f4396b) {
                zRemoveAll = a().removeAll(collection);
            }
            return zRemoveAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.f4396b) {
                zRetainAll = a().retainAll(collection);
            }
            return zRetainAll;
        }

        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.f4396b) {
                size = a().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.f4396b) {
                array = a().toArray();
            }
            return array;
        }

        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.f4396b) {
                tArr2 = (T[]) a().toArray(tArr);
            }
            return tArr2;
        }
    }

    public static class i<E> extends f<E> implements List<E> {
        @Override // com.google.common.collect.y5.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final List a() {
            return (List) ((Collection) this.f4395a);
        }

        @Override // java.util.List
        public void add(int i, E e) {
            synchronized (this.f4396b) {
                a().add(i, e);
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.f4396b) {
                zAddAll = a().addAll(i, collection);
            }
            return zAddAll;
        }

        @Override // java.util.List
        public E get(int i) {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().get(i);
            }
            return e;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            synchronized (this.f4396b) {
                iIndexOf = a().indexOf(obj);
            }
            return iIndexOf;
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            synchronized (this.f4396b) {
                iLastIndexOf = a().lastIndexOf(obj);
            }
            return iLastIndexOf;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return a().listIterator();
        }

        @Override // java.util.List
        public ListIterator<E> listIterator(int i) {
            return a().listIterator(i);
        }

        @Override // java.util.List
        public E remove(int i) {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().remove(i);
            }
            return e;
        }

        @Override // java.util.List
        public E set(int i, E e) {
            E e2;
            synchronized (this.f4396b) {
                e2 = (E) a().set(i, e);
            }
            return e2;
        }

        @Override // java.util.List
        public List<E> subList(int i, int i2) {
            List<E> listD;
            synchronized (this.f4396b) {
                listD = y5.d(a().subList(i, i2), this.f4396b);
            }
            return listD;
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f4396b) {
                zEquals = a().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = a().hashCode();
            }
            return iHashCode;
        }
    }

    public static class m<E> extends f<E> implements Multiset<E> {
        public transient Set c;
        public transient Set d;

        @Override // com.google.common.collect.y5.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Multiset a() {
            return (Multiset) ((Collection) this.f4395a);
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            int iCount;
            synchronized (this.f4396b) {
                iCount = a().count(obj);
            }
            return iCount;
        }

        @Override // com.google.common.collect.Multiset
        public int add(E e, int i) {
            int iAdd;
            synchronized (this.f4396b) {
                iAdd = a().add(e, i);
            }
            return iAdd;
        }

        @Override // com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            int iRemove;
            synchronized (this.f4396b) {
                iRemove = a().remove(obj, i);
            }
            return iRemove;
        }

        @Override // com.google.common.collect.Multiset
        public int setCount(E e, int i) {
            int count;
            synchronized (this.f4396b) {
                count = a().setCount(e, i);
            }
            return count;
        }

        @Override // com.google.common.collect.Multiset
        public boolean setCount(E e, int i, int i2) {
            boolean count;
            synchronized (this.f4396b) {
                count = a().setCount(e, i, i2);
            }
            return count;
        }

        @Override // com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set;
            synchronized (this.f4396b) {
                try {
                    if (this.c == null) {
                        this.c = y5.a(a().elementSet(), this.f4396b);
                    }
                    set = this.c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set;
            synchronized (this.f4396b) {
                try {
                    if (this.d == null) {
                        this.d = y5.a(a().entrySet(), this.f4396b);
                    }
                    set = this.d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f4396b) {
                zEquals = a().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = a().hashCode();
            }
            return iHashCode;
        }
    }

    public static class q<E> extends f<E> implements Queue<E> {
        @Override // com.google.common.collect.y5.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Queue a() {
            return (Queue) ((Collection) this.f4395a);
        }

        @Override // java.util.Queue
        public E element() {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().element();
            }
            return e;
        }

        @Override // java.util.Queue
        public boolean offer(E e) {
            boolean zOffer;
            synchronized (this.f4396b) {
                zOffer = a().offer(e);
            }
            return zOffer;
        }

        @Override // java.util.Queue
        public E peek() {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().peek();
            }
            return e;
        }

        @Override // java.util.Queue
        public E poll() {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().poll();
            }
            return e;
        }

        @Override // java.util.Queue
        public E remove() {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().remove();
            }
            return e;
        }
    }

    public static class s<E> extends f<E> implements Set<E> {
        @Override // com.google.common.collect.y5.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Set a() {
            return (Set) ((Collection) this.f4395a);
        }

        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f4396b) {
                zEquals = a().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = a().hashCode();
            }
            return iHashCode;
        }
    }

    public static class v<E> extends s<E> implements SortedSet<E> {
        @Override // com.google.common.collect.y5.s
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public SortedSet a() {
            return (SortedSet) super.a();
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.f4396b) {
                comparator = a().comparator();
            }
            return comparator;
        }

        public SortedSet<E> subSet(E e, E e2) {
            v vVar;
            synchronized (this.f4396b) {
                vVar = new v(a().subSet(e, e2), this.f4396b);
            }
            return vVar;
        }

        public SortedSet<E> headSet(E e) {
            v vVar;
            synchronized (this.f4396b) {
                vVar = new v(a().headSet(e), this.f4396b);
            }
            return vVar;
        }

        public SortedSet<E> tailSet(E e) {
            v vVar;
            synchronized (this.f4396b) {
                vVar = new v(a().tailSet(e), this.f4396b);
            }
            return vVar;
        }

        @Override // java.util.SortedSet
        public E first() {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().first();
            }
            return e;
        }

        @Override // java.util.SortedSet
        public E last() {
            E e;
            synchronized (this.f4396b) {
                e = (E) a().last();
            }
            return e;
        }
    }

    public static List d(List list, Object obj) {
        return list instanceof RandomAccess ? new r(list, obj) : new i(list, obj);
    }

    public static class j<K, V> extends l<K, V> implements ListMultimap<K, V> {
        @Override // com.google.common.collect.y5.l
        public final Multimap a() {
            return (ListMultimap) ((Multimap) this.f4395a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((j<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((j<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> get(K k) {
            List<V> listD;
            synchronized (this.f4396b) {
                listD = y5.d(((ListMultimap) ((Multimap) this.f4395a)).get((ListMultimap) k), this.f4396b);
            }
            return listD;
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> removeAll(Object obj) {
            List<V> listRemoveAll;
            synchronized (this.f4396b) {
                listRemoveAll = ((ListMultimap) ((Multimap) this.f4395a)).removeAll(obj);
            }
            return listRemoveAll;
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            List<V> listReplaceValues;
            synchronized (this.f4396b) {
                listReplaceValues = ((ListMultimap) ((Multimap) this.f4395a)).replaceValues((ListMultimap) k, (Iterable) iterable);
            }
            return listReplaceValues;
        }
    }

    public static class l<K, V> extends p implements Multimap<K, V> {
        public transient Set c;
        public transient Collection d;
        public transient Collection e;
        public transient Map f;

        /* renamed from: g, reason: collision with root package name */
        public transient Object f4393g;

        public Multimap a() {
            return (Multimap) this.f4395a;
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            int size;
            synchronized (this.f4396b) {
                size = a().size();
            }
            return size;
        }

        @Override // com.google.common.collect.Multimap
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.f4396b) {
                zIsEmpty = a().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.f4396b) {
                zContainsKey = a().containsKey(obj);
            }
            return zContainsKey;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.f4396b) {
                zContainsValue = a().containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsEntry(Object obj, Object obj2) {
            boolean zContainsEntry;
            synchronized (this.f4396b) {
                zContainsEntry = a().containsEntry(obj, obj2);
            }
            return zContainsEntry;
        }

        public Collection<V> get(K k) {
            Collection<V> collectionB;
            synchronized (this.f4396b) {
                collectionB = y5.b(this.f4396b, a().get(k));
            }
            return collectionB;
        }

        @Override // com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            boolean zPut;
            synchronized (this.f4396b) {
                zPut = a().put(k, v);
            }
            return zPut;
        }

        @Override // com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            boolean zPutAll;
            synchronized (this.f4396b) {
                zPutAll = a().putAll(k, iterable);
            }
            return zPutAll;
        }

        @Override // com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            boolean zPutAll;
            synchronized (this.f4396b) {
                zPutAll = a().putAll(multimap);
            }
            return zPutAll;
        }

        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Collection<V> collectionReplaceValues;
            synchronized (this.f4396b) {
                collectionReplaceValues = a().replaceValues(k, iterable);
            }
            return collectionReplaceValues;
        }

        @Override // com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            boolean zRemove;
            synchronized (this.f4396b) {
                zRemove = a().remove(obj, obj2);
            }
            return zRemove;
        }

        public Collection<V> removeAll(Object obj) {
            Collection<V> collectionRemoveAll;
            synchronized (this.f4396b) {
                collectionRemoveAll = a().removeAll(obj);
            }
            return collectionRemoveAll;
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            synchronized (this.f4396b) {
                a().clear();
            }
        }

        @Override // com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.f4396b) {
                try {
                    if (this.c == null) {
                        this.c = y5.a(a().keySet(), this.f4396b);
                    }
                    set = this.c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.f4396b) {
                try {
                    if (this.d == null) {
                        this.d = new f(a().values(), this.f4396b);
                    }
                    collection = this.d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }

        @Override // com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.f4396b) {
                try {
                    if (this.e == null) {
                        this.e = y5.b(this.f4396b, a().entries());
                    }
                    collection = this.e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map;
            synchronized (this.f4396b) {
                try {
                    if (this.f == null) {
                        this.f = new b(a().asMap(), this.f4396b);
                    }
                    map = this.f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return map;
        }

        @Override // com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset;
            synchronized (this.f4396b) {
                try {
                    if (this.f4393g == null) {
                        Multiset<K> multisetKeys = a().keys();
                        Object obj = this.f4396b;
                        if (!(multisetKeys instanceof m) && !(multisetKeys instanceof ImmutableMultiset)) {
                            multisetKeys = new m(multisetKeys, obj);
                        }
                        this.f4393g = multisetKeys;
                    }
                    multiset = (Multiset<K>) this.f4393g;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return multiset;
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f4396b) {
                zEquals = a().equals(obj);
            }
            return zEquals;
        }

        @Override // com.google.common.collect.Multimap
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = a().hashCode();
            }
            return iHashCode;
        }
    }

    public static class t<K, V> extends l<K, V> implements SetMultimap<K, V> {
        public transient Set h;

        @Override // com.google.common.collect.y5.l
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public SetMultimap a() {
            return (SetMultimap) ((Multimap) this.f4395a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((t<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((t<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(K k) {
            s sVar;
            synchronized (this.f4396b) {
                sVar = new s(a().get((SetMultimap) k), this.f4396b);
            }
            return sVar;
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            Set<V> setRemoveAll;
            synchronized (this.f4396b) {
                setRemoveAll = a().removeAll(obj);
            }
            return setRemoveAll;
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Set<V> setReplaceValues;
            synchronized (this.f4396b) {
                setReplaceValues = a().replaceValues((SetMultimap) k, (Iterable) iterable);
            }
            return setReplaceValues;
        }

        @Override // com.google.common.collect.y5.l, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.f4396b) {
                try {
                    if (this.h == null) {
                        this.h = new s(a().entries(), this.f4396b);
                    }
                    set = this.h;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }
    }

    public static class w<K, V> extends t<K, V> implements SortedSetMultimap<K, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((w<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Set get(Object obj) {
            return get((w<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((w<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
            return replaceValues((w<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l
        public final Multimap a() {
            return (SortedSetMultimap) super.a();
        }

        @Override // com.google.common.collect.y5.t
        /* renamed from: b */
        public final SetMultimap a() {
            return (SortedSetMultimap) super.a();
        }

        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> get(K k) {
            v vVar;
            synchronized (this.f4396b) {
                vVar = new v(((SortedSetMultimap) super.a()).get((SortedSetMultimap) k), this.f4396b);
            }
            return vVar;
        }

        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> removeAll(Object obj) {
            SortedSet<V> sortedSetRemoveAll;
            synchronized (this.f4396b) {
                sortedSetRemoveAll = ((SortedSetMultimap) super.a()).removeAll(obj);
            }
            return sortedSetRemoveAll;
        }

        @Override // com.google.common.collect.y5.t, com.google.common.collect.y5.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            SortedSet<V> sortedSetReplaceValues;
            synchronized (this.f4396b) {
                sortedSetReplaceValues = ((SortedSetMultimap) super.a()).replaceValues((SortedSetMultimap) k, (Iterable) iterable);
            }
            return sortedSetReplaceValues;
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            Comparator<? super V> comparatorValueComparator;
            synchronized (this.f4396b) {
                comparatorValueComparator = ((SortedSetMultimap) super.a()).valueComparator();
            }
            return comparatorValueComparator;
        }
    }

    public static Collection b(Object obj, Collection collection) {
        if (collection instanceof SortedSet) {
            return new v((SortedSet) collection, obj);
        }
        if (collection instanceof Set) {
            return new s((Set) collection, obj);
        }
        if (!(collection instanceof List)) {
            return new f(collection, obj);
        }
        return d((List) collection, obj);
    }

    public static Set a(Set set, Object obj) {
        return set instanceof SortedSet ? new v((SortedSet) set, obj) : new s(set, obj);
    }

    public static class c<K, V> extends s<Map.Entry<K, Collection<V>>> {

        public class a extends c6<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>> {
            public a(Iterator it) {
                super(it);
            }

            @Override // com.google.common.collect.c6
            public final Object a(Object obj) {
                return new z5(this, (Map.Entry) obj);
            }
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new a(super.iterator());
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public Object[] toArray() {
            Object[] objArr;
            synchronized (this.f4396b) {
                Set setA = a();
                objArr = new Object[setA.size()];
                ObjectArrays.b(setA, objArr);
            }
            return objArr;
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.f4396b) {
                tArr2 = (T[]) ObjectArrays.c(a(), tArr);
            }
            return tArr2;
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.f4396b) {
                Set setA = a();
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Preconditions.checkNotNull(entry);
                    zContains = setA.contains(new x3(entry));
                } else {
                    zContains = false;
                }
            }
            return zContains;
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            boolean zB;
            synchronized (this.f4396b) {
                zB = Collections2.b(a(), collection);
            }
            return zB;
        }

        @Override // com.google.common.collect.y5.s, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            boolean zA;
            if (obj == this) {
                return true;
            }
            synchronized (this.f4396b) {
                zA = Sets.a(a(), obj);
            }
            return zA;
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.f4396b) {
                Set setA = a();
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Preconditions.checkNotNull(entry);
                    zRemove = setA.remove(new x3(entry));
                } else {
                    zRemove = false;
                }
            }
            return zRemove;
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.f4396b) {
                zRemoveAll = Iterators.removeAll(a().iterator(), collection);
            }
            return zRemoveAll;
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.f4396b) {
                zRetainAll = Iterators.retainAll(a().iterator(), collection);
            }
            return zRetainAll;
        }
    }

    @VisibleForTesting
    public static class e<K, V> extends k<K, V> implements BiMap<K, V>, Serializable {
        public transient Set f;

        /* renamed from: g, reason: collision with root package name */
        public transient BiMap f4392g;

        public e(BiMap biMap, Object obj, BiMap biMap2) {
            super(biMap, obj);
            this.f4392g = biMap2;
        }

        @Override // com.google.common.collect.y5.k
        public final Map a() {
            return (BiMap) ((Map) this.f4395a);
        }

        @Override // com.google.common.collect.y5.k, java.util.Map
        public Set<V> values() {
            Set<V> set;
            synchronized (this.f4396b) {
                try {
                    if (this.f == null) {
                        this.f = new s(((BiMap) ((Map) this.f4395a)).values(), this.f4396b);
                    }
                    set = this.f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            V v2;
            synchronized (this.f4396b) {
                v2 = (V) ((BiMap) ((Map) this.f4395a)).forcePut(k, v);
            }
            return v2;
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap;
            synchronized (this.f4396b) {
                try {
                    if (this.f4392g == null) {
                        this.f4392g = new e(((BiMap) ((Map) this.f4395a)).inverse(), this.f4396b, this);
                    }
                    biMap = this.f4392g;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return biMap;
        }
    }

    public static class k<K, V> extends p implements Map<K, V> {
        public transient Set c;
        public transient Collection d;
        public transient Set e;

        public Map a() {
            return (Map) this.f4395a;
        }

        @Override // java.util.Map
        public void clear() {
            synchronized (this.f4396b) {
                a().clear();
            }
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.f4396b) {
                zContainsKey = a().containsKey(obj);
            }
            return zContainsKey;
        }

        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.f4396b) {
                zContainsValue = a().containsValue(obj);
            }
            return zContainsValue;
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.f4396b) {
                try {
                    if (this.e == null) {
                        this.e = new s(a().entrySet(), this.f4396b);
                    }
                    set = this.e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        public V get(Object obj) {
            V v;
            synchronized (this.f4396b) {
                v = (V) a().get(obj);
            }
            return v;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.f4396b) {
                zIsEmpty = a().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.f4396b) {
                try {
                    if (this.c == null) {
                        this.c = new s(a().keySet(), this.f4396b);
                    }
                    set = this.c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // java.util.Map
        public V put(K k, V v) {
            V v2;
            synchronized (this.f4396b) {
                v2 = (V) a().put(k, v);
            }
            return v2;
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.f4396b) {
                a().putAll(map);
            }
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            V v;
            synchronized (this.f4396b) {
                v = (V) a().remove(obj);
            }
            return v;
        }

        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.f4396b) {
                size = a().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.f4396b) {
                try {
                    if (this.d == null) {
                        this.d = new f(a().values(), this.f4396b);
                    }
                    collection = this.d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f4396b) {
                zEquals = a().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = a().hashCode();
            }
            return iHashCode;
        }
    }

    public static class u<K, V> extends k<K, V> implements SortedMap<K, V> {
        @Override // com.google.common.collect.y5.k
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public SortedMap a() {
            return (SortedMap) ((Map) this.f4395a);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.f4396b) {
                comparator = a().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K k;
            synchronized (this.f4396b) {
                k = (K) a().firstKey();
            }
            return k;
        }

        public SortedMap<K, V> headMap(K k) {
            u uVar;
            synchronized (this.f4396b) {
                uVar = new u(a().headMap(k), this.f4396b);
            }
            return uVar;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K k;
            synchronized (this.f4396b) {
                k = (K) a().lastKey();
            }
            return k;
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            u uVar;
            synchronized (this.f4396b) {
                uVar = new u(a().subMap(k, k2), this.f4396b);
            }
            return uVar;
        }

        public SortedMap<K, V> tailMap(K k) {
            u uVar;
            synchronized (this.f4396b) {
                uVar = new u(a().tailMap(k), this.f4396b);
            }
            return uVar;
        }
    }

    public static class b<K, V> extends k<K, Collection<V>> {
        public transient Set f;

        /* renamed from: g, reason: collision with root package name */
        public transient Collection f4389g;

        @Override // com.google.common.collect.y5.k, java.util.Map
        public Collection<V> get(Object obj) {
            Collection<V> collectionB;
            synchronized (this.f4396b) {
                Collection collection = (Collection) super.get(obj);
                collectionB = collection == null ? null : y5.b(this.f4396b, collection);
            }
            return collectionB;
        }

        @Override // com.google.common.collect.y5.k, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.f4396b) {
                try {
                    if (this.f == null) {
                        this.f = new c(((Map) this.f4395a).entrySet(), this.f4396b);
                    }
                    set = this.f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.google.common.collect.y5.k, java.util.Map
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.f4396b) {
                try {
                    if (this.f4389g == null) {
                        this.f4389g = new d(((Map) this.f4395a).values(), this.f4396b);
                    }
                    collection = this.f4389g;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }

        @Override // com.google.common.collect.y5.k, java.util.Map
        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }
    }

    public static class d<V> extends f<Collection<V>> {

        public class a extends c6<Collection<V>, Collection<V>> {
            public a(Iterator it) {
                super(it);
            }

            @Override // com.google.common.collect.c6
            public final Object a(Object obj) {
                return y5.b(d.this.f4396b, (Collection) obj);
            }
        }

        @Override // com.google.common.collect.y5.f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Collection<V>> iterator() {
            return new a(super.iterator());
        }
    }

    @GwtIncompatible
    @VisibleForTesting
    public static class o<E> extends v<E> implements NavigableSet<E> {
        public transient NavigableSet c;

        @Override // com.google.common.collect.y5.v, com.google.common.collect.y5.s, com.google.common.collect.y5.f
        public final Collection a() {
            return (NavigableSet) super.a();
        }

        @Override // com.google.common.collect.y5.v, com.google.common.collect.y5.s
        /* renamed from: b */
        public final Set a() {
            return (NavigableSet) super.a();
        }

        @Override // com.google.common.collect.y5.v
        /* renamed from: c */
        public final SortedSet a() {
            return (NavigableSet) super.a();
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return ((NavigableSet) super.a()).descendingIterator();
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            E e2;
            synchronized (this.f4396b) {
                e2 = (E) ((NavigableSet) super.a()).ceiling(e);
            }
            return e2;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            synchronized (this.f4396b) {
                try {
                    NavigableSet<E> navigableSet = this.c;
                    if (navigableSet != null) {
                        return navigableSet;
                    }
                    o oVar = new o(((NavigableSet) super.a()).descendingSet(), this.f4396b);
                    this.c = oVar;
                    return oVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            E e2;
            synchronized (this.f4396b) {
                e2 = (E) ((NavigableSet) super.a()).floor(e);
            }
            return e2;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            o oVar;
            synchronized (this.f4396b) {
                oVar = new o(((NavigableSet) super.a()).headSet(e, z), this.f4396b);
            }
            return oVar;
        }

        @Override // com.google.common.collect.y5.v, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> headSet(E e) {
            return headSet(e, false);
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            E e2;
            synchronized (this.f4396b) {
                e2 = (E) ((NavigableSet) super.a()).higher(e);
            }
            return e2;
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            E e2;
            synchronized (this.f4396b) {
                e2 = (E) ((NavigableSet) super.a()).lower(e);
            }
            return e2;
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((NavigableSet) super.a()).pollFirst();
            }
            return e;
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((NavigableSet) super.a()).pollLast();
            }
            return e;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            o oVar;
            synchronized (this.f4396b) {
                oVar = new o(((NavigableSet) super.a()).subSet(e, z, e2, z2), this.f4396b);
            }
            return oVar;
        }

        @Override // com.google.common.collect.y5.v, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> subSet(E e, E e2) {
            return subSet(e, true, e2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            o oVar;
            synchronized (this.f4396b) {
                oVar = new o(((NavigableSet) super.a()).tailSet(e, z), this.f4396b);
            }
            return oVar;
        }

        @Override // com.google.common.collect.y5.v, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> tailSet(E e) {
            return tailSet(e, true);
        }
    }

    @GwtIncompatible
    @VisibleForTesting
    public static class n<K, V> extends u<K, V> implements NavigableMap<K, V> {
        public transient NavigableSet f;

        /* renamed from: g, reason: collision with root package name */
        public transient NavigableMap f4394g;
        public transient NavigableSet h;

        @Override // com.google.common.collect.y5.u, com.google.common.collect.y5.k
        public final Map a() {
            return (NavigableMap) super.a();
        }

        @Override // com.google.common.collect.y5.u
        /* renamed from: b */
        public final SortedMap a() {
            return (NavigableMap) super.a();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).ceilingEntry(k), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            K k2;
            synchronized (this.f4396b) {
                k2 = (K) ((NavigableMap) super.a()).ceilingKey(k);
            }
            return k2;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            synchronized (this.f4396b) {
                try {
                    NavigableSet<K> navigableSet = this.f;
                    if (navigableSet != null) {
                        return navigableSet;
                    }
                    o oVar = new o(((NavigableMap) super.a()).descendingKeySet(), this.f4396b);
                    this.f = oVar;
                    return oVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            synchronized (this.f4396b) {
                try {
                    NavigableMap<K, V> navigableMap = this.f4394g;
                    if (navigableMap != null) {
                        return navigableMap;
                    }
                    n nVar = new n(((NavigableMap) super.a()).descendingMap(), this.f4396b);
                    this.f4394g = nVar;
                    return nVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).firstEntry(), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).floorEntry(k), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            K k2;
            synchronized (this.f4396b) {
                k2 = (K) ((NavigableMap) super.a()).floorKey(k);
            }
            return k2;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            n nVar;
            synchronized (this.f4396b) {
                nVar = new n(((NavigableMap) super.a()).headMap(k, z), this.f4396b);
            }
            return nVar;
        }

        @Override // com.google.common.collect.y5.u, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).higherEntry(k), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            K k2;
            synchronized (this.f4396b) {
                k2 = (K) ((NavigableMap) super.a()).higherKey(k);
            }
            return k2;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).lastEntry(), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).lowerEntry(k), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            K k2;
            synchronized (this.f4396b) {
                k2 = (K) ((NavigableMap) super.a()).lowerKey(k);
            }
            return k2;
        }

        @Override // com.google.common.collect.y5.k, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            synchronized (this.f4396b) {
                try {
                    NavigableSet<K> navigableSet = this.h;
                    if (navigableSet != null) {
                        return navigableSet;
                    }
                    o oVar = new o(((NavigableMap) super.a()).navigableKeySet(), this.f4396b);
                    this.h = oVar;
                    return oVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).pollFirstEntry(), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> entryC;
            synchronized (this.f4396b) {
                entryC = y5.c(((NavigableMap) super.a()).pollLastEntry(), this.f4396b);
            }
            return entryC;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            n nVar;
            synchronized (this.f4396b) {
                nVar = new n(((NavigableMap) super.a()).subMap(k, z, k2, z2), this.f4396b);
            }
            return nVar;
        }

        @Override // com.google.common.collect.y5.u, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            n nVar;
            synchronized (this.f4396b) {
                nVar = new n(((NavigableMap) super.a()).tailMap(k, z), this.f4396b);
            }
            return nVar;
        }

        @Override // com.google.common.collect.y5.u, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    public static Map.Entry c(Map.Entry entry, Object obj) {
        if (entry == null) {
            return null;
        }
        return new h(entry, obj);
    }

    @GwtIncompatible
    public static class h<K, V> extends p implements Map.Entry<K, V> {
        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean zEquals;
            synchronized (this.f4396b) {
                zEquals = ((Map.Entry) this.f4395a).equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = ((Map.Entry) this.f4395a).hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            K k;
            synchronized (this.f4396b) {
                k = (K) ((Map.Entry) this.f4395a).getKey();
            }
            return k;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            V v;
            synchronized (this.f4396b) {
                v = (V) ((Map.Entry) this.f4395a).getValue();
            }
            return v;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2;
            synchronized (this.f4396b) {
                v2 = (V) ((Map.Entry) this.f4395a).setValue(v);
            }
            return v2;
        }
    }

    public static final class g<E> extends q<E> implements Deque<E> {
        @Override // com.google.common.collect.y5.q, com.google.common.collect.y5.f
        public final Collection a() {
            return (Deque) super.a();
        }

        @Override // com.google.common.collect.y5.q
        /* renamed from: b */
        public final Queue a() {
            return (Deque) super.a();
        }

        @Override // java.util.Deque
        public void addFirst(E e) {
            synchronized (this.f4396b) {
                ((Deque) super.a()).addFirst(e);
            }
        }

        @Override // java.util.Deque
        public void addLast(E e) {
            synchronized (this.f4396b) {
                ((Deque) super.a()).addLast(e);
            }
        }

        @Override // java.util.Deque
        public boolean offerFirst(E e) {
            boolean zOfferFirst;
            synchronized (this.f4396b) {
                zOfferFirst = ((Deque) super.a()).offerFirst(e);
            }
            return zOfferFirst;
        }

        @Override // java.util.Deque
        public boolean offerLast(E e) {
            boolean zOfferLast;
            synchronized (this.f4396b) {
                zOfferLast = ((Deque) super.a()).offerLast(e);
            }
            return zOfferLast;
        }

        @Override // java.util.Deque
        public E removeFirst() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).removeFirst();
            }
            return e;
        }

        @Override // java.util.Deque
        public E removeLast() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).removeLast();
            }
            return e;
        }

        @Override // java.util.Deque
        public E pollFirst() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).pollFirst();
            }
            return e;
        }

        @Override // java.util.Deque
        public E pollLast() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).pollLast();
            }
            return e;
        }

        @Override // java.util.Deque
        public E getFirst() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).getFirst();
            }
            return e;
        }

        @Override // java.util.Deque
        public E getLast() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).getLast();
            }
            return e;
        }

        @Override // java.util.Deque
        public E peekFirst() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).peekFirst();
            }
            return e;
        }

        @Override // java.util.Deque
        public E peekLast() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).peekLast();
            }
            return e;
        }

        @Override // java.util.Deque
        public boolean removeFirstOccurrence(Object obj) {
            boolean zRemoveFirstOccurrence;
            synchronized (this.f4396b) {
                zRemoveFirstOccurrence = ((Deque) super.a()).removeFirstOccurrence(obj);
            }
            return zRemoveFirstOccurrence;
        }

        @Override // java.util.Deque
        public boolean removeLastOccurrence(Object obj) {
            boolean zRemoveLastOccurrence;
            synchronized (this.f4396b) {
                zRemoveLastOccurrence = ((Deque) super.a()).removeLastOccurrence(obj);
            }
            return zRemoveLastOccurrence;
        }

        @Override // java.util.Deque
        public void push(E e) {
            synchronized (this.f4396b) {
                ((Deque) super.a()).push(e);
            }
        }

        @Override // java.util.Deque
        public E pop() {
            E e;
            synchronized (this.f4396b) {
                e = (E) ((Deque) super.a()).pop();
            }
            return e;
        }

        @Override // java.util.Deque
        public Iterator<E> descendingIterator() {
            Iterator<E> itDescendingIterator;
            synchronized (this.f4396b) {
                itDescendingIterator = ((Deque) super.a()).descendingIterator();
            }
            return itDescendingIterator;
        }
    }

    public static final class x<R, C, V> extends p implements Table<R, C, V> {
        @Override // com.google.common.collect.Table
        public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
            boolean zContains;
            synchronized (this.f4396b) {
                zContains = ((Table) this.f4395a).contains(obj, obj2);
            }
            return zContains;
        }

        @Override // com.google.common.collect.Table
        public boolean containsRow(@NullableDecl Object obj) {
            boolean zContainsRow;
            synchronized (this.f4396b) {
                zContainsRow = ((Table) this.f4395a).containsRow(obj);
            }
            return zContainsRow;
        }

        @Override // com.google.common.collect.Table
        public boolean containsColumn(@NullableDecl Object obj) {
            boolean zContainsColumn;
            synchronized (this.f4396b) {
                zContainsColumn = ((Table) this.f4395a).containsColumn(obj);
            }
            return zContainsColumn;
        }

        @Override // com.google.common.collect.Table
        public boolean containsValue(@NullableDecl Object obj) {
            boolean zContainsValue;
            synchronized (this.f4396b) {
                zContainsValue = ((Table) this.f4395a).containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // com.google.common.collect.Table
        public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
            V v;
            synchronized (this.f4396b) {
                v = (V) ((Table) this.f4395a).get(obj, obj2);
            }
            return v;
        }

        @Override // com.google.common.collect.Table
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.f4396b) {
                zIsEmpty = ((Table) this.f4395a).isEmpty();
            }
            return zIsEmpty;
        }

        @Override // com.google.common.collect.Table
        public int size() {
            int size;
            synchronized (this.f4396b) {
                size = ((Table) this.f4395a).size();
            }
            return size;
        }

        @Override // com.google.common.collect.Table
        public void clear() {
            synchronized (this.f4396b) {
                ((Table) this.f4395a).clear();
            }
        }

        @Override // com.google.common.collect.Table
        public V put(@NullableDecl R r, @NullableDecl C c, @NullableDecl V v) {
            V v2;
            synchronized (this.f4396b) {
                v2 = (V) ((Table) this.f4395a).put(r, c, v);
            }
            return v2;
        }

        @Override // com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
            synchronized (this.f4396b) {
                ((Table) this.f4395a).putAll(table);
            }
        }

        @Override // com.google.common.collect.Table
        public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
            V v;
            synchronized (this.f4396b) {
                v = (V) ((Table) this.f4395a).remove(obj, obj2);
            }
            return v;
        }

        @Override // com.google.common.collect.Table
        public Map<C, V> row(@NullableDecl R r) {
            k kVar;
            synchronized (this.f4396b) {
                kVar = new k(((Table) this.f4395a).row(r), this.f4396b);
            }
            return kVar;
        }

        @Override // com.google.common.collect.Table
        public Map<R, V> column(@NullableDecl C c) {
            k kVar;
            synchronized (this.f4396b) {
                kVar = new k(((Table) this.f4395a).column(c), this.f4396b);
            }
            return kVar;
        }

        @Override // com.google.common.collect.Table
        public Set<Table.Cell<R, C, V>> cellSet() {
            s sVar;
            synchronized (this.f4396b) {
                sVar = new s(((Table) this.f4395a).cellSet(), this.f4396b);
            }
            return sVar;
        }

        @Override // com.google.common.collect.Table
        public Set<R> rowKeySet() {
            s sVar;
            synchronized (this.f4396b) {
                sVar = new s(((Table) this.f4395a).rowKeySet(), this.f4396b);
            }
            return sVar;
        }

        @Override // com.google.common.collect.Table
        public Set<C> columnKeySet() {
            s sVar;
            synchronized (this.f4396b) {
                sVar = new s(((Table) this.f4395a).columnKeySet(), this.f4396b);
            }
            return sVar;
        }

        @Override // com.google.common.collect.Table
        public Collection<V> values() {
            f fVar;
            synchronized (this.f4396b) {
                fVar = new f(((Table) this.f4395a).values(), this.f4396b);
            }
            return fVar;
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V>> rowMap() {
            k kVar;
            synchronized (this.f4396b) {
                kVar = new k(Maps.transformValues(((Table) this.f4395a).rowMap(), new a()), this.f4396b);
            }
            return kVar;
        }

        public class a implements Function<Map<C, V>, Map<C, V>> {
            public a() {
            }

            @Override // com.google.common.base.Function
            public Map<C, V> apply(Map<C, V> map) {
                return new k(map, x.this.f4396b);
            }
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V>> columnMap() {
            k kVar;
            synchronized (this.f4396b) {
                kVar = new k(Maps.transformValues(((Table) this.f4395a).columnMap(), new b()), this.f4396b);
            }
            return kVar;
        }

        public class b implements Function<Map<R, V>, Map<R, V>> {
            public b() {
            }

            @Override // com.google.common.base.Function
            public Map<R, V> apply(Map<R, V> map) {
                return new k(map, x.this.f4396b);
            }
        }

        @Override // com.google.common.collect.Table
        public int hashCode() {
            int iHashCode;
            synchronized (this.f4396b) {
                iHashCode = ((Table) this.f4395a).hashCode();
            }
            return iHashCode;
        }

        @Override // com.google.common.collect.Table
        public boolean equals(@NullableDecl Object obj) {
            boolean zEquals;
            if (this == obj) {
                return true;
            }
            synchronized (this.f4396b) {
                zEquals = ((Table) this.f4395a).equals(obj);
            }
            return zEquals;
        }
    }
}
