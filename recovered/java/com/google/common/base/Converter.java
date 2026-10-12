package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class Converter<A, B> implements Function<A, B> {

    /* renamed from: a, reason: collision with root package name */
    public transient Converter f3649a;

    @ForOverride
    public abstract A doBackward(B b2);

    @ForOverride
    public abstract B doForward(A a2);

    @CanIgnoreReturnValue
    @NullableDecl
    public final B convert(@NullableDecl A a2) {
        return (B) b(a2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object b(Object obj) {
        if (obj == 0) {
            return null;
        }
        return Preconditions.checkNotNull(doForward(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object a(Object obj) {
        if (obj == 0) {
            return null;
        }
        return Preconditions.checkNotNull(doBackward(obj));
    }

    public class a implements Iterable<B> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Iterable f3650a;

        public a(Iterable iterable) {
            this.f3650a = iterable;
        }

        /* renamed from: com.google.common.base.Converter$a$a, reason: collision with other inner class name */
        public class C0088a implements Iterator<B> {

            /* renamed from: a, reason: collision with root package name */
            public final Iterator f3652a;

            public C0088a() {
                this.f3652a = a.this.f3650a.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f3652a.hasNext();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Iterator
            public B next() {
                return (B) Converter.this.convert(this.f3652a.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f3652a.remove();
            }
        }

        @Override // java.lang.Iterable
        public Iterator<B> iterator() {
            return new C0088a();
        }
    }

    @CanIgnoreReturnValue
    public Iterable<B> convertAll(Iterable<? extends A> iterable) {
        Preconditions.checkNotNull(iterable, "fromIterable");
        return new a(iterable);
    }

    @CanIgnoreReturnValue
    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.f3649a;
        if (converter != null) {
            return converter;
        }
        e eVar = new e(this);
        this.f3649a = eVar;
        return eVar;
    }

    public static final class e<A, B> extends Converter<B, A> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final Converter f3657b;

        public e(Converter converter) {
            this.f3657b = converter;
        }

        @Override // com.google.common.base.Converter
        public A doForward(B b2) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public B doBackward(A a2) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            return this.f3657b.a(obj);
        }

        @Override // com.google.common.base.Converter
        public final Object a(Object obj) {
            return this.f3657b.b(obj);
        }

        @Override // com.google.common.base.Converter
        public Converter<A, B> reverse() {
            return this.f3657b;
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                return this.f3657b.equals(((e) obj).f3657b);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f3657b.hashCode();
        }

        public String toString() {
            return this.f3657b + ".reverse()";
        }
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return c(converter);
    }

    public Converter c(Converter converter) {
        return new b(this, (Converter) Preconditions.checkNotNull(converter));
    }

    public static final class b<A, B, C> extends Converter<A, C> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final Converter f3654b;
        public final Converter c;

        public b(Converter converter, Converter converter2) {
            this.f3654b = converter;
            this.c = converter2;
        }

        @Override // com.google.common.base.Converter
        public C doForward(A a2) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public A doBackward(C c) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            return this.c.b(this.f3654b.b(obj));
        }

        @Override // com.google.common.base.Converter
        public final Object a(Object obj) {
            return this.f3654b.a(this.c.a(obj));
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f3654b.equals(bVar.f3654b) && this.c.equals(bVar.c)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.c.hashCode() + (this.f3654b.hashCode() * 31);
        }

        public String toString() {
            return this.f3654b + ".andThen(" + this.c + ")";
        }
    }

    @Override // com.google.common.base.Function
    @CanIgnoreReturnValue
    @NullableDecl
    @Deprecated
    public final B apply(@NullableDecl A a2) {
        return convert(a2);
    }

    @Override // com.google.common.base.Function
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public static <A, B> Converter<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new c(function, function2);
    }

    public static final class c<A, B> extends Converter<A, B> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final Function f3655b;
        public final Function c;

        public c(Function function, Function function2) {
            this.f3655b = (Function) Preconditions.checkNotNull(function);
            this.c = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.google.common.base.Converter
        public B doForward(A a2) {
            return (B) this.f3655b.apply(a2);
        }

        @Override // com.google.common.base.Converter
        public A doBackward(B b2) {
            return (A) this.c.apply(b2);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f3655b.equals(cVar.f3655b) && this.c.equals(cVar.c)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.c.hashCode() + (this.f3655b.hashCode() * 31);
        }

        public String toString() {
            return "Converter.from(" + this.f3655b + ", " + this.c + ")";
        }
    }

    public static <T> Converter<T, T> identity() {
        return d.f3656b;
    }

    public static final class d<T> extends Converter<T, T> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final d f3656b = new d();

        @Override // com.google.common.base.Converter
        public T doBackward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        public T doForward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        public d<T> reverse() {
            return this;
        }

        private d() {
        }

        @Override // com.google.common.base.Converter
        public final Converter c(Converter converter) {
            return (Converter) Preconditions.checkNotNull(converter, "otherConverter");
        }

        public String toString() {
            return "Converter.identity()";
        }
    }
}
