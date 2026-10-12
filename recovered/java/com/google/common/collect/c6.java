package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;

@GwtCompatible
/* loaded from: classes.dex */
abstract class c6<F, T> implements Iterator<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f4192a;

    public abstract Object a(Object obj);

    public c6(Iterator it) {
        this.f4192a = (Iterator) Preconditions.checkNotNull(it);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4192a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return (T) a(this.f4192a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f4192a.remove();
    }
}
