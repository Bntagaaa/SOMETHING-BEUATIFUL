package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
class v5<R, C, V> extends v<R, C, V> implements Serializable {
    public final Map c;
    public final Supplier d;
    public transient Set e;
    public transient Map f;

    /* renamed from: g, reason: collision with root package name */
    public transient f f4354g;

    public v5(Map map, Supplier supplier) {
        this.c = map;
        this.d = supplier;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsColumn(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<V> it = this.c.values().iterator();
        while (it.hasNext()) {
            if (Maps.g((Map) it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsRow(@NullableDecl Object obj) {
        return obj != null && Maps.g(this.c, obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsValue(@NullableDecl Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    @Override // com.google.common.collect.Table
    public int size() {
        Iterator<V> it = this.c.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((Map) it.next()).size();
        }
        return size;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public void clear() {
        this.c.clear();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    public V put(R r, C c2, V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c2);
        Preconditions.checkNotNull(v);
        Map map = this.c;
        Map map2 = (Map) map.get(r);
        if (map2 == null) {
            map2 = (Map) this.d.get();
            map.put(r, map2);
        }
        return (V) map2.put(c2, v);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        Map map = this.c;
        Map map2 = (Map) Maps.h(map, obj);
        if (map2 == null) {
            return null;
        }
        V v = (V) map2.remove(obj2);
        if (map2.isEmpty()) {
            map.remove(obj);
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LinkedHashMap e(v5 v5Var, Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = v5Var.c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object objRemove = ((Map) entry.getValue()).remove(obj);
            if (objRemove != null) {
                linkedHashMap.put(entry.getKey(), objRemove);
                if (((Map) entry.getValue()).isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    public abstract class i<T> extends Sets.k<T> {
        public i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return v5.this.c.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            v5.this.c.clear();
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.v
    public final Iterator a() {
        return new b(this);
    }

    public class b implements Iterator<Table.Cell<R, C, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator f4355a;

        /* renamed from: b, reason: collision with root package name */
        public Map.Entry f4356b;
        public Iterator c = Iterators.l.f3953a;

        public b(v5 v5Var) {
            this.f4355a = v5Var.c.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4355a.hasNext() || this.c.hasNext();
        }

        @Override // java.util.Iterator
        public Table.Cell<R, C, V> next() {
            if (!this.c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f4355a.next();
                this.f4356b = entry;
                this.c = ((Map) entry.getValue()).entrySet().iterator();
            }
            Map.Entry entry2 = (Map.Entry) this.c.next();
            return Tables.immutableCell(this.f4356b.getKey(), entry2.getKey(), entry2.getValue());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.c.remove();
            if (((Map) this.f4356b.getValue()).isEmpty()) {
                this.f4355a.remove();
                this.f4356b = null;
            }
        }
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        return new g(r);
    }

    public class g extends Maps.m<C, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4366a;

        /* renamed from: b, reason: collision with root package name */
        public Map f4367b;

        public g(Object obj) {
            this.f4366a = Preconditions.checkNotNull(obj);
        }

        public Map b() {
            Map map = this.f4367b;
            if (map != null && (!map.isEmpty() || !v5.this.c.containsKey(this.f4366a))) {
                return this.f4367b;
            }
            Map mapC = c();
            this.f4367b = mapC;
            return mapC;
        }

        public Map c() {
            return (Map) v5.this.c.get(this.f4366a);
        }

        public void d() {
            if (b() == null || !this.f4367b.isEmpty()) {
                return;
            }
            v5.this.c.remove(this.f4366a);
            this.f4367b = null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map mapB = b();
            return (obj == null || mapB == null || !Maps.g(mapB, obj)) ? false : true;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map mapB = b();
            if (obj == null || mapB == null) {
                return null;
            }
            return (V) Maps.h(mapB, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            Preconditions.checkNotNull(c);
            Preconditions.checkNotNull(v);
            Map map = this.f4367b;
            if (map != null && !map.isEmpty()) {
                return (V) this.f4367b.put(c, v);
            }
            return (V) v5.this.put(this.f4366a, c, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            Map mapB = b();
            V v = null;
            if (mapB == null) {
                return null;
            }
            Preconditions.checkNotNull(mapB);
            try {
                v = (V) mapB.remove(obj);
            } catch (ClassCastException | NullPointerException unused) {
            }
            d();
            return v;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            Map mapB = b();
            if (mapB != null) {
                mapB.clear();
            }
            d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            Map mapB = b();
            if (mapB == null) {
                return 0;
            }
            return mapB.size();
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            Map mapB = b();
            if (mapB == null) {
                return Iterators.l.f3953a;
            }
            return new w5(this, mapB.entrySet().iterator());
        }
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c2) {
        return new c(c2);
    }

    public class c extends Maps.d0<R, V> {
        public final Object d;

        public c(Object obj) {
            this.d = Preconditions.checkNotNull(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r, V v) {
            return (V) v5.this.put(r, this.d, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) v5.this.get(obj, this.d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return v5.this.contains(obj, this.d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) v5.this.remove(obj, this.d);
        }

        public final boolean b(Predicate predicate) {
            Iterator it = v5.this.c.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Map map = (Map) entry.getValue();
                Object obj = this.d;
                Object obj2 = map.get(obj);
                if (obj2 != null && predicate.apply(Maps.immutableEntry(entry.getKey(), obj2))) {
                    map.remove(obj);
                    if (map.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.d0
        public final Set createEntrySet() {
            return new a();
        }

        public class a extends Sets.k<Map.Entry<R, V>> {
            public a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return c.this.new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                c cVar = c.this;
                Iterator<V> it = v5.this.c.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (((Map) it.next()).containsKey(cVar.d)) {
                        i++;
                    }
                }
                return i;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                c cVar = c.this;
                return !v5.this.containsColumn(cVar.d);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                c.this.b(Predicates.alwaysTrue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    c cVar = c.this;
                    v5 v5Var = v5.this;
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value != null && value.equals(v5Var.get(key, cVar.d))) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    c cVar = c.this;
                    v5 v5Var = v5.this;
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value != null) {
                        Object obj2 = cVar.d;
                        if (value.equals(v5Var.get(key, obj2))) {
                            v5Var.remove(key, obj2);
                            return true;
                        }
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.b(Predicates.not(Predicates.in(collection)));
            }
        }

        public class b extends AbstractIterator<Map.Entry<R, V>> {
            public final Iterator c;

            public b() {
                this.c = v5.this.c.entrySet().iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            public Map.Entry<R, V> computeNext() {
                Map.Entry entry;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                    } else {
                        return endOfData();
                    }
                } while (!((Map) entry.getValue()).containsKey(c.this.d));
                return new a(entry);
            }

            public class a extends k<R, V> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ Map.Entry f4358a;

                public a(Map.Entry entry) {
                    this.f4358a = entry;
                }

                @Override // com.google.common.collect.k, java.util.Map.Entry
                public R getKey() {
                    return (R) this.f4358a.getKey();
                }

                @Override // com.google.common.collect.k, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.f4358a.getValue()).get(c.this.d);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.k, java.util.Map.Entry
                public V setValue(V v) {
                    return (V) ((Map) this.f4358a.getValue()).put(c.this.d, Preconditions.checkNotNull(v));
                }
            }
        }

        @Override // com.google.common.collect.Maps.d0
        public final Set createKeySet() {
            return new C0118c();
        }

        /* renamed from: com.google.common.collect.v5$c$c, reason: collision with other inner class name */
        public class C0118c extends Maps.n<R, V> {
            public C0118c() {
                super(c.this);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                c cVar = c.this;
                return v5.this.contains(obj, cVar.d);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                c cVar = c.this;
                return v5.this.remove(obj, cVar.d) != null;
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.b(Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4009a));
            }
        }

        @Override // com.google.common.collect.Maps.d0
        public final Collection a() {
            return new d();
        }

        public class d extends Maps.c0<R, V> {
            public d() {
                super(c.this);
            }

            @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                if (obj != null) {
                    return c.this.b(Predicates.compose(Predicates.equalTo(obj), Maps.e.f4010b));
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return c.this.b(Predicates.compose(Predicates.in(collection), Maps.e.f4010b));
            }

            @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return c.this.b(Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4010b));
            }
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public Set<C> columnKeySet() {
        Set<C> set = this.e;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.e = eVar;
        return eVar;
    }

    public class e extends v5<R, C, V>.i<C> {
        public e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return v5.this.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Iterators.size(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<V> it = v5.this.c.values().iterator();
            while (it.hasNext()) {
                Map map = (Map) it.next();
                if (map.keySet().remove(obj)) {
                    if (map.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            Iterator<V> it = v5.this.c.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map map = (Map) it.next();
                if (Iterators.removeAll(map.keySet().iterator(), collection)) {
                    if (map.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            Iterator<V> it = v5.this.c.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map map = (Map) it.next();
                if (map.keySet().retainAll(collection)) {
                    if (map.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return v5.this.containsColumn(obj);
        }
    }

    public Iterator f() {
        return new d(this);
    }

    public class d extends AbstractIterator<C> {
        public final Map c;
        public final Iterator d;
        public Iterator e = Iterators.j.d;

        public d(v5 v5Var) {
            this.c = (Map) v5Var.d.get();
            this.d = v5Var.c.values().iterator();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractIterator
        public C computeNext() {
            while (true) {
                if (this.e.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.e.next();
                    Object key = entry.getKey();
                    Map map = this.c;
                    if (!map.containsKey(key)) {
                        map.put(entry.getKey(), entry.getValue());
                        return (C) entry.getKey();
                    }
                } else {
                    Iterator it = this.d;
                    if (it.hasNext()) {
                        this.e = ((Map) it.next()).entrySet().iterator();
                    } else {
                        return endOfData();
                    }
                }
            }
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.f;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapG = g();
        this.f = mapG;
        return mapG;
    }

    public Map g() {
        return new h();
    }

    public class h extends Maps.d0<R, Map<C, V>> {
        public h() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return v5.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<C, V> get(Object obj) {
            v5 v5Var = v5.this;
            if (v5Var.containsRow(obj)) {
                return v5Var.row(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<C, V> remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return (Map) v5.this.c.remove(obj);
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<R, Map<C, V>>> createEntrySet() {
            return new a();
        }

        public class a extends v5<R, C, V>.i<Map.Entry<R, Map<C, V>>> {
            public a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                Set setKeySet = v5.this.c.keySet();
                return new t3(setKeySet.iterator(), new C0120a());
            }

            /* renamed from: com.google.common.collect.v5$h$a$a, reason: collision with other inner class name */
            public class C0120a implements Function<R, Map<C, V>> {
                public C0120a() {
                }

                @Override // com.google.common.base.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply((C0120a) obj);
                }

                @Override // com.google.common.base.Function
                public Map<C, V> apply(R r) {
                    return v5.this.row(r);
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return v5.this.c.size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry.getKey() != null && (entry.getValue() instanceof Map) && Collections2.c(entry, v5.this.c.entrySet())) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry.getKey() != null && (entry.getValue() instanceof Map) && v5.this.c.entrySet().remove(entry)) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        f fVar = this.f4354g;
        if (fVar != null) {
            return fVar;
        }
        f fVar2 = new f();
        this.f4354g = fVar2;
        return fVar2;
    }

    public class f extends Maps.d0<C, Map<R, V>> {
        public f() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<R, V> get(Object obj) {
            v5 v5Var = v5.this;
            if (v5Var.containsColumn(obj)) {
                return v5Var.column(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return v5.this.containsColumn(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<R, V> remove(Object obj) {
            v5 v5Var = v5.this;
            if (v5Var.containsColumn(obj)) {
                return v5.e(v5Var, obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<C, Map<R, V>>> createEntrySet() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public Set<C> keySet() {
            return v5.this.columnKeySet();
        }

        @Override // com.google.common.collect.Maps.d0
        public final Collection a() {
            return new b();
        }

        public class a extends v5<R, C, V>.i<Map.Entry<C, Map<R, V>>> {
            public a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                Set<C> setColumnKeySet = v5.this.columnKeySet();
                return new t3(setColumnKeySet.iterator(), new C0119a());
            }

            /* renamed from: com.google.common.collect.v5$f$a$a, reason: collision with other inner class name */
            public class C0119a implements Function<C, Map<R, V>> {
                public C0119a() {
                }

                @Override // com.google.common.base.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply((C0119a) obj);
                }

                @Override // com.google.common.base.Function
                public Map<R, V> apply(C c) {
                    return v5.this.column(c);
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return v5.this.columnKeySet().size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                f fVar = f.this;
                if (v5.this.containsColumn(entry.getKey())) {
                    return fVar.get(entry.getKey()).equals(entry.getValue());
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                v5.e(v5.this, ((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                return Sets.d(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                f fVar = f.this;
                Iterator it = Lists.newArrayList(v5.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    v5 v5Var = v5.this;
                    if (!collection.contains(Maps.immutableEntry(next, v5Var.column(next)))) {
                        v5.e(v5Var, next);
                        z = true;
                    }
                }
                return z;
            }
        }

        public class b extends Maps.c0<C, Map<R, V>> {
            public b() {
                super(f.this);
            }

            @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                f fVar = f.this;
                for (Map.Entry<C, Map<R, V>> entry : fVar.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        v5.e(v5.this, entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                f fVar = f.this;
                Iterator it = Lists.newArrayList(v5.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    v5 v5Var = v5.this;
                    if (collection.contains(v5Var.column(next))) {
                        v5.e(v5Var, next);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                f fVar = f.this;
                Iterator it = Lists.newArrayList(v5.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    v5 v5Var = v5.this;
                    if (!collection.contains(v5Var.column(next))) {
                        v5.e(v5Var, next);
                        z = true;
                    }
                }
                return z;
            }
        }
    }
}
