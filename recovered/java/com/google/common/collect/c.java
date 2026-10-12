package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes.dex */
abstract class c<E> extends UnmodifiableListIterator<E> {

    /* renamed from: a, reason: collision with root package name */
    public final int f4183a;

    /* renamed from: b, reason: collision with root package name */
    public int f4184b;

    public abstract E get(int i);

    public c(int i) {
        this(i, 0);
    }

    public c(int i, int i2) {
        Preconditions.checkPositionIndex(i2, i);
        this.f4183a = i;
        this.f4184b = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f4184b < this.f4183a;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f4184b;
        this.f4184b = i + 1;
        return get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f4184b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f4184b > 0;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f4184b - 1;
        this.f4184b = i;
        return get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f4184b - 1;
    }
}
