package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.l;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Suppliers {

    public interface e<T> extends Function<Supplier<T>, T> {
    }

    private Suppliers() {
    }

    public static <F, T> Supplier<T> compose(Function<? super F, T> function, Supplier<F> supplier) {
        return new d(function, supplier);
    }

    public static class d<F, T> implements Supplier<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Function f3721a;

        /* renamed from: b, reason: collision with root package name */
        public final Supplier f3722b;

        public d(Function function, Supplier supplier) {
            this.f3721a = (Function) Preconditions.checkNotNull(function);
            this.f3722b = (Supplier) Preconditions.checkNotNull(supplier);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Supplier
        public T get() {
            return (T) this.f3721a.apply(this.f3722b.get());
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (this.f3721a.equals(dVar.f3721a) && this.f3722b.equals(dVar.f3722b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.f3721a, this.f3722b);
        }

        public String toString() {
            return "Suppliers.compose(" + this.f3721a + ", " + this.f3722b + ")";
        }
    }

    public static <T> Supplier<T> memoize(Supplier<T> supplier) {
        if ((supplier instanceof c) || (supplier instanceof b)) {
            return supplier;
        }
        if (supplier instanceof Serializable) {
            return new b(supplier);
        }
        c cVar = new c();
        cVar.f3719a = (Supplier) Preconditions.checkNotNull(supplier);
        return cVar;
    }

    @VisibleForTesting
    public static class b<T> implements Supplier<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Supplier f3717a;

        /* renamed from: b, reason: collision with root package name */
        public volatile transient boolean f3718b;
        public transient Object c;

        public b(Supplier supplier) {
            this.f3717a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.f3718b) {
                synchronized (this) {
                    try {
                        if (!this.f3718b) {
                            T t = (T) this.f3717a.get();
                            this.c = t;
                            this.f3718b = true;
                            return t;
                        }
                    } finally {
                    }
                }
            }
            return (T) this.c;
        }

        public String toString() {
            return _COROUTINE.a.l(new StringBuilder("Suppliers.memoize("), this.f3718b ? _COROUTINE.a.l(new StringBuilder("<supplier that returned "), this.c, ">") : this.f3717a, ")");
        }
    }

    @VisibleForTesting
    public static class c<T> implements Supplier<T> {

        /* renamed from: a, reason: collision with root package name */
        public volatile Supplier f3719a;

        /* renamed from: b, reason: collision with root package name */
        public volatile boolean f3720b;
        public Object c;

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.f3720b) {
                synchronized (this) {
                    try {
                        if (!this.f3720b) {
                            T t = (T) this.f3719a.get();
                            this.c = t;
                            this.f3720b = true;
                            this.f3719a = null;
                            return t;
                        }
                    } finally {
                    }
                }
            }
            return (T) this.c;
        }

        public String toString() {
            Object objL = this.f3719a;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (objL == null) {
                objL = _COROUTINE.a.l(new StringBuilder("<supplier that returned "), this.c, ">");
            }
            return _COROUTINE.a.l(sb, objL, ")");
        }
    }

    public static <T> Supplier<T> memoizeWithExpiration(Supplier<T> supplier, long j, TimeUnit timeUnit) {
        return new a(supplier, j, timeUnit);
    }

    @VisibleForTesting
    public static class a<T> implements Supplier<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Supplier f3715a;

        /* renamed from: b, reason: collision with root package name */
        public final long f3716b;
        public volatile transient Object c;
        public volatile transient long d;

        public a(Supplier supplier, long j, TimeUnit timeUnit) {
            this.f3715a = (Supplier) Preconditions.checkNotNull(supplier);
            this.f3716b = timeUnit.toNanos(j);
            Preconditions.checkArgument(j > 0, "duration (%s %s) must be > 0", j, timeUnit);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            long j = this.d;
            l.b bVar = l.f3745a;
            long jNanoTime = System.nanoTime();
            if (j == 0 || jNanoTime - j >= 0) {
                synchronized (this) {
                    try {
                        if (j == this.d) {
                            T t = (T) this.f3715a.get();
                            this.c = t;
                            long j2 = jNanoTime + this.f3716b;
                            if (j2 == 0) {
                                j2 = 1;
                            }
                            this.d = j2;
                            return t;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (T) this.c;
        }

        public String toString() {
            return "Suppliers.memoizeWithExpiration(" + this.f3715a + ", " + this.f3716b + ", NANOS)";
        }
    }

    public static <T> Supplier<T> ofInstance(@NullableDecl T t) {
        return new g(t);
    }

    public static class g<T> implements Supplier<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3724a;

        public g(Object obj) {
            this.f3724a = obj;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return (T) this.f3724a;
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof g) {
                return Objects.equal(this.f3724a, ((g) obj).f3724a);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.f3724a);
        }

        public String toString() {
            return _COROUTINE.a.l(new StringBuilder("Suppliers.ofInstance("), this.f3724a, ")");
        }
    }

    public static <T> Supplier<T> synchronizedSupplier(Supplier<T> supplier) {
        return new h(supplier);
    }

    public static class h<T> implements Supplier<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Supplier f3725a;

        public h(Supplier supplier) {
            this.f3725a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            T t;
            synchronized (this.f3725a) {
                t = (T) this.f3725a.get();
            }
            return t;
        }

        public String toString() {
            return "Suppliers.synchronizedSupplier(" + this.f3725a + ")";
        }
    }

    public static <T> Function<Supplier<T>, T> supplierFunction() {
        return f.f3723a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class f implements e<Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f3723a = new f("INSTANCE", 0);

        @Override // com.google.common.base.Function
        public Object apply(Supplier<Object> supplier) {
            return supplier.get();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Suppliers.supplierFunction()";
        }
    }
}
