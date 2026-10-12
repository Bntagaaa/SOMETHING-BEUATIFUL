package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.ListIterator;

@GwtCompatible
/* loaded from: classes.dex */
abstract class d6<F, T> extends c6<F, T> implements ListIterator<T> {
    @Override // java.util.ListIterator
    public void set(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f4192a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f4192a).nextIndex();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return (T) a(((ListIterator) this.f4192a).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f4192a).previousIndex();
    }
}
