package com.google.common.reflect;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

/* loaded from: classes.dex */
class h extends l {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TypeToken f4841b;

    public h(TypeToken typeToken) {
        this.f4841b = typeToken;
    }

    @Override // com.google.common.reflect.l
    public final void d(TypeVariable typeVariable) {
        throw new IllegalArgumentException(this.f4841b.f4826a + "contains a type variable and is not safe for the operation");
    }

    @Override // com.google.common.reflect.l
    public final void e(WildcardType wildcardType) {
        visit(wildcardType.getLowerBounds());
        visit(wildcardType.getUpperBounds());
    }

    @Override // com.google.common.reflect.l
    public final void c(ParameterizedType parameterizedType) {
        visit(parameterizedType.getActualTypeArguments());
        visit(parameterizedType.getOwnerType());
    }

    @Override // com.google.common.reflect.l
    public final void b(GenericArrayType genericArrayType) {
        visit(genericArrayType.getGenericComponentType());
    }
}
