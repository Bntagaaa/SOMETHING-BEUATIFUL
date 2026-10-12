package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
class f1 extends ImmutableSetMultimap<Object, Object> {
    public static final f1 k = new f1();

    private f1() {
        super(ImmutableMap.of(), 0, null);
    }
}
