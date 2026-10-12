package com.google.common.base;

import java.util.AbstractList;

/* loaded from: classes.dex */
final class i extends AbstractList<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object[] f3740a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3741b;
    public final /* synthetic */ Object c;

    public i(Object obj, Object obj2, Object[] objArr) {
        this.f3740a = objArr;
        this.f3741b = obj;
        this.c = obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3740a.length + 2;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i == 0) {
            return this.f3741b;
        }
        if (i == 1) {
            return this.c;
        }
        return this.f3740a[i - 2];
    }
}
