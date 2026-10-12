package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.w0;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Range<C extends Comparable> extends u4 implements Predicate<C>, Serializable {
    public static final Range c = new Range(w0.d.f4375b, w0.b.f4374b);

    /* renamed from: a, reason: collision with root package name */
    public final w0 f4084a;

    /* renamed from: b, reason: collision with root package name */
    public final w0 f4085b;

    public static <C extends Comparable<?>> Range<C> atMost(C c2) {
        return new Range<>(w0.d.f4375b, new w0.c(c2));
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c2) {
        return new Range<>(w0.d.f4375b, w0.a(c2));
    }

    public boolean hasLowerBound() {
        return this.f4084a != w0.d.f4375b;
    }

    public static class b implements Function<Range, w0> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4087a = new b();

        @Override // com.google.common.base.Function
        public w0 apply(Range range) {
            return range.f4084a;
        }
    }

    public static class d implements Function<Range, w0> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f4089a = new d();

        @Override // com.google.common.base.Function
        public w0 apply(Range range) {
            return range.f4085b;
        }
    }

    public static <C extends Comparable<?>> Range<C> closed(C c2, C c3) {
        return new Range<>(w0.a(c2), new w0.c(c3));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c2, C c3) {
        return new Range<>(w0.a(c2), w0.a(c3));
    }

    public static <C extends Comparable<?>> Range<C> range(C c2, BoundType boundType, C c3, BoundType boundType2) {
        w0 w0VarA;
        w0 cVar;
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        BoundType boundType3 = BoundType.OPEN;
        if (boundType != boundType3) {
            w0VarA = w0.a(c2);
        } else {
            w0VarA = new w0.c(c2);
        }
        if (boundType2 == boundType3) {
            cVar = w0.a(c3);
        } else {
            cVar = new w0.c(c3);
        }
        return new Range<>(w0VarA, cVar);
    }

    public boolean hasUpperBound() {
        return this.f4085b != w0.b.f4374b;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4086a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f4086a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4086a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c2, BoundType boundType) {
        int i = a.f4086a[boundType.ordinal()];
        if (i == 1) {
            return lessThan(c2);
        }
        if (i == 2) {
            return atMost(c2);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c2) {
        return new Range<>(w0.a(c2), w0.b.f4374b);
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c2, BoundType boundType) {
        int i = a.f4086a[boundType.ordinal()];
        if (i == 1) {
            return greaterThan(c2);
        }
        if (i == 2) {
            return atLeast(c2);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return c;
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c2) {
        return closed(c2, c2);
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return closed((Comparable) sortedSet.first(), (Comparable) sortedSet.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) Preconditions.checkNotNull(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) Preconditions.checkNotNull(it.next());
            comparable = (Comparable) Ordering.natural().min(comparable, comparable3);
            comparable2 = (Comparable) Ordering.natural().max(comparable2, comparable3);
        }
        return closed(comparable, comparable2);
    }

    public Range(w0 w0Var, w0 w0Var2) {
        this.f4084a = (w0) Preconditions.checkNotNull(w0Var);
        this.f4085b = (w0) Preconditions.checkNotNull(w0Var2);
        if (w0Var.compareTo(w0Var2) > 0 || w0Var == w0.b.f4374b || w0Var2 == w0.d.f4375b) {
            StringBuilder sb = new StringBuilder("Invalid range: ");
            StringBuilder sb2 = new StringBuilder(16);
            w0Var.c(sb2);
            sb2.append("..");
            w0Var2.d(sb2);
            sb.append(sb2.toString());
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public C lowerEndpoint() {
        return (C) this.f4084a.e();
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c2) {
        return new Range<>(new w0.c(c2), w0.b.f4374b);
    }

    public static <C extends Comparable<?>> Range<C> open(C c2, C c3) {
        return new Range<>(new w0.c(c2), w0.a(c3));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c2, C c3) {
        return new Range<>(new w0.c(c2), new w0.c(c3));
    }

    public BoundType lowerBoundType() {
        return this.f4084a.i();
    }

    public C upperEndpoint() {
        return (C) this.f4085b.e();
    }

    public BoundType upperBoundType() {
        return this.f4085b.j();
    }

    public boolean isEmpty() {
        return this.f4084a.equals(this.f4085b);
    }

    public boolean contains(C c2) {
        Preconditions.checkNotNull(c2);
        return this.f4084a.g(c2) && !this.f4085b.g(c2);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(C c2) {
        return contains(c2);
    }

    public boolean containsAll(Iterable<? extends C> iterable) {
        if (Iterables.isEmpty(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return contains((Comparable) sortedSet.first()) && contains((Comparable) sortedSet.last());
            }
        }
        Iterator<? extends C> it = iterable.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(Range<C> range) {
        return this.f4084a.compareTo((w0) range.f4084a) <= 0 && this.f4085b.compareTo((w0) range.f4085b) >= 0;
    }

    public boolean isConnected(Range<C> range) {
        return this.f4084a.compareTo((w0) range.f4085b) <= 0 && range.f4084a.compareTo((w0) this.f4085b) <= 0;
    }

    public Range<C> intersection(Range<C> range) {
        w0<C> w0Var = range.f4084a;
        w0 w0Var2 = this.f4084a;
        int iCompareTo = w0Var2.compareTo((w0) w0Var);
        w0<C> w0Var3 = this.f4085b;
        w0<C> w0Var4 = range.f4085b;
        int iCompareTo2 = w0Var3.compareTo((w0) w0Var4);
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return this;
        }
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return range;
        }
        if (iCompareTo < 0) {
            w0Var2 = range.f4084a;
        }
        if (iCompareTo2 > 0) {
            w0Var3 = w0Var4;
        }
        return new Range<>(w0Var2, w0Var3);
    }

    public Range<C> gap(Range<C> range) {
        boolean z = this.f4084a.compareTo((w0) range.f4084a) < 0;
        Range<C> range2 = z ? this : range;
        if (!z) {
            range = this;
        }
        return new Range<>(range2.f4085b, range.f4084a);
    }

    public Range<C> span(Range<C> range) {
        w0<C> w0Var = range.f4084a;
        w0 w0Var2 = this.f4084a;
        int iCompareTo = w0Var2.compareTo((w0) w0Var);
        w0<C> w0Var3 = this.f4085b;
        w0<C> w0Var4 = range.f4085b;
        int iCompareTo2 = w0Var3.compareTo((w0) w0Var4);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return range;
        }
        if (iCompareTo > 0) {
            w0Var2 = range.f4084a;
        }
        if (iCompareTo2 < 0) {
            w0Var3 = w0Var4;
        }
        return new Range<>(w0Var2, w0Var3);
    }

    public Range<C> canonical(DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(discreteDomain);
        w0 w0Var = this.f4084a;
        w0 w0VarB = w0Var.b(discreteDomain);
        w0 w0Var2 = this.f4085b;
        w0 w0VarB2 = w0Var2.b(discreteDomain);
        return (w0VarB == w0Var && w0VarB2 == w0Var2) ? this : new Range<>(w0VarB, w0VarB2);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof Range) {
            Range range = (Range) obj;
            if (this.f4084a.equals(range.f4084a) && this.f4085b.equals(range.f4085b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f4084a.hashCode() * 31) + this.f4085b.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(16);
        this.f4084a.c(sb);
        sb.append("..");
        this.f4085b.d(sb);
        return sb.toString();
    }

    public static class c extends Ordering<Range<?>> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public static final Ordering f4088a = new c();

        private c() {
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Range<?> range, Range<?> range2) {
            return ComparisonChain.start().compare(range.f4084a, range2.f4084a).compare(range.f4085b, range2.f4085b).result();
        }
    }
}
