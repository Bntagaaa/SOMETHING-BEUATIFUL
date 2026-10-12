package com.google.common.collect;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class d3 extends UnmodifiableIterator<List<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterator f4193a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4194b;
    public final /* synthetic */ boolean c;

    public d3(Iterator it, int i, boolean z) {
        this.f4193a = it;
        this.f4194b = i;
        this.c = z;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4193a.hasNext();
    }

    @Override // java.util.Iterator
    public List<Object> next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f4194b;
        Object[] objArr = new Object[i];
        int i2 = 0;
        while (i2 < i) {
            Iterator it = this.f4193a;
            if (!it.hasNext()) {
                break;
            }
            objArr[i2] = it.next();
            i2++;
        }
        for (int i3 = i2; i3 < i; i3++) {
            objArr[i3] = null;
        }
        List<Object> listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
        return (this.c || i2 == i) ? listUnmodifiableList : listUnmodifiableList.subList(0, i2);
    }
}
