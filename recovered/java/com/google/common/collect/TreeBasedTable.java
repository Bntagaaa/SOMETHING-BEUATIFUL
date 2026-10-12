package com.google.common.collect;

import android.Manifest;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public class TreeBasedTable<R, C, V> extends u5<R, C, V> {
    public final Comparator h;

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v5, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@NullableDecl Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@NullableDecl Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void putAll(Table table) {
        super.putAll(table);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v5, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((TreeBasedTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.v
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static class a<C, V> implements Supplier<TreeMap<C, V>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Comparator f4118a;

        public a(Comparator comparator) {
            this.f4118a = comparator;
        }

        @Override // com.google.common.base.Supplier
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.f4118a);
        }
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(Ordering.natural(), Ordering.natural());
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }

    public TreeBasedTable(Comparator comparator, Comparator comparator2) {
        super(new TreeMap(comparator), new a(comparator2));
        this.h = comparator2;
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        return rowKeySet().comparator();
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.h;
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.Table
    public SortedMap<C, V> row(R r) {
        return new b(r, null, null);
    }

    public class b extends v5<R, C, V>.g implements SortedMap<C, V> {
        public final Object d;
        public final Object e;
        public transient SortedMap f;

        public b(Object obj, Object obj2, Object obj3) {
            super(obj);
            this.d = obj2;
            this.e = obj3;
            Preconditions.checkArgument(obj2 == null || obj3 == null || comparator().compare(obj2, obj3) <= 0);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public SortedSet<C> keySet() {
            return new Maps.s(this);
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        public final boolean e(Object obj) {
            if (obj == null) {
                return false;
            }
            Manifest.permission_group permission_groupVar = (Object) this.d;
            if (permission_groupVar != null && comparator().compare(permission_groupVar, obj) > 0) {
                return false;
            }
            Manifest.permission_group permission_groupVar2 = (Object) this.e;
            return permission_groupVar2 == null || comparator().compare(permission_groupVar2, obj) > 0;
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c, C c2) {
            Preconditions.checkArgument(e(Preconditions.checkNotNull(c)) && e(Preconditions.checkNotNull(c2)));
            return new b(this.f4366a, c, c2);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c) {
            Preconditions.checkArgument(e(Preconditions.checkNotNull(c)));
            return new b(this.f4366a, this.d, c);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c) {
            Preconditions.checkArgument(e(Preconditions.checkNotNull(c)));
            return new b(this.f4366a, c, this.e);
        }

        public final SortedMap f() {
            SortedMap sortedMap = this.f;
            Object obj = this.f4366a;
            TreeBasedTable treeBasedTable = TreeBasedTable.this;
            if (sortedMap == null || (sortedMap.isEmpty() && treeBasedTable.c.containsKey(obj))) {
                this.f = (SortedMap) treeBasedTable.c.get(obj);
            }
            return this.f;
        }

        @Override // com.google.common.collect.v5.g
        public final Map b() {
            return (SortedMap) super.b();
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            if (((SortedMap) super.b()) == null) {
                throw new NoSuchElementException();
            }
            return (C) ((SortedMap) super.b()).firstKey();
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            if (((SortedMap) super.b()) == null) {
                throw new NoSuchElementException();
            }
            return (C) ((SortedMap) super.b()).lastKey();
        }

        @Override // com.google.common.collect.v5.g
        public final Map c() {
            SortedMap sortedMapF = f();
            if (sortedMapF == null) {
                return null;
            }
            Object obj = this.d;
            if (obj != null) {
                sortedMapF = sortedMapF.tailMap(obj);
            }
            Object obj2 = this.e;
            return obj2 != null ? sortedMapF.headMap(obj2) : sortedMapF;
        }

        @Override // com.google.common.collect.v5.g
        public final void d() {
            if (f() == null || !this.f.isEmpty()) {
                return;
            }
            TreeBasedTable.this.c.remove(this.f4366a);
            this.f = null;
            this.f4367b = null;
        }

        @Override // com.google.common.collect.v5.g, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return e(obj) && super.containsKey(obj);
        }

        @Override // com.google.common.collect.v5.g, java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            Preconditions.checkArgument(e(Preconditions.checkNotNull(c)));
            return (V) super.put(c, v);
        }
    }

    @Override // com.google.common.collect.u5, com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.u5, com.google.common.collect.v5, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    @Override // com.google.common.collect.v5
    public final Iterator f() {
        Comparator<? super C> comparatorColumnComparator = columnComparator();
        return new f6(Iterators.mergeSorted(Iterables.transform(this.c.values(), new e6()), comparatorColumnComparator), comparatorColumnComparator);
    }
}
