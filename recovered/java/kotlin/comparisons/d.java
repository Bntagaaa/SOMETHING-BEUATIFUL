package kotlin.comparisons;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000N\n\u0002\u0010\u000f\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\n\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0007\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0006\n\u0002\u0010\u0013\n\u0002\b\u0003\u001a/\u0010\u0004\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a7\u0010\u0004\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0007\u001a;\u0010\u0004\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\b\"\u00028\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\n\u001a#\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\n\u0010\t\u001a\u00020\f\"\u00020\u000bH\u0007¢\u0006\u0004\b\u0004\u0010\r\u001a#\u0010\u0004\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000e2\n\u0010\t\u001a\u00020\u000f\"\u00020\u000eH\u0007¢\u0006\u0004\b\u0004\u0010\u0010\u001a#\u0010\u0004\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00112\n\u0010\t\u001a\u00020\u0012\"\u00020\u0011H\u0007¢\u0006\u0004\b\u0004\u0010\u0013\u001a#\u0010\u0004\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00142\n\u0010\t\u001a\u00020\u0015\"\u00020\u0014H\u0007¢\u0006\u0004\b\u0004\u0010\u0016\u001a#\u0010\u0004\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00172\n\u0010\t\u001a\u00020\u0018\"\u00020\u0017H\u0007¢\u0006\u0004\b\u0004\u0010\u0019\u001a#\u0010\u0004\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u001a2\n\u0010\t\u001a\u00020\u001b\"\u00020\u001aH\u0007¢\u0006\u0004\b\u0004\u0010\u001c\u001a/\u0010\u001d\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u001d\u0010\u0005\u001a7\u0010\u001d\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u001d\u0010\u0007\u001a;\u0010\u001d\u001a\u00028\u0000\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\b\"\u00028\u0000H\u0007¢\u0006\u0004\b\u001d\u0010\n\u001a#\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\n\u0010\t\u001a\u00020\f\"\u00020\u000bH\u0007¢\u0006\u0004\b\u001d\u0010\r\u001a#\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000e2\n\u0010\t\u001a\u00020\u000f\"\u00020\u000eH\u0007¢\u0006\u0004\b\u001d\u0010\u0010\u001a#\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00112\n\u0010\t\u001a\u00020\u0012\"\u00020\u0011H\u0007¢\u0006\u0004\b\u001d\u0010\u0013\u001a#\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00142\n\u0010\t\u001a\u00020\u0015\"\u00020\u0014H\u0007¢\u0006\u0004\b\u001d\u0010\u0016\u001a#\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00172\n\u0010\t\u001a\u00020\u0018\"\u00020\u0017H\u0007¢\u0006\u0004\b\u001d\u0010\u0019\u001a#\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u001a2\n\u0010\t\u001a\u00020\u001b\"\u00020\u001aH\u0007¢\u0006\u0004\b\u001d\u0010\u001c¨\u0006\u001e"}, d2 = {"", "T", "a", "b", "maxOf", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "c", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "other", "(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "(B[B)B", "", "", "(S[S)S", "", "", "(I[I)I", "", "", "(J[J)J", "", "", "(F[F)F", "", "", "(D[D)D", "minOf", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/comparisons/ComparisonsKt")
/* loaded from: classes2.dex */
public class d extends c {
    @SinceKotlin(version = "1.1")
    @NotNull
    public static <T extends Comparable<? super T>> T maxOf(@NotNull T a2, @NotNull T b2) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b2, "b");
        return a2.compareTo(b2) >= 0 ? a2 : b2;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T maxOf(@NotNull T a2, @NotNull T b2, @NotNull T c) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b2, "b");
        Intrinsics.checkNotNullParameter(c, "c");
        return (T) maxOf(a2, maxOf(b2, c));
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T extends Comparable<? super T>> T maxOf(@NotNull T a2, @NotNull T... other) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(other, "other");
        for (T t : other) {
            a2 = (T) maxOf(a2, t);
        }
        return a2;
    }

    @SinceKotlin(version = "1.4")
    public static final byte maxOf(byte b2, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b3 : other) {
            b2 = (byte) Math.max((int) b2, (int) b3);
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    public static final short maxOf(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s2 : other) {
            s = (short) Math.max((int) s, (int) s2);
        }
        return s;
    }

    @SinceKotlin(version = "1.4")
    public static final int maxOf(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i2 : other) {
            i = Math.max(i, i2);
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    public static final long maxOf(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j2 : other) {
            j = Math.max(j, j2);
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    public static final float maxOf(float f, @NotNull float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f2 : other) {
            f = Math.max(f, f2);
        }
        return f;
    }

    @SinceKotlin(version = "1.4")
    public static final double maxOf(double d, @NotNull double... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (double d2 : other) {
            d = Math.max(d, d2);
        }
        return d;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T minOf(@NotNull T a2, @NotNull T b2) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b2, "b");
        return a2.compareTo(b2) <= 0 ? a2 : b2;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T minOf(@NotNull T a2, @NotNull T b2, @NotNull T c) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b2, "b");
        Intrinsics.checkNotNullParameter(c, "c");
        return (T) minOf(a2, minOf(b2, c));
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T extends Comparable<? super T>> T minOf(@NotNull T a2, @NotNull T... other) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(other, "other");
        for (T t : other) {
            a2 = (T) minOf(a2, t);
        }
        return a2;
    }

    @SinceKotlin(version = "1.4")
    public static final byte minOf(byte b2, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b3 : other) {
            b2 = (byte) Math.min((int) b2, (int) b3);
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    public static final short minOf(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s2 : other) {
            s = (short) Math.min((int) s, (int) s2);
        }
        return s;
    }

    @SinceKotlin(version = "1.4")
    public static final int minOf(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i2 : other) {
            i = Math.min(i, i2);
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    public static final long minOf(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j2 : other) {
            j = Math.min(j, j2);
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    public static final float minOf(float f, @NotNull float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f2 : other) {
            f = Math.min(f, f2);
        }
        return f;
    }

    @SinceKotlin(version = "1.4")
    public static final double minOf(double d, @NotNull double... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (double d2 : other) {
            d = Math.min(d, d2);
        }
        return d;
    }
}
