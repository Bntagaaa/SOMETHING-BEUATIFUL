package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableSet;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

/* loaded from: classes.dex */
class i extends l {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImmutableSet.Builder f4842b;

    public i(ImmutableSet.Builder builder) {
        this.f4842b = builder;
    }

    @Override // com.google.common.reflect.l
    public final void d(TypeVariable typeVariable) {
        visit(typeVariable.getBounds());
    }

    @Override // com.google.common.reflect.l
    public final void e(WildcardType wildcardType) {
        visit(wildcardType.getUpperBounds());
    }

    @Override // com.google.common.reflect.l
    public final void c(ParameterizedType parameterizedType) {
        this.f4842b.add((ImmutableSet.Builder) parameterizedType.getRawType());
    }

    @Override // com.google.common.reflect.l
    public final void a(Class cls) {
        this.f4842b.add((ImmutableSet.Builder) cls);
    }

    @Override // com.google.common.reflect.l
    public final void b(GenericArrayType genericArrayType) {
        Class<? super Object> rawType = TypeToken.of(genericArrayType.getGenericComponentType()).getRawType();
        Function function = m.f4846a;
        this.f4842b.add((ImmutableSet.Builder) Array.newInstance(rawType, 0).getClass());
    }
}
