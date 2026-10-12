package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class AbstractSequentialIterator<T> extends UnmodifiableIterator<T> {

    /* renamed from: a, reason: collision with root package name */
    public Object f3839a;

    @NullableDecl
    public abstract T computeNext(T t);

    public AbstractSequentialIterator(@NullableDecl T t) {
        this.f3839a = t;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3839a != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        try {
            T t = (T) this.f3839a;
            this.f3839a = computeNext(t);
            return t;
        } catch (Throwable th) {
            this.f3839a = computeNext(this.f3839a);
            throw th;
        }
    }
}
