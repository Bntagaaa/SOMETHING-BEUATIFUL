package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class r0 extends ForwardingSet<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Set f4327a;

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean remove(Object obj) {
        boolean zRemove;
        if (obj != null) {
            Set set = this.f4327a;
            Preconditions.checkNotNull(set);
            try {
                zRemove = set.remove(obj);
            } catch (ClassCastException | NullPointerException unused) {
                zRemove = false;
            }
            if (zRemove) {
                return true;
            }
        }
        return false;
    }

    public r0(Set set) {
        this.f4327a = set;
    }

    @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public Set<Object> delegate() {
        return this.f4327a;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return obj != null && Collections2.c(obj, this.f4327a);
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return standardContainsAll(collection);
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return standardRemoveAll(collection);
    }
}
