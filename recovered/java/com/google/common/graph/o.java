package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.Multiset;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class o<N, E> extends b<N, E> {
    public transient SoftReference d;
    public transient SoftReference e;

    public class a extends e0<E> {
        public final /* synthetic */ Object c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            o oVar = o.this;
            Multiset multisetCreate = (Multiset) o.a(oVar.e);
            if (multisetCreate == null) {
                multisetCreate = HashMultiset.create(oVar.f4494b.values());
                oVar.e = new SoftReference(multisetCreate);
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
    public Set<N> predecessors() {
        Multiset multisetCreate = (Multiset) a(this.d);
        if (multisetCreate == null) {
            multisetCreate = HashMultiset.create(this.f4493a.values());
            this.d = new SoftReference(multisetCreate);
        }
        return Collections.unmodifiableSet(multisetCreate.elementSet());
    }

    @Override // com.google.common.graph.f0
    public Set<N> successors() {
        Multiset multisetCreate = (Multiset) a(this.e);
        if (multisetCreate == null) {
            multisetCreate = HashMultiset.create(this.f4494b.values());
            this.e = new SoftReference(multisetCreate);
        }
        return Collections.unmodifiableSet(multisetCreate.elementSet());
    }

    @Override // com.google.common.graph.f0
    public Set<E> edgesConnecting(N n) {
        return new a(this.f4494b, n, n);
    }

    @Override // com.google.common.graph.b, com.google.common.graph.f0
    public N removeInEdge(E e, boolean z) {
        N n = (N) super.removeInEdge(e, z);
        Multiset multiset = (Multiset) a(this.d);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n));
        }
        return n;
    }

    @Override // com.google.common.graph.b, com.google.common.graph.f0
    public N removeOutEdge(E e) {
        N n = (N) super.removeOutEdge(e);
        Multiset multiset = (Multiset) a(this.e);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n));
        }
        return n;
    }

    @Override // com.google.common.graph.b, com.google.common.graph.f0
    public void addInEdge(E e, N n, boolean z) {
        super.addInEdge(e, n, z);
        Multiset multiset = (Multiset) a(this.d);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(n));
        }
    }

    @Override // com.google.common.graph.b, com.google.common.graph.f0
    public void addOutEdge(E e, N n) {
        super.addOutEdge(e, n);
        Multiset multiset = (Multiset) a(this.e);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(n));
        }
    }

    public static Object a(SoftReference softReference) {
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }
}
