package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Map;

@GwtCompatible
/* loaded from: classes.dex */
class n5<R, C, V> extends ImmutableTable<R, C, V> {
    public final Object c;
    public final Object d;
    public final Object e;

    @Override // com.google.common.collect.Table
    public int size() {
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((n5<R, C, V>) obj);
    }

    public n5(Object obj, Object obj2, Object obj3) {
        this.c = Preconditions.checkNotNull(obj);
        this.d = Preconditions.checkNotNull(obj2);
        this.e = Preconditions.checkNotNull(obj3);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, V> column(C c) {
        Preconditions.checkNotNull(c);
        if (containsColumn(c)) {
            return ImmutableMap.of(this.c, this.e);
        }
        return ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.d, ImmutableMap.of(this.c, this.e));
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.c, ImmutableMap.of(this.d, this.e));
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.v
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet b() {
        return ImmutableSet.of(ImmutableTable.e(this.c, this.d, this.e));
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.v
    public final Collection c() {
        return ImmutableSet.of(this.e);
    }

    @Override // com.google.common.collect.ImmutableTable
    /* renamed from: g */
    public final ImmutableCollection c() {
        return ImmutableSet.of(this.e);
    }
}
