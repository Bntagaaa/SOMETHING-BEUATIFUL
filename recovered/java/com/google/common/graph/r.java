package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
abstract class r<N> extends AbstractIterator<EndpointPair<N>> {
    public final h c;
    public final Iterator d;
    public Object e = null;
    public Iterator f = ImmutableSet.of().iterator();

    public r(h hVar) {
        this.c = hVar;
        this.d = hVar.nodes().iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean advance() {
        Preconditions.checkState(!this.f.hasNext());
        Iterator it = this.d;
        if (!it.hasNext()) {
            return false;
        }
        Object next = it.next();
        this.e = next;
        this.f = this.c.successors((h) next).iterator();
        return true;
    }

    public static final class b<N> extends r<N> {
        @Override // com.google.common.collect.AbstractIterator
        public EndpointPair<N> computeNext() {
            while (!this.f.hasNext()) {
                if (!advance()) {
                    return endOfData();
                }
            }
            return EndpointPair.ordered(this.e, this.f.next());
        }
    }

    public static final class c<N> extends r<N> {

        /* renamed from: g, reason: collision with root package name */
        public HashSet f4535g;

        @Override // com.google.common.collect.AbstractIterator
        public EndpointPair<N> computeNext() {
            while (true) {
                if (this.f.hasNext()) {
                    Object next = this.f.next();
                    if (!this.f4535g.contains(next)) {
                        return EndpointPair.unordered(this.e, next);
                    }
                } else {
                    this.f4535g.add(this.e);
                    if (!advance()) {
                        this.f4535g = null;
                        return endOfData();
                    }
                }
            }
        }
    }
}
