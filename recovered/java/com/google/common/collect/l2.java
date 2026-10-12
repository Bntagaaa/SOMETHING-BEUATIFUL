package com.google.common.collect;

import java.util.Map;

/* loaded from: classes.dex */
class l2 extends UnmodifiableIterator<Map.Entry<Object, ImmutableSet<Object>>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UnmodifiableIterator f4263a;

    public l2(UnmodifiableIterator unmodifiableIterator) {
        this.f4263a = unmodifiableIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4263a.hasNext();
    }

    public class a extends k<Object, ImmutableSet<Object>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Map.Entry f4264a;

        public a(Map.Entry entry) {
            this.f4264a = entry;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public Object getKey() {
            return this.f4264a.getKey();
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public ImmutableSet<Object> getValue() {
            return ImmutableSet.of(this.f4264a.getValue());
        }
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, ImmutableSet<Object>> next() {
        return new a((Map.Entry) this.f4263a.next());
    }
}
