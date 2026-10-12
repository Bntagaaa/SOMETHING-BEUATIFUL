package com.google.common.reflect;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.reflect.TypeToken;

/* loaded from: classes.dex */
class j extends TypeToken.g.c<Object> {
    @Override // com.google.common.reflect.TypeToken.g.c, com.google.common.reflect.TypeToken.g
    public final Iterable c(Object obj) {
        return ImmutableSet.of();
    }

    @Override // com.google.common.reflect.TypeToken.g
    public final ImmutableList b(ImmutableCollection immutableCollection) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Object obj : immutableCollection) {
            if (!this.c.d(obj).isInterface()) {
                builder.add((ImmutableList.Builder) obj);
            }
        }
        return super.b(builder.build());
    }
}
