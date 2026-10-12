package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class LinearTransformation {
    public abstract LinearTransformation inverse();

    public abstract boolean isHorizontal();

    public abstract boolean isVertical();

    public abstract double slope();

    public abstract double transform(double d2);

    public static LinearTransformationBuilder mapping(double d2, double d3) {
        Preconditions.checkArgument(com.google.common.math.a.c(d2) && com.google.common.math.a.c(d3));
        return new LinearTransformationBuilder(d2, d3);
    }

    public static final class LinearTransformationBuilder {

        /* renamed from: a, reason: collision with root package name */
        public final double f4700a;

        /* renamed from: b, reason: collision with root package name */
        public final double f4701b;

        public LinearTransformationBuilder(double d, double d2) {
            this.f4700a = d;
            this.f4701b = d2;
        }

        public LinearTransformation and(double d, double d2) {
            Preconditions.checkArgument(com.google.common.math.a.c(d) && com.google.common.math.a.c(d2));
            double d3 = this.f4701b;
            double d4 = this.f4700a;
            if (d == d4) {
                Preconditions.checkArgument(d2 != d3);
                return new d(d4);
            }
            return withSlope((d2 - d3) / (d - d4));
        }

        public LinearTransformation withSlope(double d) {
            Preconditions.checkArgument(!Double.isNaN(d));
            boolean zC = com.google.common.math.a.c(d);
            double d2 = this.f4700a;
            if (zC) {
                return new c(d, this.f4701b - (d2 * d));
            }
            return new d(d2);
        }
    }

    public static LinearTransformation vertical(double d2) {
        Preconditions.checkArgument(com.google.common.math.a.c(d2));
        return new d(d2);
    }

    public static LinearTransformation horizontal(double d2) {
        Preconditions.checkArgument(com.google.common.math.a.c(d2));
        return new c(0.0d, d2);
    }

    public static LinearTransformation forNaN() {
        return b.f4702a;
    }

    public static final class c extends LinearTransformation {

        /* renamed from: a, reason: collision with root package name */
        public final double f4703a;

        /* renamed from: b, reason: collision with root package name */
        public final double f4704b;
        public LinearTransformation c;

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return false;
        }

        public c(double d, double d2) {
            this.f4703a = d;
            this.f4704b = d2;
            this.c = null;
        }

        public c(double d, double d2, LinearTransformation linearTransformation) {
            this.f4703a = d;
            this.f4704b = d2;
            this.c = linearTransformation;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return this.f4703a == 0.0d;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            return this.f4703a;
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            return (d * this.f4703a) + this.f4704b;
        }

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            c cVar;
            LinearTransformation dVar;
            LinearTransformation linearTransformation = this.c;
            if (linearTransformation != null) {
                return linearTransformation;
            }
            double d = this.f4704b;
            double d2 = this.f4703a;
            if (d2 != 0.0d) {
                cVar = this;
                dVar = new c(1.0d / d2, (d * (-1.0d)) / d2, cVar);
            } else {
                cVar = this;
                dVar = new d(d, this);
            }
            cVar.c = dVar;
            return dVar;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f4703a), Double.valueOf(this.f4704b));
        }
    }

    public static final class d extends LinearTransformation {

        /* renamed from: a, reason: collision with root package name */
        public final double f4705a;

        /* renamed from: b, reason: collision with root package name */
        public LinearTransformation f4706b;

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return true;
        }

        public d(double d) {
            this.f4705a = d;
            this.f4706b = null;
        }

        public d(double d, LinearTransformation linearTransformation) {
            this.f4705a = d;
            this.f4706b = linearTransformation;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            LinearTransformation linearTransformation = this.f4706b;
            if (linearTransformation != null) {
                return linearTransformation;
            }
            c cVar = new c(0.0d, this.f4705a, this);
            this.f4706b = cVar;
            return cVar;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f4705a));
        }
    }

    public static final class b extends LinearTransformation {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4702a = new b();

        @Override // com.google.common.math.LinearTransformation
        public LinearTransformation inverse() {
            return this;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isHorizontal() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public boolean isVertical() {
            return false;
        }

        @Override // com.google.common.math.LinearTransformation
        public double slope() {
            return Double.NaN;
        }

        @Override // com.google.common.math.LinearTransformation
        public double transform(double d) {
            return Double.NaN;
        }

        private b() {
        }

        public String toString() {
            return "NaN";
        }
    }
}
