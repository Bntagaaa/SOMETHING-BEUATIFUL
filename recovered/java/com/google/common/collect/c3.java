package com.google.common.collect;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class c3 extends UnmodifiableIterator<Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f4187a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object[] f4188b;

    public c3(Object[] objArr) {
        this.f4188b = objArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4187a < this.f4188b.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f4187a;
        Object[] objArr = this.f4188b;
        Object obj = objArr[i];
        objArr[i] = null;
        this.f4187a = i + 1;
        return obj;
    }
}
