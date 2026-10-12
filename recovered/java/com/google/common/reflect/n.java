package com.google.common.reflect;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class n extends l {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f4862b;

    public n(AtomicReference atomicReference) {
        this.f4862b = atomicReference;
    }

    @Override // com.google.common.reflect.l
    public final void d(TypeVariable typeVariable) {
        this.f4862b.set(m.a(typeVariable.getBounds()));
    }

    @Override // com.google.common.reflect.l
    public final void e(WildcardType wildcardType) {
        this.f4862b.set(m.a(wildcardType.getUpperBounds()));
    }

    @Override // com.google.common.reflect.l
    public final void b(GenericArrayType genericArrayType) {
        this.f4862b.set(genericArrayType.getGenericComponentType());
    }

    @Override // com.google.common.reflect.l
    public final void a(Class cls) {
        this.f4862b.set(cls.getComponentType());
    }
}
