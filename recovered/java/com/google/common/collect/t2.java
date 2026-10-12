package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;

/* loaded from: classes.dex */
final class t2 implements Comparator<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f4341a;

    public t2(Comparator comparator) {
        this.f4341a = comparator;
    }

    @Override // java.util.Comparator
    public int compare(Map.Entry<Object, Object> entry, Map.Entry<Object, Object> entry2) {
        return this.f4341a.compare(entry.getKey(), entry2.getKey());
    }
}
