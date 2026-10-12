package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.l;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Predicates {
    private Predicates() {
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> alwaysTrue() {
        return j.f3696a;
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> alwaysFalse() {
        return j.f3697b;
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> isNull() {
        return j.c;
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> notNull() {
        return j.d;
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return new i(predicate);
    }

    public static <T> Predicate<T> and(Iterable<? extends Predicate<? super T>> iterable) {
        return new b(b(iterable));
    }

    @SafeVarargs
    public static <T> Predicate<T> and(Predicate<? super T>... predicateArr) {
        return new b(b(Arrays.asList(predicateArr)));
    }

    public static <T> Predicate<T> and(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new b(Arrays.asList((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> or(Iterable<? extends Predicate<? super T>> iterable) {
        return new k(b(iterable));
    }

    @SafeVarargs
    public static <T> Predicate<T> or(Predicate<? super T>... predicateArr) {
        return new k(b(Arrays.asList(predicateArr)));
    }

    public static <T> Predicate<T> or(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new k(Arrays.asList((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> equalTo(@NullableDecl T t) {
        return t == null ? isNull() : new h(t);
    }

    @GwtIncompatible
    public static Predicate<Object> instanceOf(Class<?> cls) {
        return new g(cls);
    }

    @Beta
    @GwtIncompatible
    public static Predicate<Class<?>> subtypeOf(Class<?> cls) {
        return new l(cls);
    }

    public static <T> Predicate<T> in(Collection<? extends T> collection) {
        return new f(collection);
    }

    public static <A, B> Predicate<A> compose(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new c(predicate, function);
    }

    @GwtIncompatible
    public static Predicate<CharSequence> containsPattern(String str) {
        l.b bVar = com.google.common.base.l.f3745a;
        Preconditions.checkNotNull(str);
        return new d(com.google.common.base.l.f3745a.compile(str));
    }

    @GwtIncompatible("java.util.regex.Pattern")
    public static Predicate<CharSequence> contains(Pattern pattern) {
        return new e(new com.google.common.base.h(pattern));
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class j implements Predicate<Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f3696a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f3697b = new b();
        public static final c c = new c();
        public static final d d = new d();

        public enum a extends j {
            @Override // com.google.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return true;
            }

            public a() {
                super("ALWAYS_TRUE", 0);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        }

        public enum b extends j {
            @Override // com.google.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return false;
            }

            public b() {
                super("ALWAYS_FALSE", 1);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }

        public enum c extends j {
            @Override // com.google.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return obj == null;
            }

            public c() {
                super("IS_NULL", 2);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        }

        public enum d extends j {
            @Override // com.google.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return obj != null;
            }

            public d() {
                super("NOT_NULL", 3);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        }
    }

    public static class i<T> implements Predicate<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Predicate f3695a;

        public i(Predicate predicate) {
            this.f3695a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            return !this.f3695a.apply(t);
        }

        public int hashCode() {
            return ~this.f3695a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof i) {
                return this.f3695a.equals(((i) obj).f3695a);
            }
            return false;
        }

        public String toString() {
            return "Predicates.not(" + this.f3695a + ")";
        }
    }

    public static class b<T> implements Predicate<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final List f3688a;

        public b(List list) {
            this.f3688a = list;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            int i = 0;
            while (true) {
                List list = this.f3688a;
                if (i >= list.size()) {
                    return true;
                }
                if (!((Predicate) list.get(i)).apply(t)) {
                    return false;
                }
                i++;
            }
        }

        public int hashCode() {
            return this.f3688a.hashCode() + 306654252;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return this.f3688a.equals(((b) obj).f3688a);
            }
            return false;
        }

        public String toString() {
            return Predicates.a("and", this.f3688a);
        }
    }

    public static class k<T> implements Predicate<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final List f3698a;

        public k(List list) {
            this.f3698a = list;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            int i = 0;
            while (true) {
                List list = this.f3698a;
                if (i >= list.size()) {
                    return false;
                }
                if (((Predicate) list.get(i)).apply(t)) {
                    return true;
                }
                i++;
            }
        }

        public int hashCode() {
            return this.f3698a.hashCode() + 87855567;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof k) {
                return this.f3698a.equals(((k) obj).f3698a);
            }
            return false;
        }

        public String toString() {
            return Predicates.a("or", this.f3698a);
        }
    }

    public static String a(String str, Iterable iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    public static class h<T> implements Predicate<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3694a;

        public h(Object obj) {
            this.f3694a = obj;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(T t) {
            return this.f3694a.equals(t);
        }

        public int hashCode() {
            return this.f3694a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof h) {
                return this.f3694a.equals(((h) obj).f3694a);
            }
            return false;
        }

        public String toString() {
            return _COROUTINE.a.l(new StringBuilder("Predicates.equalTo("), this.f3694a, ")");
        }
    }

    @GwtIncompatible
    public static class g implements Predicate<Object>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Class f3693a;

        public g(Class cls) {
            this.f3693a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl Object obj) {
            return this.f3693a.isInstance(obj);
        }

        public int hashCode() {
            return this.f3693a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            return (obj instanceof g) && this.f3693a == ((g) obj).f3693a;
        }

        public String toString() {
            return "Predicates.instanceOf(" + this.f3693a.getName() + ")";
        }
    }

    @GwtIncompatible
    public static class l implements Predicate<Class<?>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Class f3699a;

        public l(Class cls) {
            this.f3699a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(Class<?> cls) {
            return this.f3699a.isAssignableFrom(cls);
        }

        public int hashCode() {
            return this.f3699a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            return (obj instanceof l) && this.f3699a == ((l) obj).f3699a;
        }

        public String toString() {
            return "Predicates.subtypeOf(" + this.f3699a.getName() + ")";
        }
    }

    public static class f<T> implements Predicate<T>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Collection f3692a;

        public f(Collection collection) {
            this.f3692a = (Collection) Preconditions.checkNotNull(collection);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            try {
                return this.f3692a.contains(t);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f3692a.equals(((f) obj).f3692a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3692a.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.f3692a + ")";
        }
    }

    public static class c<A, B> implements Predicate<A>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Predicate f3689a;

        /* renamed from: b, reason: collision with root package name */
        public final Function f3690b;

        public c(Predicate predicate, Function function) {
            this.f3689a = (Predicate) Preconditions.checkNotNull(predicate);
            this.f3690b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl A a2) {
            return this.f3689a.apply(this.f3690b.apply(a2));
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f3690b.equals(cVar.f3690b) && this.f3689a.equals(cVar.f3689a)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f3690b.hashCode() ^ this.f3689a.hashCode();
        }

        public String toString() {
            return this.f3689a + "(" + this.f3690b + ")";
        }
    }

    @GwtIncompatible
    public static class e implements Predicate<CharSequence>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final com.google.common.base.e f3691a;

        public e(com.google.common.base.e eVar) {
            this.f3691a = (com.google.common.base.e) Preconditions.checkNotNull(eVar);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(CharSequence charSequence) {
            return this.f3691a.matcher(charSequence).find();
        }

        public int hashCode() {
            com.google.common.base.e eVar = this.f3691a;
            return Objects.hashCode(eVar.pattern(), Integer.valueOf(eVar.flags()));
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                com.google.common.base.e eVar2 = this.f3691a;
                if (Objects.equal(eVar2.pattern(), eVar.f3691a.pattern()) && eVar2.flags() == eVar.f3691a.flags()) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            com.google.common.base.e eVar = this.f3691a;
            return _COROUTINE.a.A("Predicates.contains(", MoreObjects.toStringHelper(eVar).add("pattern", eVar.pattern()).add("pattern.flags", eVar.flags()).toString(), ")");
        }
    }

    @GwtIncompatible
    public static class d extends e {
        @Override // com.google.common.base.Predicates.e
        public String toString() {
            return _COROUTINE.a.m(new StringBuilder("Predicates.containsPattern("), this.f3691a.pattern(), ")");
        }
    }

    public static ArrayList b(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Preconditions.checkNotNull(it.next()));
        }
        return arrayList;
    }
}
