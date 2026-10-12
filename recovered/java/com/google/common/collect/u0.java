package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Queue;

@GwtCompatible
/* loaded from: classes.dex */
class u0<T> extends AbstractIterator<T> {
    public final Queue c;

    public u0(Queue queue) {
        this.c = (Queue) Preconditions.checkNotNull(queue);
    }

    @Override // com.google.common.collect.AbstractIterator
    public T computeNext() {
        Queue queue = this.c;
        return queue.isEmpty() ? endOfData() : (T) queue.remove();
    }
}
