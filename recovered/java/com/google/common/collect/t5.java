package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.Immutable;
import java.util.LinkedHashMap;
import java.util.Map;

@Immutable(containerOf = {"R", "C", "V"})
@GwtCompatible
/* loaded from: classes.dex */
final class t5<R, C, V> extends h5<R, C, V> {

    /* renamed from: g, reason: collision with root package name */
    public static final ImmutableTable f4343g = new t5(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());
    public final ImmutableMap c;
    public final ImmutableMap d;
    public final int[] e;
    public final int[] f;

    /* JADX WARN: Multi-variable type inference failed */
    public t5(ImmutableList immutableList, ImmutableSet immutableSet, ImmutableSet immutableSet2) {
        ImmutableMap immutableMapE = Maps.e(immutableSet);
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        UnmodifiableIterator it = immutableSet.iterator();
        while (it.hasNext()) {
            linkedHashMapNewLinkedHashMap.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = Maps.newLinkedHashMap();
        UnmodifiableIterator it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            linkedHashMapNewLinkedHashMap2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            Table.Cell cell = (Table.Cell) immutableList.get(i);
            Object rowKey = cell.getRowKey();
            Object columnKey = cell.getColumnKey();
            Object value = cell.getValue();
            iArr[i] = ((Integer) immutableMapE.get(rowKey)).intValue();
            Map map = (Map) linkedHashMapNewLinkedHashMap.get(rowKey);
            iArr2[i] = map.size();
            Object objPut = map.put(columnKey, value);
            Preconditions.checkArgument(objPut == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", rowKey, columnKey, value, objPut);
            ((Map) linkedHashMapNewLinkedHashMap2.get(columnKey)).put(rowKey, value);
        }
        this.e = iArr;
        this.f = iArr2;
        ImmutableMap.Builder builder = new ImmutableMap.Builder(linkedHashMapNewLinkedHashMap.size());
        for (Map.Entry entry : linkedHashMapNewLinkedHashMap.entrySet()) {
            builder.put(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.c = builder.build();
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder(linkedHashMapNewLinkedHashMap2.size());
        for (Map.Entry entry2 : linkedHashMapNewLinkedHashMap2.entrySet()) {
            builder2.put(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.d = builder2.build();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.d);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.c);
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.e.length;
    }

    @Override // com.google.common.collect.h5
    public final Table.Cell h(int i) {
        Map.Entry entry = (Map.Entry) this.c.entrySet().asList().get(this.e[i]);
        ImmutableMap immutableMap = (ImmutableMap) entry.getValue();
        Map.Entry entry2 = (Map.Entry) immutableMap.entrySet().asList().get(this.f[i]);
        return ImmutableTable.e(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.h5
    public final Object i(int i) {
        ImmutableMap immutableMap = (ImmutableMap) this.c.values().asList().get(this.e[i]);
        return immutableMap.values().asList().get(this.f[i]);
    }
}
