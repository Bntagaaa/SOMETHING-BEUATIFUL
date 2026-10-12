package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.primitives.Booleans;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class ComparisonChain {

    /* renamed from: a, reason: collision with root package name */
    public static final ComparisonChain f3854a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final ComparisonChain f3855b = new b(-1);
    public static final ComparisonChain c = new b(1);

    public abstract ComparisonChain compare(double d, double d2);

    public abstract ComparisonChain compare(float f, float f2);

    public abstract ComparisonChain compare(int i, int i2);

    public abstract ComparisonChain compare(long j, long j2);

    public abstract ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract <T> ComparisonChain compare(@NullableDecl T t, @NullableDecl T t2, Comparator<T> comparator);

    public abstract ComparisonChain compareFalseFirst(boolean z, boolean z2);

    public abstract ComparisonChain compareTrueFirst(boolean z, boolean z2);

    public abstract int result();

    public static class a extends ComparisonChain {
        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return 0;
        }

        public static ComparisonChain a(int i) {
            if (i < 0) {
                return ComparisonChain.f3855b;
            }
            return i > 0 ? ComparisonChain.c : ComparisonChain.f3854a;
        }

        public a() {
            super(0);
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Comparable comparable, Comparable comparable2) {
            return a(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(@NullableDecl T t, @NullableDecl T t2, Comparator<T> comparator) {
            return a(comparator.compare(t, t2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return a(Ints.compare(i, i2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return a(Longs.compare(j, j2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(float f, float f2) {
            return a(Float.compare(f, f2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(double d, double d2) {
            return a(Double.compare(d, d2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return a(Booleans.compare(z2, z));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return a(Booleans.compare(z, z2));
        }
    }

    public /* synthetic */ ComparisonChain(int i) {
        this();
    }

    private ComparisonChain() {
    }

    public static ComparisonChain start() {
        return f3854a;
    }

    public static final class b extends ComparisonChain {
        public final int d;

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(double d, double d2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(float f, float f2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(@NullableDecl Comparable comparable, @NullableDecl Comparable comparable2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(@NullableDecl T t, @NullableDecl T t2, @NullableDecl Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return this;
        }

        public b(int i) {
            super(0);
            this.d = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return this.d;
        }
    }

    @Deprecated
    public final ComparisonChain compare(Boolean bool, Boolean bool2) {
        return compareFalseFirst(bool.booleanValue(), bool2.booleanValue());
    }
}
