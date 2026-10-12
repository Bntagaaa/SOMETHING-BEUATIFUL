package com.google.common.reflect;

import com.google.common.collect.Sets;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.HashSet;

/* loaded from: classes.dex */
abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f4845a = Sets.newHashSet();

    public void a(Class cls) {
    }

    public void b(GenericArrayType genericArrayType) {
    }

    public void c(ParameterizedType parameterizedType) {
    }

    public void d(TypeVariable typeVariable) {
    }

    public void e(WildcardType wildcardType) {
    }

    public final void visit(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null) {
                HashSet hashSet = this.f4845a;
                if (hashSet.add(type)) {
                    try {
                        if (type instanceof TypeVariable) {
                            d((TypeVariable) type);
                        } else if (type instanceof WildcardType) {
                            e((WildcardType) type);
                        } else if (type instanceof ParameterizedType) {
                            c((ParameterizedType) type);
                        } else if (type instanceof Class) {
                            a((Class) type);
                        } else if (type instanceof GenericArrayType) {
                            b((GenericArrayType) type);
                        } else {
                            throw new AssertionError("Unknown type: " + type);
                        }
                    } catch (Throwable th) {
                        hashSet.remove(type);
                        throw th;
                    }
                } else {
                    continue;
                }
            }
        }
    }
}
