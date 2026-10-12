package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.collect.Maps;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class n3 implements Function<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Maps.EntryTransformer f4302a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4303b;

    public n3(Maps.EntryTransformer entryTransformer, Object obj) {
        this.f4302a = entryTransformer;
        this.f4303b = obj;
    }

    @Override // com.google.common.base.Function
    public Object apply(@NullableDecl Object obj) {
        return this.f4302a.transformEntry(this.f4303b, obj);
    }
}
