package com.google.common.reflect;

import com.google.common.collect.Ordering;
import java.util.HashMap;

/* loaded from: classes.dex */
final class k extends Ordering<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ordering f4843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f4844b;

    public k(Ordering ordering, HashMap map) {
        this.f4843a = ordering;
        this.f4844b = map;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        HashMap map = this.f4844b;
        return this.f4843a.compare(map.get(obj), map.get(obj2));
    }
}
