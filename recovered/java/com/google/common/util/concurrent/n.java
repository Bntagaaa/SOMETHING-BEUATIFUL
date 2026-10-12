package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.util.concurrent.i;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class n<V, C> extends i<V, C> {
    public AbstractCollection p;

    public abstract Object combine(List list);

    public static final class a<V> extends n<V, List<V>> {
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.AbstractCollection, java.util.List] */
        public a(ImmutableList immutableList, boolean z) {
            AbstractCollection abstractCollectionNewArrayListWithCapacity;
            super(immutableList, z, true);
            if (immutableList.isEmpty()) {
                abstractCollectionNewArrayListWithCapacity = ImmutableList.of();
            } else {
                abstractCollectionNewArrayListWithCapacity = Lists.newArrayListWithCapacity(immutableList.size());
            }
            this.p = abstractCollectionNewArrayListWithCapacity;
            for (int i = 0; i < immutableList.size(); i++) {
                this.p.add(null);
            }
            n();
        }

        @Override // com.google.common.util.concurrent.n
        public List<V> combine(List<Optional<V>> list) {
            ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(list.size());
            Iterator<Optional<V>> it = list.iterator();
            while (it.hasNext()) {
                Optional<V> next = it.next();
                arrayListNewArrayListWithCapacity.add(next != null ? next.orNull() : null);
            }
            return Collections.unmodifiableList(arrayListNewArrayListWithCapacity);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.util.concurrent.i
    public final void k(int i, Object obj) {
        ?? r0 = this.p;
        if (r0 != 0) {
            r0.set(i, Optional.fromNullable(obj));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.util.concurrent.i
    public final void l() {
        ?? r0 = this.p;
        if (r0 != 0) {
            set(combine(r0));
        }
    }

    @Override // com.google.common.util.concurrent.i
    public final void o(i.a aVar) {
        super.o(aVar);
        this.p = null;
    }
}
