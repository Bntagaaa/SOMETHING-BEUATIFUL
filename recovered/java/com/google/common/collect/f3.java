package com.google.common.collect;

import com.google.common.collect.LinkedHashMultimap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
class f3 implements Iterator<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public LinkedHashMultimap.a f4203a;

    /* renamed from: b, reason: collision with root package name */
    public LinkedHashMultimap.a f4204b;
    public final /* synthetic */ LinkedHashMultimap c;

    public f3(LinkedHashMultimap linkedHashMultimap) {
        this.c = linkedHashMultimap;
        this.f4203a = linkedHashMultimap.i.h;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4203a != this.c.i;
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        LinkedHashMultimap.a aVar = this.f4203a;
        this.f4204b = aVar;
        this.f4203a = aVar.h;
        return aVar;
    }

    @Override // java.util.Iterator
    public void remove() {
        g0.e(this.f4204b != null);
        this.c.remove(this.f4204b.getKey(), this.f4204b.getValue());
        this.f4204b = null;
    }
}
