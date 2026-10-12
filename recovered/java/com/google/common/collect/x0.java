package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.Immutable;
import java.lang.reflect.Array;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable(containerOf = {"R", "C", "V"})
@GwtCompatible
/* loaded from: classes.dex */
final class x0<R, C, V> extends h5<R, C, V> {
    public final ImmutableMap c;
    public final ImmutableMap d;
    public final ImmutableMap e;
    public final ImmutableMap f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f4380g;
    public final int[] h;
    public final Object[][] i;
    public final int[] j;
    public final int[] k;

    public final class b extends d<R, V> {

        /* renamed from: g, reason: collision with root package name */
        public final int f4381g;

        @Override // com.google.common.collect.ImmutableMap
        public final boolean f() {
            return true;
        }

        @Override // com.google.common.collect.x0.d
        public final Object i(int i) {
            return x0.this.i[i][this.f4381g];
        }

        @Override // com.google.common.collect.x0.d
        public final ImmutableMap j() {
            return x0.this.c;
        }

        public b(int i) {
            super(x0.this.h[i]);
            this.f4381g = i;
        }
    }

    public final class c extends d<C, ImmutableMap<R, V>> {
        @Override // com.google.common.collect.ImmutableMap
        public final boolean f() {
            return false;
        }

        @Override // com.google.common.collect.x0.d
        public final ImmutableMap j() {
            return x0.this.d;
        }

        public c() {
            super(x0.this.h.length);
        }

        @Override // com.google.common.collect.x0.d
        public final Object i(int i) {
            return new b(i);
        }
    }

    public final class e extends d<C, V> {

        /* renamed from: g, reason: collision with root package name */
        public final int f4383g;

        @Override // com.google.common.collect.ImmutableMap
        public final boolean f() {
            return true;
        }

        @Override // com.google.common.collect.x0.d
        public final Object i(int i) {
            return x0.this.i[this.f4383g][i];
        }

        @Override // com.google.common.collect.x0.d
        public final ImmutableMap j() {
            return x0.this.d;
        }

        public e(int i) {
            super(x0.this.f4380g[i]);
            this.f4383g = i;
        }
    }

    public final class f extends d<R, ImmutableMap<C, V>> {
        @Override // com.google.common.collect.ImmutableMap
        public final boolean f() {
            return false;
        }

        @Override // com.google.common.collect.x0.d
        public final ImmutableMap j() {
            return x0.this.c;
        }

        public f() {
            super(x0.this.f4380g.length);
        }

        @Override // com.google.common.collect.x0.d
        public final Object i(int i) {
            return new e(i);
        }
    }

    public x0(ImmutableList immutableList, ImmutableSet immutableSet, ImmutableSet immutableSet2) {
        this.i = (Object[][]) Array.newInstance((Class<?>) Object.class, immutableSet.size(), immutableSet2.size());
        ImmutableMap immutableMapE = Maps.e(immutableSet);
        this.c = immutableMapE;
        ImmutableMap immutableMapE2 = Maps.e(immutableSet2);
        this.d = immutableMapE2;
        this.f4380g = new int[immutableMapE.size()];
        this.h = new int[immutableMapE2.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            Table.Cell cell = (Table.Cell) immutableList.get(i);
            Object rowKey = cell.getRowKey();
            Object columnKey = cell.getColumnKey();
            int iIntValue = ((Integer) this.c.get(rowKey)).intValue();
            int iIntValue2 = ((Integer) this.d.get(columnKey)).intValue();
            Object obj = this.i[iIntValue][iIntValue2];
            Preconditions.checkArgument(obj == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", rowKey, columnKey, cell.getValue(), obj);
            this.i[iIntValue][iIntValue2] = cell.getValue();
            int[] iArr3 = this.f4380g;
            iArr3[iIntValue] = iArr3[iIntValue] + 1;
            int[] iArr4 = this.h;
            iArr4[iIntValue2] = iArr4[iIntValue2] + 1;
            iArr[i] = iIntValue;
            iArr2[i] = iIntValue2;
        }
        this.j = iArr;
        this.k = iArr2;
        this.e = new f();
        this.f = new c();
    }

    public static abstract class d<K, V> extends ImmutableMap.a<K, V> {
        public final int f;

        public abstract Object i(int i);

        public abstract ImmutableMap j();

        public d(int i) {
            this.f = i;
        }

        @Override // com.google.common.collect.ImmutableMap.a, com.google.common.collect.ImmutableMap
        public final ImmutableSet b() {
            if (this.f == j().size()) {
                return j().keySet();
            }
            return new n2(this);
        }

        @Override // java.util.Map
        public int size() {
            return this.f;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            Integer num = (Integer) j().get(obj);
            if (num == null) {
                return null;
            }
            return (V) i(num.intValue());
        }

        @Override // com.google.common.collect.ImmutableMap.a
        public final UnmodifiableIterator h() {
            return new y0(this);
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.f);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.e);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.v, com.google.common.collect.Table
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Integer num = (Integer) this.c.get(obj);
        Integer num2 = (Integer) this.d.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return (V) this.i[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.j.length;
    }

    @Override // com.google.common.collect.h5
    public final Table.Cell h(int i) {
        int i2 = this.j[i];
        int i3 = this.k[i];
        return ImmutableTable.e(rowKeySet().asList().get(i2), columnKeySet().asList().get(i3), this.i[i2][i3]);
    }

    @Override // com.google.common.collect.h5
    public final Object i(int i) {
        return this.i[this.j[i]][this.k[i]];
    }
}
