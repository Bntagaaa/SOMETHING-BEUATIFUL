package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Table;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class h5<R, C, V> extends ImmutableTable<R, C, V> {
    public abstract Table.Cell h(int i);

    public abstract Object i(int i);

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.v
    /* renamed from: f */
    public final ImmutableSet b() {
        return isEmpty() ? ImmutableSet.of() : new a();
    }

    public final class a extends a3<Table.Cell<R, C, V>> {
        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return false;
        }

        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h5.this.size();
        }

        @Override // com.google.common.collect.a3
        public final Object get(int i) {
            return h5.this.h(i);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                Object obj2 = h5.this.get(cell.getRowKey(), cell.getColumnKey());
                if (obj2 != null && obj2.equals(cell.getValue())) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.v
    /* renamed from: g */
    public final ImmutableCollection c() {
        return isEmpty() ? ImmutableList.of() : new b();
    }

    public final class b extends ImmutableList<V> {
        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return h5.this.size();
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) h5.this.i(i);
        }
    }
}
