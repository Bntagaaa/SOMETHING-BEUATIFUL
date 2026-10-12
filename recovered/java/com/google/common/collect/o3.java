package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.collect.Maps;
import java.util.Map;

/* loaded from: classes.dex */
final class o3 implements Function<Map.Entry<Object, Object>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Maps.EntryTransformer f4309a;

    public o3(Maps.EntryTransformer entryTransformer) {
        this.f4309a = entryTransformer;
    }

    @Override // com.google.common.base.Function
    public Object apply(Map.Entry<Object, Object> entry) {
        return this.f4309a.transformEntry(entry.getKey(), entry.getValue());
    }
}
