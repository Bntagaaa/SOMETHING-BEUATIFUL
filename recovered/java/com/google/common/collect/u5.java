package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes.dex */
class u5<R, C, V> extends v5<R, C, V> implements RowSortedTable<R, C, V> {

    public class b extends v5<R, C, V>.h implements SortedMap<R, Map<C, V>> {
        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return ((SortedMap) u5.this.c).comparator();
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) ((SortedMap) u5.this.c).firstKey();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) ((SortedMap) u5.this.c).lastKey();
        }

        public b() {
            super();
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // com.google.common.collect.Maps.d0
        public final Set createKeySet() {
            return new Maps.s(this);
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r) {
            Preconditions.checkNotNull(r);
            u5 u5Var = u5.this;
            return new u5(((SortedMap) u5Var.c).headMap(r), u5Var.d).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r, R r2) {
            Preconditions.checkNotNull(r);
            Preconditions.checkNotNull(r2);
            u5 u5Var = u5.this;
            return new u5(((SortedMap) u5Var.c).subMap(r, r2), u5Var.d).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r) {
            Preconditions.checkNotNull(r);
            u5 u5Var = u5.this;
            return new u5(((SortedMap) u5Var.c).tailMap(r), u5Var.d).rowMap();
        }
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.v, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // com.google.common.collect.v5, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }

    @Override // com.google.common.collect.v5
    public final Map g() {
        return new b();
    }
}
