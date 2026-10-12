package androidx.constraintlayout.motion.utils;

import android.util.Log;
import com.google.appinventor.components.runtime.Component;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Easing {

    /* renamed from: a, reason: collision with root package name */
    public String f594a = "identity";

    /* renamed from: b, reason: collision with root package name */
    public static final Easing f593b = new Easing();
    public static String[] NAMED_EASING = {Component.GOOGLE_MAPS_STANDARD, "accelerate", "decelerate", "linear"};

    public double get(double d) {
        return d;
    }

    public double getDiff(double d) {
        return 1.0d;
    }

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new a(str);
        }
        switch (str) {
            case "accelerate":
                return new a("cubic(0.4, 0.05, 0.8, 0.7)");
            case "decelerate":
                return new a("cubic(0.0, 0.0, 0.2, 0.95)");
            case "linear":
                return new a("cubic(1, 1, 0, 0)");
            case "standard":
                return new a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return f593b;
        }
    }

    public String toString() {
        return this.f594a;
    }

    public static class a extends Easing {
        public final double c;
        public final double d;
        public final double e;
        public final double f;

        public a(String str) {
            this.f594a = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.c = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int i = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(44, i);
            this.d = Double.parseDouble(str.substring(i, iIndexOf3).trim());
            int i2 = iIndexOf3 + 1;
            int iIndexOf4 = str.indexOf(44, i2);
            this.e = Double.parseDouble(str.substring(i2, iIndexOf4).trim());
            int i3 = iIndexOf4 + 1;
            this.f = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        public final double a(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            double d4 = d2 * d3 * d;
            double d5 = d3 * d * d;
            return (this.e * d5) + (this.c * d4) + (d * d * d);
        }

        public final double b(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            double d4 = d2 * d3 * d;
            double d5 = d3 * d * d;
            return (this.f * d5) + (this.d * d4) + (d * d * d);
        }

        @Override // androidx.constraintlayout.motion.utils.Easing
        public double getDiff(double d) {
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > 1.0E-4d) {
                d2 *= 0.5d;
                d3 = a(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double d5 = d3 + d2;
            return (b(d5) - b(d4)) / (a(d5) - a(d4));
        }

        @Override // androidx.constraintlayout.motion.utils.Easing
        public double get(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > 0.01d) {
                d2 *= 0.5d;
                d3 = a(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double dA = a(d4);
            double d5 = d3 + d2;
            double dA2 = a(d5);
            double dB = b(d4);
            return (((d - dA) * (b(d5) - dB)) / (dA2 - dA)) + dB;
        }
    }
}
