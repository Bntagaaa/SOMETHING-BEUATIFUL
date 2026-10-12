package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;

@GwtIncompatible
/* loaded from: classes.dex */
final class a {
    private a() {
    }

    public static long b(double d) {
        Preconditions.checkArgument(c(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static boolean c(double d) {
        return Math.getExponent(d) <= 1023;
    }

    public static double a(double d) {
        Preconditions.checkArgument(!Double.isNaN(d));
        return Math.max(d, 0.0d);
    }
}
