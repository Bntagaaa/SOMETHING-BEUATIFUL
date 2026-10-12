package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class ImmutableTable<R, C, V> extends v<R, C, V> implements Serializable {

    public static final class a implements Serializable {
    }

    @Override // com.google.common.collect.Table
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    @Override // com.google.common.collect.v
    /* renamed from: f */
    public abstract ImmutableSet b();

    @Override // com.google.common.collect.v
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableCollection c();

    @Override // com.google.common.collect.Table
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@NullableDecl Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@NullableDecl Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.v
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return t5.f4343g;
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r, C c, V v) {
        return new n5(r, c, v);
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(Table<? extends R, ? extends C, ? extends V> table) {
        if (table instanceof ImmutableTable) {
            return (ImmutableTable) table;
        }
        Set<Table.Cell<? extends R, ? extends C, ? extends V>> setCellSet = table.cellSet();
        Builder builder = builder();
        Iterator<T> it = setCellSet.iterator();
        while (it.hasNext()) {
            builder.put((Table.Cell) it.next());
        }
        return builder.build();
    }

    public static <R, C, V> Builder<R, C, V> builder() {
        return new Builder<>();
    }

    public static Table.Cell e(Object obj, Object obj2, Object obj3) {
        return Tables.immutableCell(Preconditions.checkNotNull(obj, "rowKey"), Preconditions.checkNotNull(obj2, "columnKey"), Preconditions.checkNotNull(obj3, "value"));
    }

    @DoNotMock
    public static final class Builder<R, C, V> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f3922a = Lists.newArrayList();

        /* renamed from: b, reason: collision with root package name */
        public Comparator f3923b;
        public Comparator c;

        @CanIgnoreReturnValue
        public Builder<R, C, V> orderRowsBy(Comparator<? super R> comparator) {
            this.f3923b = (Comparator) Preconditions.checkNotNull(comparator, "rowComparator");
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<R, C, V> orderColumnsBy(Comparator<? super C> comparator) {
            this.c = (Comparator) Preconditions.checkNotNull(comparator, "columnComparator");
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<R, C, V> put(R r, C c, V v) {
            this.f3922a.add(ImmutableTable.e(r, c, v));
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<R, C, V> put(Table.Cell<? extends R, ? extends C, ? extends V> cell) {
            if (cell instanceof Tables.c) {
                Preconditions.checkNotNull(cell.getRowKey(), "row");
                Preconditions.checkNotNull(cell.getColumnKey(), "column");
                Preconditions.checkNotNull(cell.getValue(), "value");
                this.f3922a.add(cell);
                return this;
            }
            put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<R, C, V> putAll(Table<? extends R, ? extends C, ? extends V> table) {
            Iterator<Table.Cell<? extends R, ? extends C, ? extends V>> it = table.cellSet().iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        public ImmutableTable<R, C, V> build() {
            ImmutableSet immutableSetCopyOf;
            ImmutableSet immutableSetCopyOf2;
            ArrayList<Table.Cell> arrayList = this.f3922a;
            int size = arrayList.size();
            if (size == 0) {
                return ImmutableTable.of();
            }
            if (size == 1) {
                Table.Cell cell = (Table.Cell) Iterables.getOnlyElement(arrayList);
                return new n5(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            }
            Comparator comparator = this.f3923b;
            Comparator comparator2 = this.c;
            Preconditions.checkNotNull(arrayList);
            if (comparator != null || comparator2 != null) {
                Collections.sort(arrayList, new g5(comparator, comparator2));
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Iterable) arrayList);
            for (Table.Cell cell2 : arrayList) {
                linkedHashSet.add(cell2.getRowKey());
                linkedHashSet2.add(cell2.getColumnKey());
            }
            if (comparator == null) {
                immutableSetCopyOf = ImmutableSet.copyOf((Collection) linkedHashSet);
            } else {
                immutableSetCopyOf = ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet));
            }
            if (comparator2 == null) {
                immutableSetCopyOf2 = ImmutableSet.copyOf((Collection) linkedHashSet2);
            } else {
                immutableSetCopyOf2 = ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2));
            }
            return ((long) immutableListCopyOf.size()) > (((long) immutableSetCopyOf.size()) * ((long) immutableSetCopyOf2.size())) / 2 ? new x0(immutableListCopyOf, immutableSetCopyOf, immutableSetCopyOf2) : new t5(immutableListCopyOf, immutableSetCopyOf, immutableSetCopyOf2);
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public ImmutableSet<Table.Cell<R, C, V>> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    @Override // com.google.common.collect.v
    public final Iterator a() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    @Override // com.google.common.collect.v
    public final Iterator d() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Table
    public ImmutableMap<R, V> column(C c) {
        Preconditions.checkNotNull(c, "columnKey");
        return (ImmutableMap) MoreObjects.firstNonNull((ImmutableMap) columnMap().get(c), ImmutableMap.of());
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public ImmutableMap<C, V> row(R r) {
        Preconditions.checkNotNull(r, "rowKey");
        return (ImmutableMap) MoreObjects.firstNonNull((ImmutableMap) rowMap().get(r), ImmutableMap.of());
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @Deprecated
    public final V put(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @Deprecated
    public final void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }
}
