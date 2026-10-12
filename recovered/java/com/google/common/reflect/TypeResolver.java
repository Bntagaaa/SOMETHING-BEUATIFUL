package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.reflect.m;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.text.Typography;

@Beta
/* loaded from: classes.dex */
public final class TypeResolver {

    /* renamed from: a, reason: collision with root package name */
    public final b f4820a;

    public TypeResolver() {
        this.f4820a = new b();
    }

    public TypeResolver(b bVar) {
        this.f4820a = bVar;
    }

    public TypeResolver where(Type type, Type type2) {
        HashMap mapNewHashMap = Maps.newHashMap();
        a(mapNewHashMap, (Type) Preconditions.checkNotNull(type), (Type) Preconditions.checkNotNull(type2));
        return d(mapNewHashMap);
    }

    public final TypeResolver d(Map map) {
        b bVar = this.f4820a;
        bVar.getClass();
        ImmutableMap.Builder builder = ImmutableMap.builder();
        builder.putAll(bVar.f4822a);
        for (Map.Entry entry : map.entrySet()) {
            c cVar = (c) entry.getKey();
            Type type = (Type) entry.getValue();
            cVar.getClass();
            Preconditions.checkArgument(!(type instanceof TypeVariable ? cVar.a((TypeVariable) type) : false), "Type variable %s bound to itself", cVar);
            builder.put(cVar, type);
        }
        return new TypeResolver(new b(builder.build()));
    }

    public static void a(HashMap map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new e(map, type2).visit(type);
    }

    public Type resolveType(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type;
            b bVar = this.f4820a;
            bVar.getClass();
            return bVar.resolveInternal(typeVariable, new f(typeVariable, bVar));
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type ownerType = parameterizedType.getOwnerType();
            return m.f(ownerType == null ? null : resolveType(ownerType), (Class) resolveType(parameterizedType.getRawType()), b(parameterizedType.getActualTypeArguments()));
        }
        if (!(type instanceof GenericArrayType)) {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new m.i(b(wildcardType.getLowerBounds()), b(wildcardType.getUpperBounds()));
        }
        return m.d(resolveType(((GenericArrayType) type).getGenericComponentType()));
    }

    public final void c(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = resolveType(typeArr[i]);
        }
    }

    public final Type[] b(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = resolveType(typeArr[i]);
        }
        return typeArr2;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableMap f4822a;

        public b() {
            this.f4822a = ImmutableMap.of();
        }

        public b(ImmutableMap immutableMap) {
            this.f4822a = immutableMap;
        }

        public Type resolveInternal(TypeVariable typeVariable, b bVar) {
            Type type = (Type) this.f4822a.get(new c(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 0) {
                    Type[] typeArrB = new TypeResolver(bVar).b(bounds);
                    if (!m.e.f4853a || !Arrays.equals(bounds, typeArrB)) {
                        return m.e(typeVariable.getGenericDeclaration(), typeVariable.getName(), typeArrB);
                    }
                }
                return typeVariable;
            }
            return new TypeResolver(bVar).resolveType(type);
        }
    }

    public static final class a extends l {

        /* renamed from: b, reason: collision with root package name */
        public final HashMap f4821b = Maps.newHashMap();

        private a() {
        }

        public static ImmutableMap f(Type type) {
            Preconditions.checkNotNull(type);
            a aVar = new a();
            aVar.visit(type);
            return ImmutableMap.copyOf((Map) aVar.f4821b);
        }

        @Override // com.google.common.reflect.l
        public final void a(Class cls) {
            visit(cls.getGenericSuperclass());
            visit(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.l
        public final void c(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Preconditions.checkState(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                c cVar = new c(typeParameters[i]);
                Type type = actualTypeArguments[i];
                HashMap map = this.f4821b;
                if (!map.containsKey(cVar)) {
                    Type type2 = type;
                    while (true) {
                        if (type2 == null) {
                            map.put(cVar, type);
                            break;
                        }
                        boolean z = type2 instanceof TypeVariable;
                        c cVar2 = null;
                        if (z ? cVar.a((TypeVariable) type2) : false) {
                            while (type != null) {
                                type = (Type) map.remove(type instanceof TypeVariable ? new c((TypeVariable) type) : null);
                            }
                        } else {
                            if (z) {
                                cVar2 = new c((TypeVariable) type2);
                            }
                            type2 = (Type) map.get(cVar2);
                        }
                    }
                }
            }
            visit(cls);
            visit(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.l
        public final void d(TypeVariable typeVariable) {
            visit(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.l
        public final void e(WildcardType wildcardType) {
            visit(wildcardType.getUpperBounds());
        }
    }

    public static class d {

        /* renamed from: b, reason: collision with root package name */
        public static final d f4824b = new d();

        /* renamed from: a, reason: collision with root package name */
        public final AtomicInteger f4825a;

        private d() {
            this(new AtomicInteger());
        }

        public d(AtomicInteger atomicInteger) {
            this.f4825a = atomicInteger;
        }

        public final Type a(Type type) {
            Preconditions.checkNotNull(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            boolean z = type instanceof GenericArrayType;
            AtomicInteger atomicInteger = this.f4825a;
            if (z) {
                return m.d(new d(atomicInteger).a(((GenericArrayType) type).getGenericComponentType()));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = (Class) parameterizedType.getRawType();
                TypeVariable[] typeParameters = cls.getTypeParameters();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    actualTypeArguments[i] = new g(atomicInteger, typeParameters[i]).a(actualTypeArguments[i]);
                }
                d dVar = new d(atomicInteger);
                Type ownerType = parameterizedType.getOwnerType();
                return m.f(ownerType == null ? null : dVar.a(ownerType), cls, actualTypeArguments);
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? b(wildcardType.getUpperBounds()) : type;
            }
            throw new AssertionError("must have been one of the known types");
        }

        public TypeVariable b(Type[] typeArr) {
            return m.e(d.class, "capture#" + this.f4825a.incrementAndGet() + "-of ? extends " + Joiner.on(Typography.amp).join(typeArr), typeArr);
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final TypeVariable f4823a;

        public c(TypeVariable typeVariable) {
            this.f4823a = (TypeVariable) Preconditions.checkNotNull(typeVariable);
        }

        public int hashCode() {
            TypeVariable typeVariable = this.f4823a;
            return Objects.hashCode(typeVariable.getGenericDeclaration(), typeVariable.getName());
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return a(((c) obj).f4823a);
            }
            return false;
        }

        public String toString() {
            return this.f4823a.toString();
        }

        public final boolean a(TypeVariable typeVariable) {
            TypeVariable typeVariable2 = this.f4823a;
            return typeVariable2.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && typeVariable2.getName().equals(typeVariable.getName());
        }
    }
}
