package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.Multiset;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class h0<N, E> extends f<N, E> {

    /* renamed from: b, reason: collision with root package name */
    public transient SoftReference f4516b;

    public class a extends e0<E> {
        public final /* synthetic */ Object c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            h0 h0Var = h0.this;
            SoftReference softReference = h0Var.f4516b;
            Multiset multisetCreate = (Multiset) (softReference == null ? null : softReference.get());
            if (multisetCreate == null) {
                multisetCreate = HashMultiset.create(h0Var.f4512a.values());
                h0Var.f4516b = new SoftReference(multisetCreate);
            }
            return multisetCreate.count(this.c);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.c = obj2;
        }
    }

    @Override // com.google.common.graph.f0
    public Set<N> adjacentNodes() {
        SoftReference softReference = this.f4516b;
        Multiset multisetCreate = (Multiset) (softReference == null ? null : softReference.get());
        if (multisetCreate == null) {
            multisetCreate = HashMultiset.create(this.f4512a.values());
            this.f4516b = new SoftReference(multisetCreate);
        }
        return Collections.unmodifiableSet(multisetCreate.elementSet());
    }

    @Override // com.google.common.graph.f0
    public Set<E> edgesConnecting(N n) {
        return new a(this.f4512a, n, n);
    }

    @Override // com.google.common.graph.f, com.google.common.graph.f0
    public N removeInEdge(E e, boolean z) {
        if (z) {
            return null;
        }
        return removeOutEdge(e);
    }

    @Override // com.google.common.graph.f, com.google.common.graph.f0
    public N removeOutEdge(E e) {
        N n = (N) super.removeOutEdge(e);
        SoftReference softReference = this.f4516b;
        Multiset multiset = (Multiset) (softReference == null ? null : softReference.get());
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n));
        }
        return n;
    }

    @Override // com.google.common.graph.f, com.google.common.graph.f0
    public void addInEdge(E e, N n, boolean z) {
        if (z) {
            return;
        }
        addOutEdge(e, n);
    }

    @Override // com.google.common.graph.f, com.google.common.graph.f0
    public void addOutEdge(E e, N n) {
        super.addOutEdge(e, n);
        SoftReference softReference = this.f4516b;
        Multiset multiset = (Multiset) (softReference == null ? null : softReference.get());
        if (multiset != null) {
            Preconditions.checkState(multiset.add(n));
        }
    }
}
