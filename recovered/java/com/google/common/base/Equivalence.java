package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.ForOverride;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class Equivalence<T> {
    @ForOverride
    public abstract boolean doEquivalent(T t, T t2);

    @ForOverride
    public abstract int doHash(T t);

    public final boolean equivalent(@NullableDecl T t, @NullableDecl T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return doEquivalent(t, t2);
    }

    public final int hash(@NullableDecl T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> Equivalence<F> onResultOf(Function<F, ? extends T> function) {
        return new g(function, this);
    }

    public final <S extends T> Wrapper<S> wrap(@NullableDecl S s) {
        return new Wrapper<>(this, s);
    }

    public static final class Wrapper<T> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Equivalence f3660a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f3661b;

        public Wrapper(Equivalence equivalence, Object obj) {
            this.f3660a = (Equivalence) Preconditions.checkNotNull(equivalence);
            this.f3661b = obj;
        }

        @NullableDecl
        public T get() {
            return (T) this.f3661b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Wrapper)) {
                return false;
            }
            Wrapper wrapper = (Wrapper) obj;
            Equivalence equivalence = wrapper.f3660a;
            Equivalence equivalence2 = this.f3660a;
            if (equivalence2.equals(equivalence)) {
                return equivalence2.equivalent(this.f3661b, wrapper.f3661b);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            return this.f3660a.hash(this.f3661b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f3660a);
            sb.append(".wrap(");
            return _COROUTINE.a.l(sb, this.f3661b, ")");
        }
    }

    @GwtCompatible(serializable = true)
    public final <S extends T> Equivalence<Iterable<S>> pairwise() {
        return new j(this);
    }

    public final Predicate<T> equivalentTo(@NullableDecl T t) {
        return new c(this, t);
    }

    public static final class c<T> implements Predicate<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Equivalence f3663a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f3664b;

        public c(Equivalence equivalence, Object obj) {
            this.f3663a = (Equivalence) Preconditions.checkNotNull(equivalence);
            this.f3664b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            return this.f3663a.equivalent(t, this.f3664b);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f3663a.equals(cVar.f3663a) && Objects.equal(this.f3664b, cVar.f3664b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.f3663a, this.f3664b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f3663a);
            sb.append(".equivalentTo(");
            return _COROUTINE.a.l(sb, this.f3664b, ")");
        }
    }

    public static Equivalence<Object> equals() {
        return b.f3662a;
    }

    public static Equivalence<Object> identity() {
        return d.f3665a;
    }

    public static final class b extends Equivalence<Object> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public static final b f3662a = new b();

        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    public static final class d extends Equivalence<Object> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public static final d f3665a = new d();

        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }
}
