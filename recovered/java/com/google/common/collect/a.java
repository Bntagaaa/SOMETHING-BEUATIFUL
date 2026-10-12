package com.google.common.collect;

import com.google.common.collect.b;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class a implements Iterator<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public Map.Entry f4160a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f4161b;
    public final /* synthetic */ b c;

    public a(b bVar, Iterator it) {
        this.c = bVar;
        this.f4161b = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4161b.hasNext();
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        Map.Entry entry = (Map.Entry) this.f4161b.next();
        this.f4160a = entry;
        return new b.a(entry);
    }

    @Override // java.util.Iterator
    public void remove() {
        g0.e(this.f4160a != null);
        Object value = this.f4160a.getValue();
        this.f4161b.remove();
        this.c.f4165b.f4164a.remove(value);
        this.f4160a = null;
    }
}
