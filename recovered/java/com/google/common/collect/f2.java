package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
abstract class f2<E> extends ImmutableList<E> {

    @GwtIncompatible
    public static class a implements Serializable {
    }

    public abstract ImmutableCollection f();

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return f().contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return f().size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return f().isEmpty();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        ((v4) f()).getClass();
        return false;
    }
}
