package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public abstract class TypeParameter<T> extends d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final TypeVariable f4819a;

    public TypeParameter() {
        Type typeA = a();
        Preconditions.checkArgument(typeA instanceof TypeVariable, "%s should be a type variable.", typeA);
        this.f4819a = (TypeVariable) typeA;
    }

    public final int hashCode() {
        return this.f4819a.hashCode();
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof TypeParameter) {
            return this.f4819a.equals(((TypeParameter) obj).f4819a);
        }
        return false;
    }

    public String toString() {
        return this.f4819a.toString();
    }
}
