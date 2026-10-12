package com.google.common.collect;

import java.util.Iterator;

/* loaded from: classes.dex */
class r extends c1<Object> {
    public final /* synthetic */ s d;

    @Override // com.google.common.collect.c1, com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return Multisets.c(this.d.descendingMultiset());
    }

    public r(s sVar) {
        this.d = sVar;
    }

    @Override // com.google.common.collect.c1
    public final SortedMultiset a() {
        return this.d;
    }

    @Override // com.google.common.collect.c1
    public final Iterator entryIterator() {
        return this.d.e();
    }
}
