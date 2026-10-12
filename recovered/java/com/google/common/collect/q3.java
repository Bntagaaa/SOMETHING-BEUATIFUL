package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Map;

/* loaded from: classes.dex */
final class q3 implements Function<Map.Entry<Object, Object>, Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Maps.EntryTransformer f4321a;

    @Override // com.google.common.base.Function
    public Map.Entry<Object, Object> apply(Map.Entry<Object, Object> entry) {
        Maps.EntryTransformer entryTransformer = this.f4321a;
        Preconditions.checkNotNull(entryTransformer);
        Preconditions.checkNotNull(entry);
        return new p3(entry, entryTransformer);
    }

    public q3(Maps.EntryTransformer entryTransformer) {
        this.f4321a = entryTransformer;
    }
}
