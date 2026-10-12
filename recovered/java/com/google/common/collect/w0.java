package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes.dex */
abstract class w0<C extends Comparable> implements Comparable<w0<C>>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparable f4372a;

    public w0 b(DiscreteDomain discreteDomain) {
        return this;
    }

    public abstract void c(StringBuilder sb);

    public abstract void d(StringBuilder sb);

    public abstract Comparable f(DiscreteDomain discreteDomain);

    public abstract boolean g(Comparable comparable);

    public abstract Comparable h(DiscreteDomain discreteDomain);

    public abstract int hashCode();

    public abstract BoundType i();

    public abstract BoundType j();

    public abstract w0 k(BoundType boundType, DiscreteDomain discreteDomain);

    public abstract w0 l(BoundType boundType, DiscreteDomain discreteDomain);

    public w0(Comparable comparable) {
        this.f4372a = comparable;
    }

    public Comparable e() {
        return this.f4372a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof w0) {
            try {
                if (compareTo((w0) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(w0<C> w0Var) {
        if (w0Var == d.f4375b) {
            return 1;
        }
        if (w0Var == b.f4374b) {
            return -1;
        }
        Comparable comparable = w0Var.f4372a;
        Range range = Range.c;
        int iCompareTo = this.f4372a.compareTo(comparable);
        return iCompareTo != 0 ? iCompareTo : Booleans.compare(this instanceof c, w0Var instanceof c);
    }

    public static final class d extends w0<Comparable<?>> {

        /* renamed from: b, reason: collision with root package name */
        public static final d f4375b = new d();

        @Override // com.google.common.collect.w0, java.lang.Comparable
        public int compareTo(w0<Comparable<?>> w0Var) {
            return w0Var == this ? 0 : -1;
        }

        @Override // com.google.common.collect.w0
        public final boolean g(Comparable comparable) {
            return true;
        }

        private d() {
            super(null);
        }

        @Override // com.google.common.collect.w0
        public final Comparable e() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.w0
        public final BoundType i() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.w0
        public final BoundType j() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.w0
        public final w0 k(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.w0
        public final w0 l(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.w0
        public final void c(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // com.google.common.collect.w0
        public final void d(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.w0
        public final Comparable h(DiscreteDomain discreteDomain) {
            return discreteDomain.minValue();
        }

        @Override // com.google.common.collect.w0
        public final Comparable f(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.w0
        public final w0 b(DiscreteDomain discreteDomain) {
            try {
                return w0.a(discreteDomain.minValue());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override // com.google.common.collect.w0
        public int hashCode() {
            return System.identityHashCode(this);
        }

        public String toString() {
            return "-∞";
        }
    }

    public static final class b extends w0<Comparable<?>> {

        /* renamed from: b, reason: collision with root package name */
        public static final b f4374b = new b();

        @Override // com.google.common.collect.w0, java.lang.Comparable
        public int compareTo(w0<Comparable<?>> w0Var) {
            return w0Var == this ? 0 : 1;
        }

        @Override // com.google.common.collect.w0
        public final boolean g(Comparable comparable) {
            return false;
        }

        private b() {
            super(null);
        }

        @Override // com.google.common.collect.w0
        public final Comparable e() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.w0
        public final BoundType i() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.w0
        public final BoundType j() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.w0
        public final w0 k(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.w0
        public final w0 l(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.w0
        public final void c(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.w0
        public final void d(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.google.common.collect.w0
        public final Comparable h(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.w0
        public final Comparable f(DiscreteDomain discreteDomain) {
            return discreteDomain.maxValue();
        }

        @Override // com.google.common.collect.w0
        public int hashCode() {
            return System.identityHashCode(this);
        }

        public String toString() {
            return "+∞";
        }
    }

    public static e a(Comparable comparable) {
        return new e((Comparable) Preconditions.checkNotNull(comparable));
    }

    public static final class e<C extends Comparable> extends w0<C> {
        @Override // com.google.common.collect.w0, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((w0) obj);
        }

        @Override // com.google.common.collect.w0
        public final boolean g(Comparable comparable) {
            Range range = Range.c;
            return this.f4372a.compareTo(comparable) <= 0;
        }

        @Override // com.google.common.collect.w0
        public final BoundType i() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.w0
        public final BoundType j() {
            return BoundType.OPEN;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final w0 k(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.f4373a[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                Comparable comparablePrevious = discreteDomain.previous(this.f4372a);
                if (comparablePrevious == null) {
                    return d.f4375b;
                }
                return new c(comparablePrevious);
            }
            throw new AssertionError();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final w0 l(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.f4373a[boundType.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this;
                }
                throw new AssertionError();
            }
            Comparable comparablePrevious = discreteDomain.previous(this.f4372a);
            if (comparablePrevious == null) {
                return b.f4374b;
            }
            return new c(comparablePrevious);
        }

        @Override // com.google.common.collect.w0
        public final void c(StringBuilder sb) {
            sb.append('[');
            sb.append(this.f4372a);
        }

        @Override // com.google.common.collect.w0
        public final void d(StringBuilder sb) {
            sb.append(this.f4372a);
            sb.append(')');
        }

        @Override // com.google.common.collect.w0
        public final Comparable h(DiscreteDomain discreteDomain) {
            return this.f4372a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final Comparable f(DiscreteDomain discreteDomain) {
            return discreteDomain.previous(this.f4372a);
        }

        @Override // com.google.common.collect.w0
        public int hashCode() {
            return this.f4372a.hashCode();
        }

        public String toString() {
            return "\\" + this.f4372a + "/";
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4373a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f4373a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4373a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class c<C extends Comparable> extends w0<C> {
        @Override // com.google.common.collect.w0, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((w0) obj);
        }

        public c(Comparable comparable) {
            super((Comparable) Preconditions.checkNotNull(comparable));
        }

        @Override // com.google.common.collect.w0
        public final boolean g(Comparable comparable) {
            Range range = Range.c;
            return this.f4372a.compareTo(comparable) < 0;
        }

        @Override // com.google.common.collect.w0
        public final BoundType i() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.w0
        public final BoundType j() {
            return BoundType.CLOSED;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final w0 k(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.f4373a[boundType.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this;
                }
                throw new AssertionError();
            }
            Comparable next = discreteDomain.next(this.f4372a);
            if (next == null) {
                return d.f4375b;
            }
            return w0.a(next);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final w0 l(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.f4373a[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                Comparable next = discreteDomain.next(this.f4372a);
                if (next == null) {
                    return b.f4374b;
                }
                return w0.a(next);
            }
            throw new AssertionError();
        }

        @Override // com.google.common.collect.w0
        public final void c(StringBuilder sb) {
            sb.append('(');
            sb.append(this.f4372a);
        }

        @Override // com.google.common.collect.w0
        public final void d(StringBuilder sb) {
            sb.append(this.f4372a);
            sb.append(']');
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final w0 b(DiscreteDomain discreteDomain) {
            Comparable next = discreteDomain.next(this.f4372a);
            if (next == null) {
                return b.f4374b;
            }
            return w0.a(next);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.w0
        public final Comparable h(DiscreteDomain discreteDomain) {
            return discreteDomain.next(this.f4372a);
        }

        @Override // com.google.common.collect.w0
        public final Comparable f(DiscreteDomain discreteDomain) {
            return this.f4372a;
        }

        @Override // com.google.common.collect.w0
        public int hashCode() {
            return ~this.f4372a.hashCode();
        }

        public String toString() {
            return "/" + this.f4372a + "\\";
        }
    }
}
