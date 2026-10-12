package com.google.common.collect;

import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
class o1 implements Predicate<Map.Entry<Object, Collection<Object>>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Predicate f4306a;

    public o1(Predicate predicate) {
        this.f4306a = predicate;
    }

    @Override // com.google.common.base.Predicate
    public boolean apply(Map.Entry<Object, Collection<Object>> entry) {
        return this.f4306a.apply(Multisets.immutableEntry(entry.getKey(), entry.getValue().size()));
    }
}
