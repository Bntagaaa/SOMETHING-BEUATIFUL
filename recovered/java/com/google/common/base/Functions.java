package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Functions {
    private Functions() {
    }

    public static Function<Object, String> toStringFunction() {
        return i.f3677a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class i implements Function<Object, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final i f3677a = new i("INSTANCE", 0);

        @Override // com.google.common.base.Function
        public String apply(Object obj) {
            Preconditions.checkNotNull(obj);
            return obj.toString();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.toStringFunction()";
        }
    }

    public static <E> Function<E, E> identity() {
        return f.f3674a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class f implements Function<Object, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f3674a = new f("INSTANCE", 0);

        @Override // com.google.common.base.Function
        @NullableDecl
        public Object apply(@NullableDecl Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.identity()";
        }
    }

    public static <K, V> Function<K, V> forMap(Map<K, V> map) {
        return new e(map);
    }

    public static <K, V> Function<K, V> forMap(Map<K, ? extends V> map, @NullableDecl V v) {
        return new c(map, v);
    }

    public static class e<K, V> implements Function<K, V>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Map f3673a;

        public e(Map map) {
            this.f3673a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.base.Function
        public V apply(@NullableDecl K k) {
            Map map = this.f3673a;
            V v = (V) map.get(k);
            Preconditions.checkArgument(v != null || map.containsKey(k), "Key '%s' not present in map", k);
            return v;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                return this.f3673a.equals(((e) obj).f3673a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3673a.hashCode();
        }

        public String toString() {
            return "Functions.forMap(" + this.f3673a + ")";
        }
    }

    public static class c<K, V> implements Function<K, V>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Map f3669a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f3670b;

        public c(Map map, Object obj) {
            this.f3669a = (Map) Preconditions.checkNotNull(map);
            this.f3670b = obj;
        }

        @Override // com.google.common.base.Function
        public V apply(@NullableDecl K k) {
            Map map = this.f3669a;
            V v = (V) map.get(k);
            return (v != null || map.containsKey(k)) ? v : (V) this.f3670b;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f3669a.equals(cVar.f3669a) && Objects.equal(this.f3670b, cVar.f3670b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.f3669a, this.f3670b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Functions.forMap(");
            sb.append(this.f3669a);
            sb.append(", defaultValue=");
            return _COROUTINE.a.l(sb, this.f3670b, ")");
        }
    }

    public static <A, B, C> Function<A, C> compose(Function<B, C> function, Function<A, ? extends B> function2) {
        return new d(function, function2);
    }

    public static class d<A, B, C> implements Function<A, C>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Function f3671a;

        /* renamed from: b, reason: collision with root package name */
        public final Function f3672b;

        public d(Function<B, C> function, Function<A, ? extends B> function2) {
            this.f3671a = (Function) Preconditions.checkNotNull(function);
            this.f3672b = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.google.common.base.Function
        public C apply(@NullableDecl A a2) {
            return (C) this.f3671a.apply(this.f3672b.apply(a2));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (this.f3672b.equals(dVar.f3672b) && this.f3671a.equals(dVar.f3671a)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f3672b.hashCode() ^ this.f3671a.hashCode();
        }

        public String toString() {
            return this.f3671a + "(" + this.f3672b + ")";
        }
    }

    public static <T> Function<T, Boolean> forPredicate(Predicate<T> predicate) {
        return new g(predicate);
    }

    public static class g<T> implements Function<T, Boolean>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Predicate f3675a;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Function
        public /* bridge */ /* synthetic */ Boolean apply(@NullableDecl Object obj) {
            return apply((g<T>) obj);
        }

        public g(Predicate predicate) {
            this.f3675a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Function
        public Boolean apply(@NullableDecl T t) {
            return Boolean.valueOf(this.f3675a.apply(t));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof g) {
                return this.f3675a.equals(((g) obj).f3675a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3675a.hashCode();
        }

        public String toString() {
            return "Functions.forPredicate(" + this.f3675a + ")";
        }
    }

    public static <E> Function<Object, E> constant(@NullableDecl E e2) {
        return new b(e2);
    }

    public static class b<E> implements Function<Object, E>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3668a;

        public b(@NullableDecl E e) {
            this.f3668a = e;
        }

        @Override // com.google.common.base.Function
        public E apply(@NullableDecl Object obj) {
            return (E) this.f3668a;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return Objects.equal(this.f3668a, ((b) obj).f3668a);
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.f3668a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public String toString() {
            return _COROUTINE.a.l(new StringBuilder("Functions.constant("), this.f3668a, ")");
        }
    }

    public static <T> Function<Object, T> forSupplier(Supplier<T> supplier) {
        return new h(supplier);
    }

    public static class h<T> implements Function<Object, T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Supplier f3676a;

        public h(Supplier supplier) {
            this.f3676a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Function
        public T apply(@NullableDecl Object obj) {
            return (T) this.f3676a.get();
        }

        @Override // com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof h) {
                return this.f3676a.equals(((h) obj).f3676a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3676a.hashCode();
        }

        public String toString() {
            return "Functions.forSupplier(" + this.f3676a + ")";
        }
    }
}
