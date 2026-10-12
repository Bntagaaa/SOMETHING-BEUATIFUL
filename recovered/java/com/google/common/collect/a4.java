package com.google.common.collect;

import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class a4 extends Maps.f<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Maps.d f4162a;

    public a4(Maps.d dVar) {
        this.f4162a = dVar;
    }

    @Override // com.google.common.collect.Maps.f
    public final Map a() {
        return this.f4162a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Object>> iterator() {
        return this.f4162a.entryIterator();
    }
}
