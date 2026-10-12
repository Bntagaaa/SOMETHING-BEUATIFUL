package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.b5;
import java.util.AbstractMap;
import java.util.Map;

/* loaded from: classes.dex */
class a5 extends ImmutableList<Map.Entry<Object, Object>> {
    public final /* synthetic */ b5.a c;

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.List
    public Map.Entry<Object, Object> get(int i) {
        b5.a aVar = this.c;
        Preconditions.checkElementIndex(i, aVar.f);
        int i2 = i * 2;
        int i3 = aVar.e;
        Object[] objArr = aVar.d;
        return new AbstractMap.SimpleImmutableEntry(objArr[i2 + i3], objArr[i2 + (i3 ^ 1)]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c.f;
    }

    public a5(b5.a aVar) {
        this.c = aVar;
    }
}
