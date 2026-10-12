package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.Invokable;
import com.google.common.reflect.TypeResolver;
import com.google.common.reflect.m;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public abstract class TypeToken<T> extends com.google.common.reflect.d<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f4826a;

    /* renamed from: b, reason: collision with root package name */
    public transient TypeResolver f4827b;
    public transient TypeResolver c;

    public static final class f<T> extends TypeToken<T> {
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class h implements Predicate<TypeToken<?>> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4834a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4835b = new b();

        public enum a extends h {
            @Override // com.google.common.base.Predicate
            public boolean apply(TypeToken<?> typeToken) {
                Type type = typeToken.f4826a;
                return ((type instanceof TypeVariable) || (type instanceof WildcardType)) ? false : true;
            }

            public a() {
                super("IGNORE_TYPE_VARIABLE_OR_WILDCARD", 0);
            }
        }

        public enum b extends h {
            public b() {
                super("INTERFACE_ONLY", 1);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        }
    }

    public class a extends Invokable.b<T> {
        @Override // com.google.common.reflect.Invokable.b, com.google.common.reflect.Invokable
        public final Type[] a() {
            TypeResolver typeResolverE = TypeToken.this.e();
            Type[] genericExceptionTypes = this.c.getGenericExceptionTypes();
            typeResolverE.c(genericExceptionTypes);
            return genericExceptionTypes;
        }

        @Override // com.google.common.reflect.Invokable.b, com.google.common.reflect.Invokable
        public final Type[] b() {
            TypeResolver typeResolverF = TypeToken.this.f();
            Type[] genericParameterTypes = this.c.getGenericParameterTypes();
            typeResolverF.c(genericParameterTypes);
            return genericParameterTypes;
        }

        @Override // com.google.common.reflect.Invokable.b, com.google.common.reflect.Invokable
        public final Type c() {
            return TypeToken.this.e().resolveType(this.c.getGenericReturnType());
        }

        public a(Method method) {
            super(method);
        }

        @Override // com.google.common.reflect.Invokable, com.google.common.reflect.a
        public TypeToken<T> getOwnerType() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.Invokable, com.google.common.reflect.a
        public String toString() {
            return getOwnerType() + "." + super.toString();
        }
    }

    public class b extends Invokable.a<T> {
        @Override // com.google.common.reflect.Invokable.a, com.google.common.reflect.Invokable
        public final Type[] a() {
            TypeResolver typeResolverE = TypeToken.this.e();
            Type[] genericExceptionTypes = this.c.getGenericExceptionTypes();
            typeResolverE.c(genericExceptionTypes);
            return genericExceptionTypes;
        }

        @Override // com.google.common.reflect.Invokable.a, com.google.common.reflect.Invokable
        public final Type[] b() {
            TypeResolver typeResolverF = TypeToken.this.f();
            Type[] typeArrB = super.b();
            typeResolverF.c(typeArrB);
            return typeArrB;
        }

        @Override // com.google.common.reflect.Invokable.a, com.google.common.reflect.Invokable
        public final Type c() {
            return TypeToken.this.e().resolveType(super.c());
        }

        public b(Constructor constructor) {
            super(constructor);
        }

        @Override // com.google.common.reflect.Invokable, com.google.common.reflect.a
        public TypeToken<T> getOwnerType() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.Invokable, com.google.common.reflect.a
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getOwnerType());
            sb.append("(");
            return _COROUTINE.a.m(sb, Joiner.on(", ").join(b()), ")");
        }
    }

    public TypeToken() {
        Type typeA = a();
        this.f4826a = typeA;
        Preconditions.checkState(!(typeA instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", typeA);
    }

    public TypeToken(Class<?> cls) {
        Type typeA = a();
        if (typeA instanceof Class) {
            this.f4826a = typeA;
        } else {
            this.f4826a = new TypeResolver().d(TypeResolver.a.f(cls)).resolveType(typeA);
        }
    }

    public TypeToken(Type type) {
        this.f4826a = (Type) Preconditions.checkNotNull(type);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new f(cls);
    }

    public static TypeToken<?> of(Type type) {
        return new f(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Class<? super T> getRawType() {
        return (Class) g().iterator().next();
    }

    public final Type getType() {
        return this.f4826a;
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, TypeToken<X> typeToken) {
        return new f(new TypeResolver().d(ImmutableMap.of(new TypeResolver.c(typeParameter.f4819a), typeToken.f4826a)).resolveType(this.f4826a));
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, Class<X> cls) {
        return where(typeParameter, of((Class) cls));
    }

    public final TypeToken<?> resolveType(Type type) {
        Preconditions.checkNotNull(type);
        return of(f().resolveType(type));
    }

    public final TypeToken j(Type type) {
        TypeToken<?> typeTokenOf = of(e().resolveType(type));
        typeTokenOf.c = this.c;
        typeTokenOf.f4827b = this.f4827b;
        return typeTokenOf;
    }

    public static ImmutableList b(Type[] typeArr) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.getRawType().isInterface()) {
                builder.add((ImmutableList.Builder) typeTokenOf);
            }
        }
        return builder.build();
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        Preconditions.checkArgument(k(cls), "%s is not a super class of %s", cls, this);
        Type type = this.f4826a;
        if (type instanceof TypeVariable) {
            return h(cls, ((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return h(cls, ((WildcardType) type).getUpperBounds());
        }
        if (!cls.isArray()) {
            return j(l(cls).f4826a);
        }
        return (TypeToken<? super T>) of(m.d.f4851a.a(((TypeToken) Preconditions.checkNotNull(getComponentType(), "%s isn't a super type of %s", cls, this)).getSupertype(cls.getComponentType()).f4826a));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.reflect.Type] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.reflect.TypeToken<? extends T> getSubtype(java.lang.Class<?> r4) {
        /*
            r3 = this;
            java.lang.reflect.Type r0 = r3.f4826a
            boolean r1 = r0 instanceof java.lang.reflect.TypeVariable
            r1 = r1 ^ 1
            java.lang.String r2 = "Cannot get subtype of type variable <%s>"
            com.google.common.base.Preconditions.checkArgument(r1, r2, r3)
            boolean r1 = r0 instanceof java.lang.reflect.WildcardType
            if (r1 == 0) goto L3e
            java.lang.reflect.WildcardType r0 = (java.lang.reflect.WildcardType) r0
            java.lang.reflect.Type[] r0 = r0.getLowerBounds()
            int r1 = r0.length
            if (r1 <= 0) goto L24
            r1 = 0
            r0 = r0[r1]
            com.google.common.reflect.TypeToken r0 = of(r0)
            com.google.common.reflect.TypeToken r4 = r0.getSubtype(r4)
            return r4
        L24:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            java.lang.String r4 = " isn't a subclass of "
            r1.append(r4)
            r1.append(r3)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4)
            throw r0
        L3e:
            boolean r1 = r3.isArray()
            if (r1 == 0) goto L5d
            com.google.common.reflect.TypeToken r0 = r3.getComponentType()
            java.lang.Class r4 = r4.getComponentType()
            com.google.common.reflect.TypeToken r4 = r0.getSubtype(r4)
            java.lang.reflect.Type r4 = r4.f4826a
            com.google.common.reflect.m$d$b r0 = com.google.common.reflect.m.d.f4851a
            java.lang.reflect.Type r4 = r0.a(r4)
            com.google.common.reflect.TypeToken r4 = of(r4)
            return r4
        L5d:
            java.lang.Class r1 = r3.getRawType()
            boolean r1 = r1.isAssignableFrom(r4)
            java.lang.String r2 = "%s isn't a subclass of %s"
            com.google.common.base.Preconditions.checkArgument(r1, r2, r4, r3)
            boolean r1 = r0 instanceof java.lang.Class
            if (r1 == 0) goto L81
            java.lang.reflect.TypeVariable[] r1 = r4.getTypeParameters()
            int r1 = r1.length
            if (r1 == 0) goto L9e
            java.lang.Class r1 = r3.getRawType()
            java.lang.reflect.TypeVariable[] r1 = r1.getTypeParameters()
            int r1 = r1.length
            if (r1 == 0) goto L81
            goto L9e
        L81:
            com.google.common.reflect.TypeToken r4 = l(r4)
            java.lang.Class r1 = r3.getRawType()
            com.google.common.reflect.TypeToken r1 = r4.getSupertype(r1)
            java.lang.reflect.Type r1 = r1.f4826a
            com.google.common.reflect.TypeResolver r2 = new com.google.common.reflect.TypeResolver
            r2.<init>()
            com.google.common.reflect.TypeResolver r0 = r2.where(r1, r0)
            java.lang.reflect.Type r4 = r4.f4826a
            java.lang.reflect.Type r4 = r0.resolveType(r4)
        L9e:
            com.google.common.reflect.TypeToken r4 = of(r4)
            boolean r0 = r4.isSubtypeOf(r3)
            java.lang.String r1 = "%s does not appear to be a subtype of %s"
            com.google.common.base.Preconditions.checkArgument(r0, r1, r4, r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.reflect.TypeToken.getSubtype(java.lang.Class):com.google.common.reflect.TypeToken");
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isSubtypeOf(java.lang.reflect.Type r15) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.reflect.TypeToken.isSubtypeOf(java.lang.reflect.Type):boolean");
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.f4826a;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? of(Primitives.wrap((Class) this.f4826a)) : this;
    }

    public final TypeToken<T> unwrap() {
        Set<Class<?>> setAllWrapperTypes = Primitives.allWrapperTypes();
        Type type = this.f4826a;
        return setAllWrapperTypes.contains(type) ? of(Primitives.unwrap((Class) type)) : this;
    }

    @NullableDecl
    public final TypeToken<?> getComponentType() {
        Type typeC = m.c(this.f4826a);
        if (typeC == null) {
            return null;
        }
        return of(typeC);
    }

    public final Invokable<T, Object> method(Method method) {
        Preconditions.checkArgument(k(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new a(method);
    }

    public final Invokable<T, T> constructor(Constructor<?> constructor) {
        Preconditions.checkArgument(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new b(constructor);
    }

    public class TypeSet extends ForwardingSet<TypeToken<? super T>> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public transient ImmutableSet f4828a;

        public TypeSet() {
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new e(this);
        }

        public TypeToken<T>.TypeSet classes() {
            return new d();
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet immutableSet = this.f4828a;
            if (immutableSet != null) {
                return immutableSet;
            }
            g.a aVar = g.f4832a;
            TypeToken typeToken = TypeToken.this;
            aVar.getClass();
            ImmutableSet set = FluentIterable.from(aVar.b(ImmutableList.of(typeToken))).filter(h.f4834a).toSet();
            this.f4828a = set;
            return set;
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) g.f4833b.b(TypeToken.this.g()));
        }
    }

    public final class e extends TypeToken<T>.TypeSet {
        public final transient TypeSet c;
        public transient ImmutableSet d;

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        public e(TypeSet typeSet) {
            super();
            this.c = typeSet;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet immutableSet = this.d;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet set = FluentIterable.from(this.c).filter(h.f4835b).toSet();
            this.d = set;
            return set;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return FluentIterable.from(g.f4833b.b(TypeToken.this.g())).filter(new a()).toSet();
        }

        public class a implements Predicate<Class<?>> {
            @Override // com.google.common.base.Predicate
            public boolean apply(Class<?> cls) {
                return cls.isInterface();
            }
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }
    }

    public final class d extends TypeToken<T>.TypeSet {
        public transient ImmutableSet c;

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        public d() {
            super();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet immutableSet = this.c;
            if (immutableSet != null) {
                return immutableSet;
            }
            g.a aVar = g.f4832a;
            aVar.getClass();
            ImmutableSet set = FluentIterable.from(new j(aVar).b(ImmutableList.of(TypeToken.this))).filter(h.f4834a).toSet();
            this.c = set;
            return set;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            g.b bVar = g.f4833b;
            bVar.getClass();
            return ImmutableSet.copyOf((Collection) new j(bVar).b(TypeToken.this.g()));
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof TypeToken) {
            return this.f4826a.equals(((TypeToken) obj).f4826a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4826a.hashCode();
    }

    public String toString() {
        Function function = m.f4846a;
        Type type = this.f4826a;
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public Object writeReplace() {
        return of(new TypeResolver().resolveType(this.f4826a));
    }

    public final void i() {
        new com.google.common.reflect.h(this).visit(this.f4826a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean k(Class cls) {
        UnmodifiableIterator it = g().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom((Class) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static Type d(Type type) {
        Type typeD;
        if (!(type instanceof ParameterizedType)) {
            return type instanceof GenericArrayType ? m.d(d(((GenericArrayType) type).getGenericComponentType())) : type;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            TypeVariable<Class<T>> typeVariable = typeParameters[i];
            Type type2 = actualTypeArguments[i];
            if (type2 instanceof WildcardType) {
                typeD = c(typeVariable, (WildcardType) type2);
            } else {
                typeD = d(type2);
            }
            actualTypeArguments[i] = typeD;
        }
        return m.f(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    public static WildcardType c(TypeVariable typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!new c(bounds, true).a(type)) {
                arrayList.add(d(type));
            }
        }
        return new m.i(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final Type[] f4830a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f4831b;

        public c(Type[] typeArr, boolean z) {
            this.f4830a = typeArr;
            this.f4831b = z;
        }

        public final boolean a(Type type) {
            Type[] typeArr = this.f4830a;
            int length = typeArr.length;
            int i = 0;
            while (true) {
                boolean z = this.f4831b;
                if (i >= length) {
                    return !z;
                }
                if (TypeToken.of(typeArr[i]).isSubtypeOf(type) == z) {
                    return z;
                }
                i++;
            }
        }
    }

    public final ImmutableSet g() {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        new i(builder).visit(this.f4826a);
        return builder.build();
    }

    public static TypeToken l(Class cls) {
        if (cls.isArray()) {
            return of(m.d(l(cls.getComponentType()).f4826a));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : l(cls.getEnclosingClass()).f4826a;
        if (typeParameters.length > 0 || (type != null && type != cls.getEnclosingClass())) {
            return of(m.f(type, cls, typeParameters));
        }
        return of(cls);
    }

    public final TypeResolver e() {
        TypeResolver typeResolver = this.c;
        if (typeResolver != null) {
            return typeResolver;
        }
        TypeResolver typeResolverD = new TypeResolver().d(TypeResolver.a.f(this.f4826a));
        this.c = typeResolverD;
        return typeResolverD;
    }

    public final TypeResolver f() {
        TypeResolver typeResolver = this.f4827b;
        if (typeResolver != null) {
            return typeResolver;
        }
        TypeResolver typeResolverD = new TypeResolver().d(TypeResolver.a.f(TypeResolver.d.f4824b.a(this.f4826a)));
        this.f4827b = typeResolverD;
        return typeResolverD;
    }

    public final TypeToken h(Class cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.isSubtypeOf(cls)) {
                return typeTokenOf.getSupertype(cls);
            }
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    public static abstract class g<K> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4832a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4833b = new b();

        public abstract Iterable c(Object obj);

        public abstract Class d(Object obj);

        public abstract Object e(Object obj);

        private g() {
        }

        public /* synthetic */ g(int i) {
            this();
        }

        public static class a extends g<TypeToken<?>> {
            public a() {
                super(0);
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Iterable c(Object obj) {
                TypeToken typeToken = (TypeToken) obj;
                Type type = typeToken.f4826a;
                if (type instanceof TypeVariable) {
                    return TypeToken.b(((TypeVariable) type).getBounds());
                }
                if (type instanceof WildcardType) {
                    return TypeToken.b(((WildcardType) type).getUpperBounds());
                }
                ImmutableList.Builder builder = ImmutableList.builder();
                for (Type type2 : typeToken.getRawType().getGenericInterfaces()) {
                    builder.add((ImmutableList.Builder) typeToken.j(type2));
                }
                return builder.build();
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Class d(Object obj) {
                return ((TypeToken) obj).getRawType();
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Object e(Object obj) {
                TypeToken typeToken = (TypeToken) obj;
                Type type = typeToken.f4826a;
                if (!(type instanceof TypeVariable)) {
                    if (!(type instanceof WildcardType)) {
                        Type genericSuperclass = typeToken.getRawType().getGenericSuperclass();
                        if (genericSuperclass == null) {
                            return null;
                        }
                        return typeToken.j(genericSuperclass);
                    }
                    TypeToken<?> typeTokenOf = TypeToken.of(((WildcardType) type).getUpperBounds()[0]);
                    if (typeTokenOf.getRawType().isInterface()) {
                        return null;
                    }
                    return typeTokenOf;
                }
                TypeToken<?> typeTokenOf2 = TypeToken.of(((TypeVariable) type).getBounds()[0]);
                if (typeTokenOf2.getRawType().isInterface()) {
                    return null;
                }
                return typeTokenOf2;
            }
        }

        public static class b extends g<Class<?>> {
            public b() {
                super(0);
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Iterable c(Object obj) {
                return Arrays.asList(((Class) obj).getInterfaces());
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Class d(Object obj) {
                return (Class) obj;
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Object e(Object obj) {
                return ((Class) obj).getSuperclass();
            }
        }

        public ImmutableList b(ImmutableCollection immutableCollection) {
            HashMap mapNewHashMap = Maps.newHashMap();
            Iterator<E> it = immutableCollection.iterator();
            while (it.hasNext()) {
                a(it.next(), mapNewHashMap);
            }
            return new k(Ordering.natural().reverse(), mapNewHashMap).immutableSortedCopy(mapNewHashMap.keySet());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int a(Object obj, HashMap map) {
            Integer num = (Integer) map.get(obj);
            if (num != null) {
                return num.intValue();
            }
            boolean zIsInterface = d(obj).isInterface();
            Iterator<T> it = c(obj).iterator();
            int iMax = zIsInterface;
            while (it.hasNext()) {
                iMax = Math.max(iMax, a(it.next(), map));
            }
            Object objE = e(obj);
            int iMax2 = iMax;
            if (objE != null) {
                iMax2 = Math.max(iMax, a(objE, map));
            }
            int i = iMax2 + 1;
            map.put(obj, Integer.valueOf(i));
            return i;
        }

        public static class c<K> extends g<K> {
            public final g c;

            public c(g gVar) {
                super(0);
                this.c = gVar;
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Class d(Object obj) {
                return this.c.d(obj);
            }

            @Override // com.google.common.reflect.TypeToken.g
            public Iterable c(Object obj) {
                return this.c.c(obj);
            }

            @Override // com.google.common.reflect.TypeToken.g
            public final Object e(Object obj) {
                return this.c.e(obj);
            }
        }
    }
}
