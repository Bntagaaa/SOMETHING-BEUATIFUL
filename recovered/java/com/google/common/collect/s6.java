package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class s6 extends Ordering<Object> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final s6 f4338a = new s6();

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return "Ordering.usingToString()";
    }

    private s6() {
    }
}
