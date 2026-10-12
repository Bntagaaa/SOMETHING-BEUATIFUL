package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Iterator;

/* loaded from: classes.dex */
final class b3 implements Function<Iterable<Object>, Iterator<Object>> {
    @Override // com.google.common.base.Function
    public Iterator<Object> apply(Iterable<Object> iterable) {
        return iterable.iterator();
    }
}
