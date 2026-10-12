package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class ArrayTable<R, C, V> extends v<R, C, V> implements Serializable {
    public final ImmutableList c;
    public final ImmutableList d;
    public final ImmutableMap e;
    public final ImmutableMap f;

    /* renamed from: g, reason: collision with root package name */
    public final Object[][] f3840g;
    public transient c h;
    public transient e i;

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.v
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Table<R, C, V> table) {
        if (table instanceof ArrayTable) {
            return new ArrayTable<>((ArrayTable) table);
        }
        ArrayTable<R, C, V> arrayTable = new ArrayTable<>(table.rowKeySet(), table.columnKeySet());
        arrayTable.putAll(table);
        return arrayTable;
    }

    public ArrayTable(Iterable iterable, Iterable iterable2) {
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        this.c = immutableListCopyOf;
        ImmutableList immutableListCopyOf2 = ImmutableList.copyOf(iterable2);
        this.d = immutableListCopyOf2;
        Preconditions.checkArgument(immutableListCopyOf.isEmpty() == immutableListCopyOf2.isEmpty());
        this.e = Maps.e(immutableListCopyOf);
        this.f = Maps.e(immutableListCopyOf2);
        this.f3840g = (Object[][]) Array.newInstance((Class<?>) Object.class, immutableListCopyOf.size(), immutableListCopyOf2.size());
        eraseAll();
    }

    public ArrayTable(ArrayTable arrayTable) {
        ImmutableList immutableList = arrayTable.c;
        this.c = immutableList;
        ImmutableList immutableList2 = arrayTable.d;
        this.d = immutableList2;
        this.e = arrayTable.e;
        this.f = arrayTable.f;
        Object[][] objArr = (Object[][]) Array.newInstance((Class<?>) Object.class, immutableList.size(), immutableList2.size());
        this.f3840g = objArr;
        for (int i = 0; i < this.c.size(); i++) {
            Object[] objArr2 = arrayTable.f3840g[i];
            System.arraycopy(objArr2, 0, objArr[i], 0, objArr2.length);
        }
    }

    public static abstract class a<K, V> extends Maps.m<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableMap f3841a;

        public abstract String b();

        public abstract Object c(int i);

        public abstract Object d(int i, Object obj);

        public a(ImmutableMap immutableMap) {
            this.f3841a = immutableMap;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f3841a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f3841a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f3841a.isEmpty();
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            return new c0(this, size());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return this.f3841a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            Integer num = (Integer) this.f3841a.get(obj);
            if (num == null) {
                return null;
            }
            return (V) c(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            ImmutableMap immutableMap = this.f3841a;
            Integer num = (Integer) immutableMap.get(k);
            if (num == null) {
                throw new IllegalArgumentException(b() + " " + k + " not in " + immutableMap.keySet());
            }
            return (V) d(num.intValue(), v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }
    }

    public ImmutableList<R> rowKeyList() {
        return this.c;
    }

    public ImmutableList<C> columnKeyList() {
        return this.d;
    }

    public V at(int i, int i2) {
        Preconditions.checkElementIndex(i, this.c.size());
        Preconditions.checkElementIndex(i2, this.d.size());
        return (V) this.f3840g[i][i2];
    }

    @CanIgnoreReturnValue
    public V set(int i, int i2, @NullableDecl V v) {
        Preconditions.checkElementIndex(i, this.c.size());
        Preconditions.checkElementIndex(i2, this.d.size());
        Object[] objArr = this.f3840g[i];
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    @GwtIncompatible
    public V[][] toArray(Class<V> cls) {
        ImmutableList immutableList = this.c;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, immutableList.size(), this.d.size()));
        for (int i = 0; i < immutableList.size(); i++) {
            Object[] objArr = this.f3840g[i];
            System.arraycopy(objArr, 0, vArr[i], 0, objArr.length);
        }
        return vArr;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public void eraseAll() {
        for (Object[] objArr : this.f3840g) {
            Arrays.fill(objArr, (Object) null);
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsColumn(@NullableDecl Object obj) {
        return this.f.containsKey(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsRow(@NullableDecl Object obj) {
        return this.e.containsKey(obj);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean containsValue(@NullableDecl Object obj) {
        for (Object[] objArr : this.f3840g) {
            for (Object obj2 : objArr) {
                if (Objects.equal(obj, obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Integer num = (Integer) this.e.get(obj);
        Integer num2 = (Integer) this.f.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return at(num.intValue(), num2.intValue());
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.c.isEmpty() || this.d.isEmpty();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    public V put(R r, C c2, @NullableDecl V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c2);
        Integer num = (Integer) this.e.get(r);
        Preconditions.checkArgument(num != null, "Row %s not in %s", r, this.c);
        Integer num2 = (Integer) this.f.get(c2);
        Preconditions.checkArgument(num2 != null, "Column %s not in %s", c2, this.d);
        return set(num.intValue(), num2.intValue(), v);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        super.putAll(table);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    @CanIgnoreReturnValue
    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @CanIgnoreReturnValue
    public V erase(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Integer num = (Integer) this.e.get(obj);
        Integer num2 = (Integer) this.f.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.d.size() * this.c.size();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.v
    public final Iterator a() {
        return new y(this, size());
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c2) {
        Preconditions.checkNotNull(c2);
        Integer num = (Integer) this.f.get(c2);
        return num == null ? ImmutableMap.of() : new b(num.intValue());
    }

    public class b extends a<R, V> {

        /* renamed from: b, reason: collision with root package name */
        public final int f3842b;

        public b(int i) {
            super(ArrayTable.this.e);
            this.f3842b = i;
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final String b() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final Object c(int i) {
            return ArrayTable.this.at(i, this.f3842b);
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final Object d(int i, Object obj) {
            return ArrayTable.this.set(i, this.f3842b, obj);
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public ImmutableSet<C> columnKeySet() {
        return this.f.keySet();
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        c cVar = this.h;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.h = cVar2;
        return cVar2;
    }

    public class c extends a<C, Map<R, V>> {
        @Override // com.google.common.collect.ArrayTable.a
        public final Object d(int i, Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.a, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return put((c) obj, (Map) obj2);
        }

        public c() {
            super(ArrayTable.this.f);
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final String b() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final Object c(int i) {
            return new b(i);
        }

        public Map<R, V> put(C c, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        Preconditions.checkNotNull(r);
        Integer num = (Integer) this.e.get(r);
        return num == null ? ImmutableMap.of() : new d(num.intValue());
    }

    public class d extends a<C, V> {

        /* renamed from: b, reason: collision with root package name */
        public final int f3844b;

        public d(int i) {
            super(ArrayTable.this.f);
            this.f3844b = i;
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final String b() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final Object c(int i) {
            return ArrayTable.this.at(this.f3844b, i);
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final Object d(int i, Object obj) {
            return ArrayTable.this.set(this.f3844b, i, obj);
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public ImmutableSet<R> rowKeySet() {
        return this.e.keySet();
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        e eVar = this.i;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        this.i = eVar2;
        return eVar2;
    }

    public class e extends a<R, Map<C, V>> {
        @Override // com.google.common.collect.ArrayTable.a
        public final Object d(int i, Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.a, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return put((e) obj, (Map) obj2);
        }

        public e() {
            super(ArrayTable.this.e);
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final String b() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.a
        public final Object c(int i) {
            return new d(i);
        }

        public Map<C, V> put(R r, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.v
    public final Iterator d() {
        return new a0(this, size());
    }
}
