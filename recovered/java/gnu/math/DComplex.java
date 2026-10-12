package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class DComplex extends Complex implements Externalizable {
    double imag;
    double real;

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean isExact() {
        return false;
    }

    public DComplex() {
    }

    public DComplex(double d, double d2) {
        this.real = d;
        this.imag = d2;
    }

    @Override // gnu.math.Quantity
    public RealNum re() {
        return new DFloNum(this.real);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, java.lang.Number
    public double doubleValue() {
        return this.real;
    }

    @Override // gnu.math.Quantity
    public RealNum im() {
        return new DFloNum(this.imag);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity
    public double doubleImagValue() {
        return this.imag;
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public Complex toExact() {
        return new CComplex(DFloNum.toExact(this.real), DFloNum.toExact(this.imag));
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Complex)) {
            Complex complex = (Complex) obj;
            if (complex.unit() == Unit.Empty && Double.doubleToLongBits(this.real) == Double.doubleToLongBits(complex.reValue()) && Double.doubleToLongBits(this.imag) == Double.doubleToLongBits(complex.imValue())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    @Override // gnu.math.Numeric
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r12 = this;
            double r0 = r12.real
            r2 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            java.lang.String r4 = "#i"
            r5 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            int r7 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r7 != 0) goto L10
            java.lang.String r0 = "1/0"
        Le:
            r1 = r4
            goto L28
        L10:
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 != 0) goto L17
            java.lang.String r0 = "-1/0"
            goto Le
        L17:
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 == 0) goto L20
            java.lang.String r0 = "0/0"
            goto Le
        L20:
            double r0 = r12.real
            java.lang.String r0 = java.lang.Double.toString(r0)
            java.lang.String r1 = ""
        L28:
            double r7 = r12.imag
            long r7 = java.lang.Double.doubleToLongBits(r7)
            r9 = 0
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 != 0) goto L39
            java.lang.String r0 = _COROUTINE.a.z(r1, r0)
            return r0
        L39:
            double r7 = r12.imag
            int r11 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r11 != 0) goto L42
            java.lang.String r1 = "+1/0i"
            goto L7a
        L42:
            int r5 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r5 != 0) goto L49
            java.lang.String r1 = "-1/0i"
            goto L7a
        L49:
            boolean r2 = java.lang.Double.isNaN(r7)
            if (r2 == 0) goto L52
            java.lang.String r1 = "+0/0i"
            goto L7a
        L52:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            double r3 = r12.imag
            java.lang.String r3 = java.lang.Double.toString(r3)
            r2.append(r3)
            java.lang.String r3 = "i"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r3 = 0
            char r3 = r2.charAt(r3)
            r4 = 45
            if (r3 == r4) goto L78
            java.lang.String r3 = "+"
            java.lang.String r2 = r3.concat(r2)
        L78:
            r4 = r1
            r1 = r2
        L7a:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            double r5 = r12.real
            long r5 = java.lang.Double.doubleToLongBits(r5)
            int r3 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r3 != 0) goto L8a
            goto L8e
        L8a:
            java.lang.String r4 = _COROUTINE.a.z(r4, r0)
        L8e:
            java.lang.String r0 = _COROUTINE.a.m(r2, r4, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.DComplex.toString():java.lang.String");
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public String toString(int i) {
        if (i == 10) {
            return toString();
        }
        return "#d" + toString();
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public final Numeric neg() {
        return new DComplex(-this.real, -this.imag);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof Complex) {
            Complex complex = (Complex) obj;
            if (complex.dimensions() != Dimensions.Empty) {
                throw new ArithmeticException("units mis-match");
            }
            double d = i;
            return new DComplex((complex.reValue() * d) + this.real, (complex.imValue() * d) + this.imag);
        }
        return ((Numeric) obj).addReversed(this, i);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof Complex) {
            Complex complex = (Complex) obj;
            if (complex.unit() == Unit.Empty) {
                double dReValue = complex.reValue();
                double dImValue = complex.imValue();
                double d = this.real;
                double d2 = this.imag;
                return new DComplex((d * dReValue) - (d2 * dImValue), (d2 * dReValue) + (d * dImValue));
            }
            return Complex.times((Complex) this, complex);
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof Complex) {
            Complex complex = (Complex) obj;
            return div(this.real, this.imag, complex.doubleValue(), complex.doubleImagValue());
        }
        return ((Numeric) obj).divReversed(this);
    }

    public static DComplex power(double d, double d2, double d3, double d4) {
        double dLog = Math.log(Math.hypot(d, d2));
        double dAtan2 = Math.atan2(d2, d);
        return Complex.polar(Math.exp((dLog * d3) - (d4 * dAtan2)), (d3 * dAtan2) + (d4 * dLog));
    }

    public static Complex log(double d, double d2) {
        return Complex.make(Math.log(Math.hypot(d, d2)), Math.atan2(d2, d));
    }

    public static DComplex div(double d, double d2, double d3, double d4) {
        double d5;
        double d6;
        double d7;
        if (Math.abs(d3) <= Math.abs(d4)) {
            double d8 = d3 / d4;
            d5 = ((d8 * d8) + 1.0d) * d4;
            d7 = (d * d8) + d2;
            d6 = (d2 * d8) - d;
        } else {
            double d9 = d4 / d3;
            d5 = ((d9 * d9) + 1.0d) * d3;
            double d10 = (d2 * d9) + d;
            d6 = d2 - (d * d9);
            d7 = d10;
        }
        return new DComplex(d7 / d5, d6 / d5);
    }

    public static Complex sqrt(double d, double d2) {
        double d3;
        double dHypot = Math.hypot(d, d2);
        if (dHypot == 0.0d) {
            d3 = dHypot;
        } else if (d > 0.0d) {
            dHypot = Math.sqrt((dHypot + d) * 0.5d);
            d3 = (d2 / dHypot) / 2.0d;
        } else {
            double dSqrt = Math.sqrt((dHypot - d) * 0.5d);
            if (d2 < 0.0d) {
                dSqrt = -dSqrt;
            }
            double d4 = dSqrt;
            dHypot = (d2 / d4) / 2.0d;
            d3 = d4;
        }
        return new DComplex(dHypot, d3);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(this.real);
        objectOutput.writeDouble(this.imag);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.real = objectInput.readDouble();
        this.imag = objectInput.readDouble();
    }
}
