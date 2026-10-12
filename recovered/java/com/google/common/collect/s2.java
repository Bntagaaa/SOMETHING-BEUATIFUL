package com.google.common.collect;

import com.google.common.base.Preconditions;

/* loaded from: classes.dex */
class s2 extends ImmutableList<Range<Comparable>> {
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Range e;
    public final /* synthetic */ ImmutableRangeSet f;

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return true;
    }

    public s2(ImmutableRangeSet immutableRangeSet, int i, int i2, Range range) {
        this.f = immutableRangeSet;
        this.c = i;
        this.d = i2;
        this.e = range;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List
    public Range<Comparable> get(int i) {
        int i2 = this.c;
        Preconditions.checkElementIndex(i, i2);
        int i3 = this.d;
        ImmutableRangeSet immutableRangeSet = this.f;
        if (i == 0 || i == i2 - 1) {
            return ((Range) immutableRangeSet.f3914a.get(i + i3)).intersection(this.e);
        }
        return (Range) immutableRangeSet.f3914a.get(i + i3);
    }
}
