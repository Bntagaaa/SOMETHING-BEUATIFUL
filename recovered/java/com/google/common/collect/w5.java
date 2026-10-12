package com.google.common.collect;

import com.google.common.collect.v5;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class w5 implements Iterator<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f4378a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v5.g f4379b;

    public w5(v5.g gVar, Iterator it) {
        this.f4379b = gVar;
        this.f4378a = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4378a.hasNext();
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        Map.Entry entry = (Map.Entry) this.f4378a.next();
        this.f4379b.getClass();
        return new x5(entry);
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f4378a.remove();
        this.f4379b.d();
    }
}
