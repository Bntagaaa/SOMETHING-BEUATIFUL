package kotlin.math;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000 \n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0015\u001a\u0017\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0003\u001a\u0017\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u001f\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u0017\u0010\t\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\t\u0010\u0003\u001a\u0017\u0010\n\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\n\u0010\u0003\u001a\u0013\u0010\f\u001a\u00020\u000b*\u00020\u0000H\u0007¢\u0006\u0004\b\f\u0010\r\u001a\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u0000H\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001f\u0010\u0007\u001a\u00020\u00112\u0006\u0010\u0001\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0007\u0010\u0012\u001a\u0017\u0010\t\u001a\u00020\u00112\u0006\u0010\u0001\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\t\u0010\u0013\u001a\u0017\u0010\n\u001a\u00020\u00112\u0006\u0010\u0001\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\n\u0010\u0013\u001a\u0013\u0010\f\u001a\u00020\u000b*\u00020\u0011H\u0007¢\u0006\u0004\b\f\u0010\u0014\u001a\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u0011H\u0007¢\u0006\u0004\b\u000f\u0010\u0015\"\u001f\u0010\u0019\u001a\u00020\u0000*\u00020\u00008Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0016\u0010\u0003\"\u001f\u0010\u001c\u001a\u00020\u0000*\u00020\u00008Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001a\u0010\u0003\"\u001f\u0010\u001f\u001a\u00020\u0000*\u00020\u00008Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001d\u0010\u0003\"\u001f\u0010\u0019\u001a\u00020\u0011*\u00020\u00118Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010 \u001a\u0004\b\u0016\u0010\u0013\"\u001f\u0010\u001c\u001a\u00020\u0011*\u00020\u00118Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010 \u001a\u0004\b\u001a\u0010\u0013\"\u001f\u0010\u001f\u001a\u00020\u0011*\u00020\u00118Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010 \u001a\u0004\b\u001d\u0010\u0013\"\u001f\u0010\u0019\u001a\u00020\u000b*\u00020\u000b8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\"\u001a\u0004\b\u0016\u0010!\"\u001e\u0010\u001c\u001a\u00020\u000b*\u00020\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\"\u001a\u0004\b\u001a\u0010!\"\u001f\u0010\u0019\u001a\u00020\u000e*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010$\u001a\u0004\b\u0016\u0010#\"\u001e\u0010\u001c\u001a\u00020\u000b*\u00020\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010$\u001a\u0004\b\u001a\u0010%¨\u0006&"}, d2 = {"", "x", "asinh", "(D)D", "acosh", "atanh", "base", "log", "(DD)D", "log2", "truncate", "", "roundToInt", "(D)I", "", "roundToLong", "(D)J", "", "(FF)F", "(F)F", "(F)I", "(F)J", "getAbsoluteValue", "getAbsoluteValue$annotations", "(D)V", "absoluteValue", "getSign", "getSign$annotations", "sign", "getUlp", "getUlp$annotations", "ulp", "(F)V", "(I)I", "(I)V", "(J)J", "(J)V", "(J)I", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/math/MathKt")
/* loaded from: classes2.dex */
public class c extends b {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(float f) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(int i) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(long j) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(float f) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(int i) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(long j) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(float f) {
    }

    @SinceKotlin(version = "1.2")
    public static final double asinh(double d) {
        double d2 = a.c;
        if (d < d2) {
            if (d <= (-d2)) {
                return -asinh(-d);
            }
            return Math.abs(d) >= a.f5870b ? d - (((d * d) * d) / 6) : d;
        }
        if (d <= a.e) {
            return Math.log(Math.sqrt((d * d) + 1) + d);
        }
        if (d > a.d) {
            return Math.log(d) + a.f5869a;
        }
        double d3 = d * 2;
        return Math.log((1 / d3) + d3);
    }

    @SinceKotlin(version = "1.2")
    public static final double acosh(double d) {
        if (d < 1.0d) {
            return Double.NaN;
        }
        if (d > a.d) {
            return Math.log(d) + a.f5869a;
        }
        double d2 = 1;
        double d3 = d - d2;
        if (d3 >= a.c) {
            return Math.log(Math.sqrt((d * d) - d2) + d);
        }
        double dSqrt = Math.sqrt(d3);
        if (dSqrt >= a.f5870b) {
            dSqrt -= ((dSqrt * dSqrt) * dSqrt) / 12;
        }
        return Math.sqrt(2.0d) * dSqrt;
    }

    @SinceKotlin(version = "1.2")
    public static final double atanh(double d) {
        if (Math.abs(d) < a.c) {
            return Math.abs(d) > a.f5870b ? (((d * d) * d) / 3) + d : d;
        }
        double d2 = 1;
        return Math.log((d2 + d) / (d2 - d)) / 2;
    }

    @SinceKotlin(version = "1.2")
    public static final double log(double d, double d2) {
        if (d2 <= 0.0d || d2 == 1.0d) {
            return Double.NaN;
        }
        return Math.log(d) / Math.log(d2);
    }

    @SinceKotlin(version = "1.2")
    public static final double log2(double d) {
        return Math.log(d) / a.f5869a;
    }

    @SinceKotlin(version = "1.2")
    public static final double truncate(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return d;
        }
        if (d > 0.0d) {
            return Math.floor(d);
        }
        return Math.ceil(d);
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    @SinceKotlin(version = "1.2")
    public static long roundToLong(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(d);
    }

    @SinceKotlin(version = "1.2")
    public static final float log(float f, float f2) {
        if (f2 <= 0.0f || f2 == 1.0f) {
            return Float.NaN;
        }
        return (float) (Math.log(f) / Math.log(f2));
    }

    @SinceKotlin(version = "1.2")
    public static final float log2(float f) {
        return (float) (Math.log(f) / a.f5869a);
    }

    @SinceKotlin(version = "1.2")
    public static final float truncate(float f) {
        double dCeil;
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            return f;
        }
        if (f > 0.0f) {
            dCeil = Math.floor(f);
        } else {
            dCeil = Math.ceil(f);
        }
        return (float) dCeil;
    }

    @SinceKotlin(version = "1.2")
    public static final int roundToInt(float f) {
        if (Float.isNaN(f)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f);
    }

    @SinceKotlin(version = "1.2")
    public static final long roundToLong(float f) {
        return roundToLong(f);
    }

    public static int getSign(int i) {
        return Integer.signum(i);
    }

    public static int getSign(long j) {
        return Long.signum(j);
    }
}
