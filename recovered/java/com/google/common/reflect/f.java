package com.google.common.reflect;

import com.google.common.reflect.TypeResolver;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
class f extends TypeResolver.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TypeVariable f4840b;
    public final /* synthetic */ TypeResolver.b c;

    public f(TypeVariable typeVariable, TypeResolver.b bVar) {
        this.f4840b = typeVariable;
        this.c = bVar;
    }

    @Override // com.google.common.reflect.TypeResolver.b
    public Type resolveInternal(TypeVariable<?> typeVariable, TypeResolver.b bVar) {
        return typeVariable.getGenericDeclaration().equals(this.f4840b.getGenericDeclaration()) ? typeVariable : this.c.resolveInternal(typeVariable, bVar);
    }
}
