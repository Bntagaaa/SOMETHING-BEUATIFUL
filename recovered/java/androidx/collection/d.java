package androidx.collection;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
abstract class d<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public b f561a;

    /* renamed from: b, reason: collision with root package name */
    public c f562b;
    public e c;

    public abstract void colClear();

    public abstract Object colGetEntry(int i, int i2);

    public abstract Map<K, V> colGetMap();

    public abstract int colGetSize();

    public abstract int colIndexOfKey(Object obj);

    public abstract int colIndexOfValue(Object obj);

    public abstract void colPut(K k, V v);

    public abstract void colRemoveAt(int i);

    public abstract V colSetValue(int i, V v);

    public final class a<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public final int f563a;

        /* renamed from: b, reason: collision with root package name */
        public int f564b;
        public int c;
        public boolean d = false;

        public a(int i) {
            this.f563a = i;
            this.f564b = d.this.colGetSize();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c < this.f564b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) d.this.colGetEntry(this.c, this.f563a);
            this.c++;
            this.d = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.d) {
                throw new IllegalStateException();
            }
            int i = this.c - 1;
            this.c = i;
            this.f564b--;
            this.d = false;
            d.this.colRemoveAt(i);
        }
    }

    /* renamed from: androidx.collection.d$d, reason: collision with other inner class name */
    public final class C0006d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public int f567a;
        public boolean c = false;

        /* renamed from: b, reason: collision with root package name */
        public int f568b = -1;

        public C0006d() {
            this.f567a = d.this.colGetSize() - 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f568b < this.f567a;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f568b++;
            this.c = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.c) {
                throw new IllegalStateException();
            }
            d.this.colRemoveAt(this.f568b);
            this.f568b--;
            this.f567a--;
            this.c = false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (K) d.this.colGetEntry(this.f568b, 0);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) d.this.colGetEntry(this.f568b, 1);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) d.this.colSetValue(this.f568b, v);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                int i = this.f568b;
                d dVar = d.this;
                if (androidx.collection.c.equal(key, dVar.colGetEntry(i, 0)) && androidx.collection.c.equal(entry.getValue(), dVar.colGetEntry(this.f568b, 1))) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            int i = this.f568b;
            d dVar = d.this;
            Object objColGetEntry = dVar.colGetEntry(i, 0);
            Object objColGetEntry2 = dVar.colGetEntry(this.f568b, 1);
            return (objColGetEntry == null ? 0 : objColGetEntry.hashCode()) ^ (objColGetEntry2 != null ? objColGetEntry2.hashCode() : 0);
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class b implements Set<Map.Entry<K, V>> {
        public b() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            d dVar = d.this;
            int iColGetSize = dVar.colGetSize();
            for (Map.Entry<K, V> entry : collection) {
                dVar.colPut(entry.getKey(), entry.getValue());
            }
            return iColGetSize != dVar.colGetSize();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            d.this.colClear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            d dVar = d.this;
            int iColIndexOfKey = dVar.colIndexOfKey(key);
            if (iColIndexOfKey < 0) {
                return false;
            }
            return androidx.collection.c.equal(dVar.colGetEntry(iColIndexOfKey, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return d.this.colGetSize() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C0006d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return d.this.colGetSize();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return d.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            d dVar = d.this;
            int iHashCode = 0;
            for (int iColGetSize = dVar.colGetSize() - 1; iColGetSize >= 0; iColGetSize--) {
                Object objColGetEntry = dVar.colGetEntry(iColGetSize, 0);
                Object objColGetEntry2 = dVar.colGetEntry(iColGetSize, 1);
                iHashCode += (objColGetEntry == null ? 0 : objColGetEntry.hashCode()) ^ (objColGetEntry2 == null ? 0 : objColGetEntry2.hashCode());
            }
            return iHashCode;
        }
    }

    public final class c implements Set<K> {
        public c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            d.this.colClear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return d.this.colIndexOfKey(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return d.containsAllHelper(d.this.colGetMap(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return d.this.colGetSize() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            d dVar = d.this;
            int iColIndexOfKey = dVar.colIndexOfKey(obj);
            if (iColIndexOfKey < 0) {
                return false;
            }
            dVar.colRemoveAt(iColIndexOfKey);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return d.removeAllHelper(d.this.colGetMap(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return d.retainAllHelper(d.this.colGetMap(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return d.this.colGetSize();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return d.this.toArrayHelper(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) d.this.toArrayHelper(tArr, 0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return d.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            d dVar = d.this;
            int iHashCode = 0;
            for (int iColGetSize = dVar.colGetSize() - 1; iColGetSize >= 0; iColGetSize--) {
                Object objColGetEntry = dVar.colGetEntry(iColGetSize, 0);
                iHashCode += objColGetEntry == null ? 0 : objColGetEntry.hashCode();
            }
            return iHashCode;
        }
    }

    public final class e implements Collection<V> {
        public e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            d.this.colClear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return d.this.colIndexOfValue(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return d.this.colGetSize() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            d dVar = d.this;
            int iColIndexOfValue = dVar.colIndexOfValue(obj);
            if (iColIndexOfValue < 0) {
                return false;
            }
            dVar.colRemoveAt(iColIndexOfValue);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            d dVar = d.this;
            int iColGetSize = dVar.colGetSize();
            int i = 0;
            boolean z = false;
            while (i < iColGetSize) {
                if (collection.contains(dVar.colGetEntry(i, 1))) {
                    dVar.colRemoveAt(i);
                    i--;
                    iColGetSize--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            d dVar = d.this;
            int iColGetSize = dVar.colGetSize();
            int i = 0;
            boolean z = false;
            while (i < iColGetSize) {
                if (!collection.contains(dVar.colGetEntry(i, 1))) {
                    dVar.colRemoveAt(i);
                    i--;
                    iColGetSize--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return d.this.colGetSize();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return d.this.toArrayHelper(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) d.this.toArrayHelper(tArr, 1);
        }
    }

    public static <K, V> boolean containsAllHelper(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean removeAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean retainAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public Object[] toArrayHelper(int i) {
        int iColGetSize = colGetSize();
        Object[] objArr = new Object[iColGetSize];
        for (int i2 = 0; i2 < iColGetSize; i2++) {
            objArr[i2] = colGetEntry(i2, i);
        }
        return objArr;
    }

    public <T> T[] toArrayHelper(T[] tArr, int i) {
        int iColGetSize = colGetSize();
        if (tArr.length < iColGetSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iColGetSize));
        }
        for (int i2 = 0; i2 < iColGetSize; i2++) {
            tArr[i2] = colGetEntry(i2, i);
        }
        if (tArr.length > iColGetSize) {
            tArr[iColGetSize] = null;
        }
        return tArr;
    }

    public static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
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

    public Set<Map.Entry<K, V>> getEntrySet() {
        if (this.f561a == null) {
            this.f561a = new b();
        }
        return this.f561a;
    }

    public Set<K> getKeySet() {
        if (this.f562b == null) {
            this.f562b = new c();
        }
        return this.f562b;
    }

    public Collection<V> getValues() {
        if (this.c == null) {
            this.c = new e();
        }
        return this.c;
    }
}
