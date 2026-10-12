package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.google.common.reflect.TypeResolver;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.HashMap;

/* loaded from: classes.dex */
final class e extends l {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f4839b;
    public final /* synthetic */ Type c;

    public e(HashMap map, Type type) {
        this.f4839b = map;
        this.c = type;
    }

    @Override // com.google.common.reflect.l
    public final void d(TypeVariable typeVariable) {
        this.f4839b.put(new TypeResolver.c(typeVariable), this.c);
    }

    @Override // com.google.common.reflect.l
    public final void e(WildcardType wildcardType) {
        HashMap map;
        Type type = this.c;
        if (type instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type;
            Type[] upperBounds = wildcardType.getUpperBounds();
            Type[] upperBounds2 = wildcardType2.getUpperBounds();
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] lowerBounds2 = wildcardType2.getLowerBounds();
            Preconditions.checkArgument(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, type);
            int i = 0;
            while (true) {
                int length = upperBounds.length;
                map = this.f4839b;
                if (i >= length) {
                    break;
                }
                TypeResolver.a(map, upperBounds[i], upperBounds2[i]);
                i++;
            }
            for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                TypeResolver.a(map, lowerBounds[i2], lowerBounds2[i2]);
            }
        }
    }

    @Override // com.google.common.reflect.l
    public final void c(ParameterizedType parameterizedType) {
        Type type = this.c;
        if (type instanceof WildcardType) {
            return;
        }
        try {
            ParameterizedType parameterizedType2 = (ParameterizedType) ParameterizedType.class.cast(type);
            Type ownerType = parameterizedType.getOwnerType();
            HashMap map = this.f4839b;
            if (ownerType != null && parameterizedType2.getOwnerType() != null) {
                TypeResolver.a(map, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            Preconditions.checkArgument(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, type);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            Preconditions.checkArgument(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i = 0; i < actualTypeArguments.length; i++) {
                TypeResolver.a(map, actualTypeArguments[i], actualTypeArguments2[i]);
            }
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException(type + " is not a ParameterizedType");
        }
    }

    @Override // com.google.common.reflect.l
    public final void b(GenericArrayType genericArrayType) {
        Type type = this.c;
        if (type instanceof WildcardType) {
            return;
        }
        Type typeC = m.c(type);
        Preconditions.checkArgument(typeC != null, "%s is not an array type.", type);
        TypeResolver.a(this.f4839b, genericArrayType.getGenericComponentType(), typeC);
    }

    @Override // com.google.common.reflect.l
    public final void a(Class cls) {
        Type type = this.c;
        if (type instanceof WildcardType) {
            return;
        }
        throw new IllegalArgumentException("No type mapping from " + cls + " to " + type);
    }
}
