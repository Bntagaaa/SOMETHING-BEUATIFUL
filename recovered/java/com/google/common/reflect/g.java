package com.google.common.reflect;

import com.google.common.reflect.TypeResolver;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
class g extends TypeResolver.d {
    public final /* synthetic */ TypeVariable c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(AtomicInteger atomicInteger, TypeVariable typeVariable) {
        super(atomicInteger);
        this.c = typeVariable;
    }

    @Override // com.google.common.reflect.TypeResolver.d
    public final TypeVariable b(Type[] typeArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
        linkedHashSet.addAll(Arrays.asList(this.c.getBounds()));
        if (linkedHashSet.size() > 1) {
            linkedHashSet.remove(Object.class);
        }
        return super.b((Type[]) linkedHashSet.toArray(new Type[0]));
    }
}
