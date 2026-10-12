package com.google.common.reflect;

import com.google.common.base.Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class a extends AccessibleObject implements Member {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibleObject f4836a;

    /* renamed from: b, reason: collision with root package name */
    public final Member f4837b;

    /* JADX WARN: Multi-variable type inference failed */
    public a(AccessibleObject accessibleObject) {
        Preconditions.checkNotNull(accessibleObject);
        this.f4836a = accessibleObject;
        this.f4837b = (Member) accessibleObject;
    }

    public TypeToken<?> getOwnerType() {
        return TypeToken.of((Class) getDeclaringClass());
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f4836a.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f4836a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f4836a.getAnnotations();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f4836a.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.AccessibleObject
    public final void setAccessible(boolean z) throws SecurityException {
        this.f4836a.setAccessible(z);
    }

    @Override // java.lang.reflect.AccessibleObject
    public final boolean isAccessible() {
        return this.f4836a.isAccessible();
    }

    public Class<?> getDeclaringClass() {
        return this.f4837b.getDeclaringClass();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f4837b.getName();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f4837b.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f4837b.isSynthetic();
    }

    public final boolean isPublic() {
        return Modifier.isPublic(getModifiers());
    }

    public final boolean isProtected() {
        return Modifier.isProtected(getModifiers());
    }

    public final boolean isPackagePrivate() {
        return (isPrivate() || isPublic() || isProtected()) ? false : true;
    }

    public final boolean isPrivate() {
        return Modifier.isPrivate(getModifiers());
    }

    public final boolean isStatic() {
        return Modifier.isStatic(getModifiers());
    }

    public final boolean isFinal() {
        return Modifier.isFinal(getModifiers());
    }

    public final boolean isAbstract() {
        return Modifier.isAbstract(getModifiers());
    }

    public final boolean isNative() {
        return Modifier.isNative(getModifiers());
    }

    public final boolean isSynchronized() {
        return Modifier.isSynchronized(getModifiers());
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (getOwnerType().equals(aVar.getOwnerType()) && this.f4837b.equals(aVar.f4837b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f4837b.hashCode();
    }

    public String toString() {
        return this.f4837b.toString();
    }
}
