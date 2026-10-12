package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class LinkedListMultimap<K, V> extends l<K, V> implements ListMultimap<K, V>, Serializable {
    public transient d f;

    /* renamed from: g, reason: collision with root package name */
    public transient d f3964g;
    public final transient Map h;
    public transient int i;
    public transient int j;

    public class a extends AbstractSequentialList<V> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f3965a;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            c cVar = (c) LinkedListMultimap.this.h.get(this.f3965a);
            if (cVar == null) {
                return 0;
            }
            return cVar.c;
        }

        public a(Object obj) {
            this.f3965a = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            return new f(this.f3965a, i);
        }
    }

    public class b implements Iterator<K> {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f3967a;

        /* renamed from: b, reason: collision with root package name */
        public d f3968b;
        public d c;
        public int d;

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (LinkedListMultimap.this.j == this.d) {
                return this.f3968b != null;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public K next() {
            d dVar;
            if (LinkedListMultimap.this.j != this.d) {
                throw new ConcurrentModificationException();
            }
            d dVar2 = this.f3968b;
            if (dVar2 == null) {
                throw new NoSuchElementException();
            }
            this.c = dVar2;
            Object obj = dVar2.f3971a;
            HashSet hashSet = this.f3967a;
            hashSet.add(obj);
            do {
                dVar = this.f3968b.c;
                this.f3968b = dVar;
                if (dVar == null) {
                    break;
                }
            } while (!hashSet.add(dVar.f3971a));
            return (K) this.c.f3971a;
        }

        @Override // java.util.Iterator
        public void remove() {
            LinkedListMultimap linkedListMultimap = LinkedListMultimap.this;
            if (linkedListMultimap.j != this.d) {
                throw new ConcurrentModificationException();
            }
            g0.e(this.c != null);
            Object obj = this.c.f3971a;
            linkedListMultimap.getClass();
            Iterators.b(new f(obj));
            this.c = null;
            this.d = linkedListMultimap.j;
        }

        public b() {
            this.f3967a = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.f3968b = LinkedListMultimap.this.f;
            this.d = LinkedListMultimap.this.j;
        }
    }

    public class e implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public int f3973a;

        /* renamed from: b, reason: collision with root package name */
        public d f3974b;
        public d c;
        public d d;
        public int e;

        public final void a() {
            if (LinkedListMultimap.this.j != this.e) {
                throw new ConcurrentModificationException();
            }
        }

        public e(int i) {
            this.e = LinkedListMultimap.this.j;
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(i, size);
            if (i >= size / 2) {
                this.d = LinkedListMultimap.this.f3964g;
                this.f3973a = size;
                while (true) {
                    int i2 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i2;
                }
            } else {
                this.f3974b = LinkedListMultimap.this.f;
                while (true) {
                    int i3 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i3;
                }
            }
            this.c = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f3974b != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @CanIgnoreReturnValue
        public d<K, V> next() {
            a();
            d<K, V> dVar = this.f3974b;
            if (dVar == null) {
                throw new NoSuchElementException();
            }
            this.c = dVar;
            this.d = dVar;
            this.f3974b = dVar.c;
            this.f3973a++;
            return dVar;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            a();
            g0.e(this.c != null);
            d dVar = this.c;
            if (dVar != this.f3974b) {
                this.d = dVar.d;
                this.f3973a--;
            } else {
                this.f3974b = dVar.c;
            }
            LinkedListMultimap linkedListMultimap = LinkedListMultimap.this;
            LinkedListMultimap.g(linkedListMultimap, dVar);
            this.c = null;
            this.e = linkedListMultimap.j;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            a();
            return this.d != null;
        }

        @Override // java.util.ListIterator
        @CanIgnoreReturnValue
        public d<K, V> previous() {
            a();
            d<K, V> dVar = this.d;
            if (dVar == null) {
                throw new NoSuchElementException();
            }
            this.c = dVar;
            this.f3974b = dVar;
            this.d = dVar.d;
            this.f3973a--;
            return dVar;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f3973a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f3973a - 1;
        }

        @Override // java.util.ListIterator
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((LinkedListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((LinkedListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.l
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static void g(LinkedListMultimap linkedListMultimap, d dVar) {
        linkedListMultimap.getClass();
        d dVar2 = dVar.d;
        if (dVar2 != null) {
            dVar2.c = dVar.c;
        } else {
            linkedListMultimap.f = dVar.c;
        }
        d dVar3 = dVar.c;
        if (dVar3 != null) {
            dVar3.d = dVar2;
        } else {
            linkedListMultimap.f3964g = dVar2;
        }
        d dVar4 = dVar.f;
        Map map = linkedListMultimap.h;
        Object obj = dVar.f3971a;
        if (dVar4 == null && dVar.e == null) {
            ((c) map.remove(obj)).c = 0;
            linkedListMultimap.j++;
        } else {
            c cVar = (c) map.get(obj);
            cVar.c--;
            d dVar5 = dVar.f;
            if (dVar5 == null) {
                cVar.f3969a = dVar.e;
            } else {
                dVar5.e = dVar.e;
            }
            d dVar6 = dVar.e;
            if (dVar6 == null) {
                cVar.f3970b = dVar5;
            } else {
                dVar6.f = dVar5;
            }
        }
        linkedListMultimap.i--;
    }

    public static final class d<K, V> extends k<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3971a;

        /* renamed from: b, reason: collision with root package name */
        public Object f3972b;
        public d c;
        public d d;
        public d e;
        public d f;

        public d(Object obj, Object obj2) {
            this.f3971a = obj;
            this.f3972b = obj2;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public K getKey() {
            return (K) this.f3971a;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V getValue() {
            return (V) this.f3972b;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V setValue(@NullableDecl V v) {
            V v2 = (V) this.f3972b;
            this.f3972b = v;
            return v2;
        }
    }

    public static class c<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public d f3969a;

        /* renamed from: b, reason: collision with root package name */
        public d f3970b;
        public int c;

        public c(d dVar) {
            this.f3969a = dVar;
            this.f3970b = dVar;
            dVar.f = null;
            dVar.e = null;
            this.c = 1;
        }
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i) {
        return new LinkedListMultimap<>(i);
    }

    public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        LinkedListMultimap<K, V> linkedListMultimap = new LinkedListMultimap<>(multimap.keySet().size());
        linkedListMultimap.putAll(multimap);
        return linkedListMultimap;
    }

    public LinkedListMultimap() {
        this(12);
    }

    public LinkedListMultimap(int i) {
        this.h = k0.createWithExpectedSize(i);
    }

    public final d h(Object obj, Object obj2, d dVar) {
        d dVar2 = new d(obj, obj2);
        d dVar3 = this.f;
        Map map = this.h;
        if (dVar3 == null) {
            this.f3964g = dVar2;
            this.f = dVar2;
            map.put(obj, new c(dVar2));
            this.j++;
        } else if (dVar == null) {
            d dVar4 = this.f3964g;
            dVar4.c = dVar2;
            dVar2.d = dVar4;
            this.f3964g = dVar2;
            c cVar = (c) map.get(obj);
            if (cVar == null) {
                map.put(obj, new c(dVar2));
                this.j++;
            } else {
                cVar.c++;
                d dVar5 = cVar.f3970b;
                dVar5.e = dVar2;
                dVar2.f = dVar5;
                cVar.f3970b = dVar2;
            }
        } else {
            ((c) map.get(obj)).c++;
            dVar2.d = dVar.d;
            dVar2.f = dVar.f;
            dVar2.c = dVar;
            dVar2.e = dVar;
            d dVar6 = dVar.f;
            if (dVar6 == null) {
                ((c) map.get(obj)).f3969a = dVar2;
            } else {
                dVar6.e = dVar2;
            }
            d dVar7 = dVar.d;
            if (dVar7 == null) {
                this.f = dVar2;
            } else {
                dVar7.c = dVar2;
            }
            dVar.d = dVar2;
            dVar.f = dVar2;
        }
        this.i++;
        return dVar2;
    }

    public class f implements ListIterator<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3975a;

        /* renamed from: b, reason: collision with root package name */
        public int f3976b;
        public d c;
        public d d;
        public d e;

        public f(Object obj) {
            this.f3975a = obj;
            c cVar = (c) LinkedListMultimap.this.h.get(obj);
            this.c = cVar == null ? null : cVar.f3969a;
        }

        public f(@NullableDecl Object obj, int i) {
            c cVar = (c) LinkedListMultimap.this.h.get(obj);
            int i2 = cVar == null ? 0 : cVar.c;
            Preconditions.checkPositionIndex(i, i2);
            if (i >= i2 / 2) {
                this.e = cVar == null ? null : cVar.f3970b;
                this.f3976b = i2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            } else {
                this.c = cVar == null ? null : cVar.f3969a;
                while (true) {
                    int i4 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i4;
                }
            }
            this.f3975a = obj;
            this.d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.c != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @CanIgnoreReturnValue
        public V next() {
            d dVar = this.c;
            if (dVar == null) {
                throw new NoSuchElementException();
            }
            this.d = dVar;
            this.e = dVar;
            this.c = dVar.e;
            this.f3976b++;
            return (V) dVar.f3972b;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.e != null;
        }

        @Override // java.util.ListIterator
        @CanIgnoreReturnValue
        public V previous() {
            d dVar = this.e;
            if (dVar == null) {
                throw new NoSuchElementException();
            }
            this.d = dVar;
            this.c = dVar;
            this.e = dVar.f;
            this.f3976b--;
            return (V) dVar.f3972b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f3976b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f3976b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            g0.e(this.d != null);
            d dVar = this.d;
            if (dVar != this.c) {
                this.e = dVar.f;
                this.f3976b--;
            } else {
                this.c = dVar.e;
            }
            LinkedListMultimap.g(LinkedListMultimap.this, dVar);
            this.d = null;
        }

        @Override // java.util.ListIterator
        public void set(V v) {
            Preconditions.checkState(this.d != null);
            this.d.f3972b = v;
        }

        @Override // java.util.ListIterator
        public void add(V v) {
            this.e = LinkedListMultimap.this.h(this.f3975a, v, this.c);
            this.f3976b++;
            this.d = null;
        }
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.i;
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public boolean isEmpty() {
        return this.f == null;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@NullableDecl Object obj) {
        return this.h.containsKey(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public boolean put(@NullableDecl K k, @NullableDecl V v) {
        h(k, v, null);
        return true;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public List<V> removeAll(@NullableDecl Object obj) {
        List<V> listUnmodifiableList = Collections.unmodifiableList(Lists.newArrayList(new f(obj)));
        Iterators.b(new f(obj));
        return listUnmodifiableList;
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public List<V> replaceValues(@NullableDecl K k, Iterable<? extends V> iterable) {
        List<V> listUnmodifiableList = Collections.unmodifiableList(Lists.newArrayList(new f(k)));
        f fVar = new f(k);
        Iterator<? extends V> it = iterable.iterator();
        while (fVar.hasNext() && it.hasNext()) {
            fVar.next();
            fVar.set(it.next());
        }
        while (fVar.hasNext()) {
            fVar.next();
            fVar.remove();
        }
        while (it.hasNext()) {
            fVar.add(it.next());
        }
        return listUnmodifiableList;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        this.f = null;
        this.f3964g = null;
        this.h.clear();
        this.i = 0;
        this.j++;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@NullableDecl K k) {
        return new a(k);
    }

    @Override // com.google.common.collect.l
    public final Set c() {
        return new i3(this);
    }

    @Override // com.google.common.collect.l
    public final Multiset d() {
        return new Multimaps.g(this);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public List<V> values() {
        return (List) super.values();
    }

    @Override // com.google.common.collect.l
    public final Collection e() {
        return new j3(this);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // com.google.common.collect.l
    public final Collection b() {
        return new h3(this);
    }

    @Override // com.google.common.collect.l
    public final Iterator f() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.l
    public final Map a() {
        return new Multimaps.a(this);
    }
}
