package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class y3 extends UnmodifiableIterator<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f4387a;

    public y3(Iterator it) {
        this.f4387a = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4387a.hasNext();
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        Map.Entry entry = (Map.Entry) this.f4387a.next();
        Preconditions.checkNotNull(entry);
        return new x3(entry);
    }
}
