package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Table;
import com.google.common.collect.y5;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Tables {

    /* renamed from: a, reason: collision with root package name */
    public static final Function f4112a = new a();

    private Tables() {
    }

    public static <R, C, V> Table.Cell<R, C, V> immutableCell(@NullableDecl R r, @NullableDecl C c2, @NullableDecl V v) {
        return new c(r, c2, v);
    }

    public static final class c<R, C, V> extends b<R, C, V> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4113a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f4114b;
        public final Object c;

        public c(Object obj, Object obj2, Object obj3) {
            this.f4113a = obj;
            this.f4114b = obj2;
            this.c = obj3;
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return (R) this.f4113a;
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return (C) this.f4114b;
        }

        @Override // com.google.common.collect.Table.Cell
        public V getValue() {
            return (V) this.c;
        }
    }

    public static abstract class b<R, C, V> implements Table.Cell<R, C, V> {
        @Override // com.google.common.collect.Table.Cell
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                if (Objects.equal(getRowKey(), cell.getRowKey()) && Objects.equal(getColumnKey(), cell.getColumnKey()) && Objects.equal(getValue(), cell.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Table.Cell
        public int hashCode() {
            return Objects.hashCode(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            return "(" + getRowKey() + "," + getColumnKey() + ")=" + getValue();
        }
    }

    public static <R, C, V> Table<C, R, V> transpose(Table<R, C, V> table) {
        return table instanceof e ? ((e) table).c : new e(table);
    }

    public static class e<C, R, V> extends v<C, R, V> {
        public static final Function d = new a();
        public final Table c;

        public e(Table table) {
            this.c = (Table) Preconditions.checkNotNull(table);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public void clear() {
            this.c.clear();
        }

        @Override // com.google.common.collect.Table
        public Map<C, V> column(R r) {
            return this.c.row(r);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public Set<R> columnKeySet() {
            return this.c.rowKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V>> columnMap() {
            return this.c.rowMap();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
            return this.c.contains(obj2, obj);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public boolean containsColumn(@NullableDecl Object obj) {
            return this.c.containsRow(obj);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public boolean containsRow(@NullableDecl Object obj) {
            return this.c.containsColumn(obj);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public boolean containsValue(@NullableDecl Object obj) {
            return this.c.containsValue(obj);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
            return (V) this.c.get(obj2, obj);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public V put(C c, R r, V v) {
            return (V) this.c.put(r, c, v);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public void putAll(Table<? extends C, ? extends R, ? extends V> table) {
            this.c.putAll(Tables.transpose(table));
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
            return (V) this.c.remove(obj2, obj);
        }

        @Override // com.google.common.collect.Table
        public Map<R, V> row(C c) {
            return this.c.column(c);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public Set<C> rowKeySet() {
            return this.c.columnKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V>> rowMap() {
            return this.c.columnMap();
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.c.size();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public Collection<V> values() {
            return this.c.values();
        }

        public static class a implements Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> {
            @Override // com.google.common.base.Function
            public Table.Cell<?, ?, ?> apply(Table.Cell<?, ?, ?> cell) {
                return Tables.immutableCell(cell.getColumnKey(), cell.getRowKey(), cell.getValue());
            }
        }

        @Override // com.google.common.collect.v
        public final Iterator a() {
            return Iterators.transform(this.c.cellSet().iterator(), d);
        }
    }

    @Beta
    public static <R, C, V> Table<R, C, V> newCustomTable(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        Preconditions.checkArgument(map.isEmpty());
        Preconditions.checkNotNull(supplier);
        return new v5(map, supplier);
    }

    @Beta
    public static <R, C, V1, V2> Table<R, C, V2> transformValues(Table<R, C, V1> table, Function<? super V1, V2> function) {
        return new d(table, function);
    }

    public static class d<R, C, V1, V2> extends v<R, C, V2> {
        public final Table c;
        public final Function d;

        public d(Table table, Function function) {
            this.c = (Table) Preconditions.checkNotNull(table);
            this.d = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public boolean contains(Object obj, Object obj2) {
            return this.c.contains(obj, obj2);
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public V2 get(Object obj, Object obj2) {
            if (!contains(obj, obj2)) {
                return null;
            }
            return (V2) this.d.apply(this.c.get(obj, obj2));
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.c.size();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public void clear() {
            this.c.clear();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public V2 put(R r, C c, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V2> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public V2 remove(Object obj, Object obj2) {
            if (!contains(obj, obj2)) {
                return null;
            }
            return (V2) this.d.apply(this.c.remove(obj, obj2));
        }

        @Override // com.google.common.collect.Table
        public Map<C, V2> row(R r) {
            return Maps.transformValues(this.c.row(r), this.d);
        }

        @Override // com.google.common.collect.Table
        public Map<R, V2> column(C c) {
            return Maps.transformValues(this.c.column(c), this.d);
        }

        @Override // com.google.common.collect.v
        public final Iterator a() {
            return Iterators.transform(this.c.cellSet().iterator(), new a6(this));
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return this.c.rowKeySet();
        }

        @Override // com.google.common.collect.v, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return this.c.columnKeySet();
        }

        @Override // com.google.common.collect.v
        public final Collection c() {
            return Collections2.transform(this.c.values(), this.d);
        }

        public class a implements Function<Map<C, V1>, Map<C, V2>> {
            public a() {
            }

            @Override // com.google.common.base.Function
            public Map<C, V2> apply(Map<C, V1> map) {
                return Maps.transformValues(map, d.this.d);
            }
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V2>> rowMap() {
            return Maps.transformValues(this.c.rowMap(), new a());
        }

        public class b implements Function<Map<R, V1>, Map<R, V2>> {
            public b() {
            }

            @Override // com.google.common.base.Function
            public Map<R, V2> apply(Map<R, V1> map) {
                return Maps.transformValues(map, d.this.d);
            }
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V2>> columnMap() {
            return Maps.transformValues(this.c.columnMap(), new b());
        }
    }

    public static <R, C, V> Table<R, C, V> unmodifiableTable(Table<? extends R, ? extends C, ? extends V> table) {
        return new g(table);
    }

    public static class g<R, C, V> extends ForwardingTable<R, C, V> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Table f4117a;

        public g(Table table) {
            this.f4117a = (Table) Preconditions.checkNotNull(table);
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public Table<R, C, V> delegate() {
            return this.f4117a;
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<Table.Cell<R, C, V>> cellSet() {
            return Collections.unmodifiableSet(super.cellSet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<R, V> column(@NullableDecl C c) {
            return Collections.unmodifiableMap(super.column(c));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return Collections.unmodifiableSet(super.columnKeySet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public V put(@NullableDecl R r, @NullableDecl C c, @NullableDecl V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<C, V> row(@NullableDecl R r) {
            return Collections.unmodifiableMap(super.row(r));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return Collections.unmodifiableSet(super.rowKeySet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<C, Map<R, V>> columnMap() {
            return Collections.unmodifiableMap(Maps.transformValues(super.columnMap(), Tables.f4112a));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableMap(Maps.transformValues(super.rowMap(), Tables.f4112a));
        }
    }

    @Beta
    public static <R, C, V> RowSortedTable<R, C, V> unmodifiableRowSortedTable(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
        return new f(rowSortedTable);
    }

    public static final class f<R, C, V> extends g<R, C, V> implements RowSortedTable<R, C, V> {
        public f(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
            super(rowSortedTable);
        }

        @Override // com.google.common.collect.Tables.g, com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public RowSortedTable<R, C, V> delegate() {
            return (RowSortedTable) super.delegate();
        }

        @Override // com.google.common.collect.Tables.g, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public SortedSet<R> rowKeySet() {
            return Collections.unmodifiableSortedSet(delegate().rowKeySet());
        }

        @Override // com.google.common.collect.Tables.g, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public SortedMap<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableSortedMap(Maps.transformValues((SortedMap) delegate().rowMap(), Tables.f4112a));
        }
    }

    public static class a implements Function<Map<Object, Object>, Map<Object, Object>> {
        @Override // com.google.common.base.Function
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    public static <R, C, V> Table<R, C, V> synchronizedTable(Table<R, C, V> table) {
        return new y5.x(table, null);
    }
}
