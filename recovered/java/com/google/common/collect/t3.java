package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class t3 extends c6<Object, Map.Entry<Object, Object>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function f4342b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t3(Iterator it, Function function) {
        super(it);
        this.f4342b = function;
    }

    @Override // com.google.common.collect.c6
    public final Object a(Object obj) {
        return Maps.immutableEntry(obj, this.f4342b.apply(obj));
    }
}
