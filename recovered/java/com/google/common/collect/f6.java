package com.google.common.collect;

import java.util.Comparator;

/* loaded from: classes.dex */
class f6 extends AbstractIterator<Object> {
    public Object c;
    public final /* synthetic */ UnmodifiableIterator d;
    public final /* synthetic */ Comparator e;

    public f6(UnmodifiableIterator unmodifiableIterator, Comparator comparator) {
        this.d = unmodifiableIterator;
        this.e = comparator;
    }

    @Override // com.google.common.collect.AbstractIterator
    public Object computeNext() {
        E next;
        Object obj;
        do {
            UnmodifiableIterator unmodifiableIterator = this.d;
            if (unmodifiableIterator.hasNext()) {
                next = unmodifiableIterator.next();
                obj = this.c;
                if (obj == null) {
                    break;
                }
            } else {
                this.c = null;
                return endOfData();
            }
        } while (this.e.compare(next, obj) == 0);
        this.c = next;
        return next;
    }
}
