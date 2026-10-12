package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.m3;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class Interners {
    private Interners() {
    }

    public static class InternerBuilder {

        /* renamed from: a, reason: collision with root package name */
        public final MapMaker f3924a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f3925b;

        public /* synthetic */ InternerBuilder(int i) {
            this();
        }

        private InternerBuilder() {
            this.f3924a = new MapMaker();
            this.f3925b = true;
        }

        public InternerBuilder strong() {
            this.f3925b = true;
            return this;
        }

        @GwtIncompatible("java.lang.ref.WeakReference")
        public InternerBuilder weak() {
            this.f3925b = false;
            return this;
        }

        public InternerBuilder concurrencyLevel(int i) {
            this.f3924a.concurrencyLevel(i);
            return this;
        }

        public <E> Interner<E> build() {
            boolean z = this.f3925b;
            MapMaker mapMaker = this.f3924a;
            if (!z) {
                mapMaker.weakKeys();
            }
            return new c(mapMaker);
        }
    }

    public static InternerBuilder newBuilder() {
        return new InternerBuilder(0);
    }

    public static <E> Interner<E> newStrongInterner() {
        return newBuilder().strong().build();
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public static <E> Interner<E> newWeakInterner() {
        return newBuilder().weak().build();
    }

    @VisibleForTesting
    public static final class c<E> implements Interner<E> {

        /* renamed from: a, reason: collision with root package name */
        public final m3 f3927a;

        public c(MapMaker mapMaker) {
            m3 m3Var;
            Equivalence<Object> equivalenceEquals = Equivalence.equals();
            Equivalence equivalence = mapMaker.f;
            Preconditions.checkState(equivalence == null, "key equivalence was already set to %s", equivalence);
            mapMaker.f = (Equivalence) Preconditions.checkNotNull(equivalenceEquals);
            mapMaker.f3995a = true;
            m3.a aVar = m3.j;
            m3.q qVarA = mapMaker.a();
            m3.q.a aVar2 = m3.q.f4291a;
            if (qVarA == aVar2 && mapMaker.b() == aVar2) {
                m3Var = new m3(mapMaker, m3.r.a.f4293a);
            } else {
                m3.q qVarA2 = mapMaker.a();
                m3.q.b bVar = m3.q.f4292b;
                if (qVarA2 == bVar && mapMaker.b() == aVar2) {
                    m3Var = new m3(mapMaker, m3.a0.a.f4273a);
                } else {
                    if (mapMaker.b() == bVar) {
                        throw new IllegalArgumentException("Map cannot have both weak and dummy values");
                    }
                    throw new AssertionError();
                }
            }
            this.f3927a = m3Var;
        }

        @Override // com.google.common.collect.Interner
        public E intern(E e) {
            m3 m3Var;
            m3.j jVarD;
            E e2;
            do {
                m3Var = this.f3927a;
                if (e == null) {
                    m3Var.getClass();
                    jVarD = null;
                } else {
                    int iB = m3Var.b(e);
                    jVarD = m3Var.c(iB).d(iB, e);
                }
                if (jVarD != null && (e2 = (E) jVarD.getKey()) != null) {
                    return e2;
                }
            } while (((MapMaker.a) m3Var.putIfAbsent(e, MapMaker.a.f3997a)) != null);
            return e;
        }
    }

    public static <E> Function<E, E> asFunction(Interner<E> interner) {
        return new b((Interner) Preconditions.checkNotNull(interner));
    }

    public static class b<E> implements Function<E, E> {

        /* renamed from: a, reason: collision with root package name */
        public final Interner f3926a;

        public b(Interner<E> interner) {
            this.f3926a = interner;
        }

        @Override // com.google.common.base.Function
        public E apply(E e) {
            return (E) this.f3926a.intern(e);
        }

        public int hashCode() {
            return this.f3926a.hashCode();
        }

        @Override // com.google.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f3926a.equals(((b) obj).f3926a);
            }
            return false;
        }
    }
}
