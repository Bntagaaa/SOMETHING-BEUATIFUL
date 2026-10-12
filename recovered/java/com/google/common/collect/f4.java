package com.google.common.collect;

import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import java.util.Collection;

/* loaded from: classes.dex */
class f4 implements Maps.EntryTransformer<Object, Collection<Object>, Collection<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Multimaps.j f4205a;

    public f4(Multimaps.j jVar) {
        this.f4205a = jVar;
    }

    @Override // com.google.common.collect.Maps.EntryTransformer
    public Collection<Object> transformEntry(Object obj, Collection<Object> collection) {
        return this.f4205a.g(obj, collection);
    }
}
