package com.google.common.collect;

import com.google.common.base.Predicate;
import java.util.Map;

/* loaded from: classes.dex */
final class b4 implements Predicate<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Predicate f4179a;

    public b4(Predicate predicate) {
        this.f4179a = predicate;
    }

    @Override // com.google.common.base.Predicate
    public boolean apply(Map.Entry<Object, Object> entry) {
        return this.f4179a.apply(Maps.immutableEntry(entry.getValue(), entry.getKey()));
    }
}
