package com.google.common.collect;

import java.util.Iterator;

/* loaded from: classes.dex */
final class w1 extends FluentIterable<Object> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterable[] f4376b;

    public w1(Iterable[] iterableArr) {
        this.f4376b = iterableArr;
    }

    @Override // java.lang.Iterable
    public Iterator<Object> iterator() {
        return Iterators.concat(new a(this.f4376b.length));
    }

    public class a extends c<Iterator<Object>> {
        public a(int i) {
            super(i);
        }

        @Override // com.google.common.collect.c
        public Iterator<Object> get(int i) {
            return w1.this.f4376b[i].iterator();
        }
    }
}
