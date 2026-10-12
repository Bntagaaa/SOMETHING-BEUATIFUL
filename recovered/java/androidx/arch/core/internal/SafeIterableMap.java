package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a, reason: collision with root package name */
    public c f524a;

    /* renamed from: b, reason: collision with root package name */
    public c f525b;
    public final WeakHashMap c = new WeakHashMap();
    public int d = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static abstract class SupportRemove<K, V> {
        public abstract void supportRemove(c cVar);
    }

    @Nullable
    public c<K, V> get(K k) {
        c<K, V> cVar = this.f524a;
        while (cVar != null && !cVar.f528a.equals(k)) {
            cVar = cVar.c;
        }
        return cVar;
    }

    public V putIfAbsent(@NonNull K k, @NonNull V v) {
        c<K, V> cVar = get(k);
        if (cVar != null) {
            return (V) cVar.f529b;
        }
        c cVar2 = new c(k, v);
        this.d++;
        c cVar3 = this.f525b;
        if (cVar3 == null) {
            this.f524a = cVar2;
            this.f525b = cVar2;
            return null;
        }
        cVar3.c = cVar2;
        cVar2.d = cVar3;
        this.f525b = cVar2;
        return null;
    }

    public V remove(@NonNull K k) {
        c<K, V> cVar = get(k);
        if (cVar == null) {
            return null;
        }
        this.d--;
        WeakHashMap weakHashMap = this.c;
        if (!weakHashMap.isEmpty()) {
            Iterator<K> it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SupportRemove) it.next()).supportRemove(cVar);
            }
        }
        c cVar2 = cVar.d;
        if (cVar2 != null) {
            cVar2.c = cVar.c;
        } else {
            this.f524a = cVar.c;
        }
        c cVar3 = cVar.c;
        if (cVar3 != null) {
            cVar3.d = cVar2;
        } else {
            this.f525b = cVar2;
        }
        cVar.c = null;
        cVar.d = null;
        return (V) cVar.f529b;
    }

    public int size() {
        return this.d;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f524a, this.f525b);
        this.c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    @NonNull
    public Iterator<Map.Entry<K, V>> descendingIterator() {
        b bVar = new b(this.f525b, this.f524a);
        this.c.put(bVar, Boolean.FALSE);
        return bVar;
    }

    @NonNull
    public SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions() {
        SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = new IteratorWithAdditions();
        this.c.put(iteratorWithAdditions, Boolean.FALSE);
        return iteratorWithAdditions;
    }

    @Nullable
    public Map.Entry<K, V> eldest() {
        return this.f524a;
    }

    @Nullable
    public Map.Entry<K, V> newest() {
        return this.f525b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (size() != safeIterableMap.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = safeIterableMap.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static abstract class d<K, V> extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public c f530a;

        /* renamed from: b, reason: collision with root package name */
        public c f531b;

        public abstract c a(c cVar);

        public abstract c b(c cVar);

        public d(c cVar, c cVar2) {
            this.f530a = cVar2;
            this.f531b = cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f531b != null;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public void supportRemove(@NonNull c<K, V> cVar) {
            c cVarB = null;
            if (this.f530a == cVar && cVar == this.f531b) {
                this.f531b = null;
                this.f530a = null;
            }
            c<K, V> cVar2 = this.f530a;
            if (cVar2 == cVar) {
                this.f530a = a(cVar2);
            }
            c<K, V> cVar3 = this.f531b;
            if (cVar3 == cVar) {
                c<K, V> cVar4 = this.f530a;
                if (cVar3 != cVar4 && cVar4 != null) {
                    cVarB = b(cVar3);
                }
                this.f531b = cVarB;
            }
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            c cVar = this.f531b;
            c cVar2 = this.f530a;
            this.f531b = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
            return cVar;
        }
    }

    public static class a<K, V> extends d<K, V> {
        @Override // androidx.arch.core.internal.SafeIterableMap.d
        public final c b(c cVar) {
            return cVar.c;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.d
        public final c a(c cVar) {
            return cVar.d;
        }
    }

    public static class b<K, V> extends d<K, V> {
        @Override // androidx.arch.core.internal.SafeIterableMap.d
        public final c b(c cVar) {
            return cVar.d;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.d
        public final c a(c cVar) {
            return cVar.c;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public class IteratorWithAdditions extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public c f526a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f527b = true;

        public IteratorWithAdditions() {
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void supportRemove(c cVar) {
            c cVar2 = this.f526a;
            if (cVar == cVar2) {
                c cVar3 = cVar2.d;
                this.f526a = cVar3;
                this.f527b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f527b) {
                return SafeIterableMap.this.f524a != null;
            }
            c cVar = this.f526a;
            return (cVar == null || cVar.c == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (this.f527b) {
                this.f527b = false;
                this.f526a = SafeIterableMap.this.f524a;
            } else {
                c cVar = this.f526a;
                this.f526a = cVar != null ? cVar.c : null;
            }
            return this.f526a;
        }
    }

    public static class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f528a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f529b;
        public c c;
        public c d;

        public c(Object obj, Object obj2) {
            this.f528a = obj;
            this.f529b = obj2;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return (K) this.f528a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return (V) this.f529b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f528a + "=" + this.f529b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f528a.equals(cVar.f528a) && this.f529b.equals(cVar.f529b);
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f528a.hashCode() ^ this.f529b.hashCode();
        }
    }
}
