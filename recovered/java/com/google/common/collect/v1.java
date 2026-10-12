package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes.dex */
interface v1<K, V> extends t1<K, V>, SetMultimap<K, V> {
    @Override // com.google.common.collect.t1
    SetMultimap<K, V> unfiltered();
}
