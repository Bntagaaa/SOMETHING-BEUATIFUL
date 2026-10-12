package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.collect.Maps;

/* loaded from: classes.dex */
final class z3 implements Maps.EntryTransformer<Object, Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function f4401a;

    public z3(Function function) {
        this.f4401a = function;
    }

    @Override // com.google.common.collect.Maps.EntryTransformer
    public Object transformEntry(Object obj, Object obj2) {
        return this.f4401a.apply(obj2);
    }
}
