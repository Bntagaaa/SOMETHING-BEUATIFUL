package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class v<R, C, V> implements Table<R, C, V> {

    /* renamed from: a, reason: collision with root package name */
    public transient Set f4346a;

    /* renamed from: b, reason: collision with root package name */
    public transient Collection f4347b;

    public abstract Iterator a();

    @Override // com.google.common.collect.Table
    public boolean containsRow(@NullableDecl Object obj) {
        return Maps.g(rowMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public boolean containsColumn(@NullableDecl Object obj) {
        return Maps.g(columnMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public Set<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public boolean containsValue(@NullableDecl Object obj) {
        Iterator<Map<C, V>> it = rowMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Table
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map = (Map) Maps.h(rowMap(), obj);
        return map != null && Maps.g(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map = (Map) Maps.h(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.h(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Table
    public void clear() {
        Iterators.b(cellSet().iterator());
    }

    @Override // com.google.common.collect.Table
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map = (Map) Maps.h(rowMap(), obj);
        if (map == null) {
            return null;
        }
        Preconditions.checkNotNull(map);
        try {
            return (V) map.remove(obj2);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    @Override // com.google.common.collect.Table
    @CanIgnoreReturnValue
    public V put(R r, C c, V v) {
        return row(r).put(c, v);
    }

    @Override // com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        for (Table.Cell<? extends R, ? extends C, ? extends V> cell : table.cellSet()) {
            put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
        }
    }

    @Override // com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        Set<Table.Cell<R, C, V>> set = this.f4346a;
        if (set != null) {
            return set;
        }
        Set<Table.Cell<R, C, V>> setB = b();
        this.f4346a = setB;
        return setB;
    }

    public Set b() {
        return new a();
    }

    public class a extends AbstractSet<Table.Cell<R, C, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                Map map = (Map) Maps.h(v.this.rowMap(), cell.getRowKey());
                if (map != null) {
                    if (Collections2.c(Maps.immutableEntry(cell.getColumnKey(), cell.getValue()), map.entrySet())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            boolean zRemove;
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                Map map = (Map) Maps.h(v.this.rowMap(), cell.getRowKey());
                if (map != null) {
                    Set setEntrySet = map.entrySet();
                    Map.Entry entryImmutableEntry = Maps.immutableEntry(cell.getColumnKey(), cell.getValue());
                    Preconditions.checkNotNull(setEntrySet);
                    try {
                        zRemove = setEntrySet.remove(entryImmutableEntry);
                    } catch (ClassCastException | NullPointerException unused) {
                        zRemove = false;
                    }
                    if (zRemove) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            v.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Table.Cell<R, C, V>> iterator() {
            return v.this.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return v.this.size();
        }
    }

    @Override // com.google.common.collect.Table
    public Collection<V> values() {
        Collection<V> collection = this.f4347b;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionC = c();
        this.f4347b = collectionC;
        return collectionC;
    }

    public Collection c() {
        return new b();
    }

    public Iterator d() {
        return new u(cellSet().iterator());
    }

    public class b extends AbstractCollection<V> {
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return v.this.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return v.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            v.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return v.this.size();
        }
    }

    @Override // com.google.common.collect.Table
    public boolean equals(@NullableDecl Object obj) {
        Function function = Tables.f4112a;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Table) {
            return cellSet().equals(((Table) obj).cellSet());
        }
        return false;
    }

    @Override // com.google.common.collect.Table
    public int hashCode() {
        return cellSet().hashCode();
    }

    public String toString() {
        return rowMap().toString();
    }
}
