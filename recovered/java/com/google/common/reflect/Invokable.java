package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.reflect.m;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public abstract class Invokable<T, R> extends com.google.common.reflect.a implements GenericDeclaration {
    public abstract Type[] a();

    public abstract Type[] b();

    public abstract Type c();

    public abstract Annotation[][] d();

    public abstract Object e(Object obj, Object[] objArr);

    public abstract boolean isOverridable();

    public abstract boolean isVarArgs();

    @Override // com.google.common.reflect.a
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.reflect.a
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.reflect.a
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static class a<T> extends Invokable<T, T> {
        public final Constructor c;

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return false;
        }

        public a(Constructor constructor) {
            super(constructor);
            this.c = constructor;
        }

        @Override // com.google.common.reflect.Invokable
        public final Object e(Object obj, Object[] objArr) {
            Constructor constructor = this.c;
            try {
                return constructor.newInstance(objArr);
            } catch (InstantiationException e) {
                throw new RuntimeException(constructor + " failed.", e);
            }
        }

        @Override // com.google.common.reflect.Invokable
        public Type c() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            if (typeParameters.length <= 0) {
                return declaringClass;
            }
            Function function = m.f4846a;
            return new m.f(m.b.f4848a.a(declaringClass), declaringClass, typeParameters);
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x0015  */
        @Override // com.google.common.reflect.Invokable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.reflect.Type[] b() {
            /*
                r6 = this;
                java.lang.reflect.Constructor r0 = r6.c
                java.lang.reflect.Type[] r1 = r0.getGenericParameterTypes()
                int r2 = r1.length
                if (r2 <= 0) goto L57
                java.lang.Class r2 = r0.getDeclaringClass()
                java.lang.reflect.Constructor r3 = r2.getEnclosingConstructor()
                r4 = 0
                r5 = 1
                if (r3 == 0) goto L17
            L15:
                r2 = 1
                goto L39
            L17:
                java.lang.reflect.Method r3 = r2.getEnclosingMethod()
                if (r3 == 0) goto L27
                int r2 = r3.getModifiers()
                boolean r2 = java.lang.reflect.Modifier.isStatic(r2)
                r2 = r2 ^ r5
                goto L39
            L27:
                java.lang.Class r3 = r2.getEnclosingClass()
                if (r3 == 0) goto L38
                int r2 = r2.getModifiers()
                boolean r2 = java.lang.reflect.Modifier.isStatic(r2)
                if (r2 != 0) goto L38
                goto L15
            L38:
                r2 = 0
            L39:
                if (r2 == 0) goto L57
                java.lang.Class[] r0 = r0.getParameterTypes()
                int r2 = r1.length
                int r3 = r0.length
                if (r2 != r3) goto L57
                r0 = r0[r4]
                java.lang.Class r2 = r6.getDeclaringClass()
                java.lang.Class r2 = r2.getEnclosingClass()
                if (r0 != r2) goto L57
                int r0 = r1.length
                java.lang.Object[] r0 = java.util.Arrays.copyOfRange(r1, r5, r0)
                java.lang.reflect.Type[] r0 = (java.lang.reflect.Type[]) r0
                return r0
            L57:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.reflect.Invokable.a.b():java.lang.reflect.Type[]");
        }

        @Override // com.google.common.reflect.Invokable
        public Type[] a() {
            return this.c.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        public final Annotation[][] d() {
            return this.c.getParameterAnnotations();
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<T>>[] typeParameters2 = this.c.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.c.isVarArgs();
        }
    }

    public static class b<T> extends Invokable<T, Object> {
        public final Method c;

        public b(Method method) {
            super(method);
            this.c = method;
        }

        @Override // com.google.common.reflect.Invokable
        public final Object e(Object obj, Object[] objArr) {
            return this.c.invoke(obj, objArr);
        }

        @Override // com.google.common.reflect.Invokable
        public Type c() {
            return this.c.getGenericReturnType();
        }

        @Override // com.google.common.reflect.Invokable
        public Type[] b() {
            return this.c.getGenericParameterTypes();
        }

        @Override // com.google.common.reflect.Invokable
        public Type[] a() {
            return this.c.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        public final Annotation[][] d() {
            return this.c.getParameterAnnotations();
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            return this.c.getTypeParameters();
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return (isFinal() || isPrivate() || isStatic() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.c.isVarArgs();
        }
    }

    public static Invokable<?, Object> from(Method method) {
        return new b(method);
    }

    public static <T> Invokable<T, T> from(Constructor<T> constructor) {
        return new a(constructor);
    }

    @CanIgnoreReturnValue
    public final R invoke(@NullableDecl T t, Object... objArr) throws IllegalAccessException, InvocationTargetException {
        return (R) e(t, (Object[]) Preconditions.checkNotNull(objArr));
    }

    public final TypeToken<? extends R> getReturnType() {
        return (TypeToken<? extends R>) TypeToken.of(c());
    }

    public final ImmutableList<Parameter> getParameters() {
        Type[] typeArrB = b();
        Annotation[][] annotationArrD = d();
        ImmutableList.Builder builder = ImmutableList.builder();
        for (int i = 0; i < typeArrB.length; i++) {
            builder.add((ImmutableList.Builder) new Parameter(this, i, TypeToken.of(typeArrB[i]), annotationArrD[i]));
        }
        return builder.build();
    }

    public final ImmutableList<TypeToken<? extends Throwable>> getExceptionTypes() {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : a()) {
            builder.add((ImmutableList.Builder) TypeToken.of(type));
        }
        return builder.build();
    }

    public final <R1 extends R> Invokable<T, R1> returning(Class<R1> cls) {
        return returning(TypeToken.of((Class) cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R1 extends R> Invokable<T, R1> returning(TypeToken<R1> typeToken) {
        if (typeToken.isSupertypeOf(getReturnType())) {
            return this;
        }
        throw new IllegalArgumentException("Invokable is known to return " + getReturnType() + ", not " + typeToken);
    }

    @Override // com.google.common.reflect.a, java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) super.getDeclaringClass();
    }

    @Override // com.google.common.reflect.a
    public TypeToken<T> getOwnerType() {
        return TypeToken.of((Class) getDeclaringClass());
    }
}
