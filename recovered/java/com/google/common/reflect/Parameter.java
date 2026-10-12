package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public final class Parameter implements AnnotatedElement {

    /* renamed from: a, reason: collision with root package name */
    public final Invokable f4817a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4818b;
    public final TypeToken c;
    public final ImmutableList d;

    public Parameter(Invokable invokable, int i, TypeToken typeToken, Annotation[] annotationArr) {
        this.f4817a = invokable;
        this.f4818b = i;
        this.c = typeToken;
        this.d = ImmutableList.copyOf(annotationArr);
    }

    public TypeToken<?> getType() {
        return this.c;
    }

    public Invokable<?, ?> getDeclaringInvokable() {
        return this.f4817a;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return getAnnotation(cls) != null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    @NullableDecl
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        Preconditions.checkNotNull(cls);
        UnmodifiableIterator it = this.d.iterator();
        while (it.hasNext()) {
            Annotation annotation = (Annotation) it.next();
            if (cls.isInstance(annotation)) {
                return cls.cast(annotation);
            }
        }
        return null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getDeclaredAnnotationsByType(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        return (Annotation[]) this.d.toArray(new Annotation[0]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @NullableDecl
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        Preconditions.checkNotNull(cls);
        return (A) FluentIterable.from(this.d).filter(cls).first().orNull();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) FluentIterable.from(this.d).filter(cls).toArray(cls));
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof Parameter) {
            Parameter parameter = (Parameter) obj;
            if (this.f4818b == parameter.f4818b && this.f4817a.equals(parameter.f4817a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f4818b;
    }

    public String toString() {
        return this.c + " arg" + this.f4818b;
    }
}
