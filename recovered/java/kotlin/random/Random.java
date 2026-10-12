package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\b'\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000bH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0005H\u0016¨\u0006\u0019"}, d2 = {"Lkotlin/random/Random;", "", "<init>", "()V", "nextBits", "", "bitCount", "nextInt", "until", "from", "nextLong", "", "nextBoolean", "", "nextDouble", "", "nextFloat", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"})
/* loaded from: classes2.dex */
public abstract class Random {

    /* renamed from: Default, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: collision with root package name */
    public static final Random f5878a = PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();

    public abstract int nextBits(int bitCount);

    public int nextInt() {
        return nextBits(32);
    }

    public int nextInt(int until) {
        return nextInt(0, until);
    }

    public int nextInt(int from, int until) {
        int iNextInt;
        int i;
        int iNextBits;
        RandomKt.checkRangeBounds(from, until);
        int i2 = until - from;
        if (i2 > 0 || i2 == Integer.MIN_VALUE) {
            if (((-i2) & i2) == i2) {
                iNextBits = nextBits(RandomKt.fastLog2(i2));
            } else {
                do {
                    iNextInt = nextInt() >>> 1;
                    i = iNextInt % i2;
                } while ((i2 - 1) + (iNextInt - i) < 0);
                iNextBits = i;
            }
            return from + iNextBits;
        }
        while (true) {
            int iNextInt2 = nextInt();
            if (from <= iNextInt2 && iNextInt2 < until) {
                return iNextInt2;
            }
        }
    }

    public long nextLong() {
        return (nextInt() << 32) + nextInt();
    }

    public long nextLong(long until) {
        return nextLong(0L, until);
    }

    public long nextLong(long from, long until) {
        long jNextLong;
        long j;
        long jNextBits;
        int iNextInt;
        RandomKt.checkRangeBounds(from, until);
        long j2 = until - from;
        if (j2 > 0) {
            if (((-j2) & j2) == j2) {
                int i = (int) j2;
                int i2 = (int) (j2 >>> 32);
                if (i != 0) {
                    iNextInt = nextBits(RandomKt.fastLog2(i));
                } else if (i2 == 1) {
                    iNextInt = nextInt();
                } else {
                    jNextBits = (nextBits(RandomKt.fastLog2(i2)) << 32) + (nextInt() & 4294967295L);
                }
                jNextBits = iNextInt & 4294967295L;
            } else {
                do {
                    jNextLong = nextLong() >>> 1;
                    j = jNextLong % j2;
                } while ((j2 - 1) + (jNextLong - j) < 0);
                jNextBits = j;
            }
            return from + jNextBits;
        }
        while (true) {
            long jNextLong2 = nextLong();
            if (from <= jNextLong2 && jNextLong2 < until) {
                return jNextLong2;
            }
        }
    }

    public boolean nextBoolean() {
        return nextBits(1) != 0;
    }

    public double nextDouble() {
        return PlatformRandomKt.doubleFromParts(nextBits(26), nextBits(27));
    }

    public double nextDouble(double until) {
        return nextDouble(0.0d, until);
    }

    public double nextDouble(double from, double until) {
        double dNextDouble;
        RandomKt.checkRangeBounds(from, until);
        double d = until - from;
        if (Double.isInfinite(d) && !Double.isInfinite(from) && !Double.isNaN(from) && !Double.isInfinite(until) && !Double.isNaN(until)) {
            double d2 = 2;
            double dNextDouble2 = ((until / d2) - (from / d2)) * nextDouble();
            dNextDouble = from + dNextDouble2 + dNextDouble2;
        } else {
            dNextDouble = from + (nextDouble() * d);
        }
        return dNextDouble >= until ? Math.nextAfter(until, Double.NEGATIVE_INFINITY) : dNextDouble;
    }

    public float nextFloat() {
        return nextBits(24) / 1.6777216E7f;
    }

    public static /* synthetic */ byte[] nextBytes$default(Random random, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return random.nextBytes(bArr, i, i2);
    }

    @NotNull
    public byte[] nextBytes(@NotNull byte[] array, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (fromIndex < 0 || fromIndex > array.length || toIndex < 0 || toIndex > array.length) {
            StringBuilder sbN = _COROUTINE.a.n(fromIndex, toIndex, "fromIndex (", ") or toIndex (", ") are out of range: 0..");
            sbN.append(array.length);
            sbN.append('.');
            throw new IllegalArgumentException(sbN.toString().toString());
        }
        if (fromIndex > toIndex) {
            throw new IllegalArgumentException(("fromIndex (" + fromIndex + ") must be not greater than toIndex (" + toIndex + ").").toString());
        }
        int i = (toIndex - fromIndex) / 4;
        for (int i2 = 0; i2 < i; i2++) {
            int iNextInt = nextInt();
            array[fromIndex] = (byte) iNextInt;
            array[fromIndex + 1] = (byte) (iNextInt >>> 8);
            array[fromIndex + 2] = (byte) (iNextInt >>> 16);
            array[fromIndex + 3] = (byte) (iNextInt >>> 24);
            fromIndex += 4;
        }
        int i3 = toIndex - fromIndex;
        int iNextBits = nextBits(i3 * 8);
        for (int i4 = 0; i4 < i3; i4++) {
            array[fromIndex + i4] = (byte) (iNextBits >>> (i4 * 8));
        }
        return array;
    }

    @NotNull
    public byte[] nextBytes(@NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return nextBytes(array, 0, array.length);
    }

    @NotNull
    public byte[] nextBytes(int size) {
        return nextBytes(new byte[size]);
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001*B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\n\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0012J\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u001aJ\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010!\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010$J'\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010'R\u0014\u0010(\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "<init>", "()V", "", "bitCount", "nextBits", "(I)I", "nextInt", "()I", "until", "from", "(II)I", "", "nextLong", "()J", "(J)J", "(JJ)J", "", "nextBoolean", "()Z", "", "nextDouble", "()D", "(D)D", "(DD)D", "", "nextFloat", "()F", "", "array", "nextBytes", "([B)[B", "size", "(I)[B", "fromIndex", "toIndex", "([BII)[B", "defaultRandom", "Lkotlin/random/Random;", "a", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: kotlin.random.Random$Default, reason: from kotlin metadata */
    public static final class Companion extends Random implements Serializable {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/random/Random$Default$a;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* renamed from: kotlin.random.Random$Default$a */
        public static final class a implements Serializable {
            static {
                new a();
            }

            private a() {
            }
        }

        @Override // kotlin.random.Random
        public int nextBits(int bitCount) {
            return Random.f5878a.nextBits(bitCount);
        }

        @Override // kotlin.random.Random
        public int nextInt() {
            return Random.f5878a.nextInt();
        }

        @Override // kotlin.random.Random
        public int nextInt(int until) {
            return Random.f5878a.nextInt(until);
        }

        @Override // kotlin.random.Random
        public int nextInt(int from, int until) {
            return Random.f5878a.nextInt(from, until);
        }

        @Override // kotlin.random.Random
        public long nextLong() {
            return Random.f5878a.nextLong();
        }

        @Override // kotlin.random.Random
        public long nextLong(long until) {
            return Random.f5878a.nextLong(until);
        }

        @Override // kotlin.random.Random
        public long nextLong(long from, long until) {
            return Random.f5878a.nextLong(from, until);
        }

        @Override // kotlin.random.Random
        public boolean nextBoolean() {
            return Random.f5878a.nextBoolean();
        }

        @Override // kotlin.random.Random
        public double nextDouble() {
            return Random.f5878a.nextDouble();
        }

        @Override // kotlin.random.Random
        public double nextDouble(double until) {
            return Random.f5878a.nextDouble(until);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double from, double until) {
            return Random.f5878a.nextDouble(from, until);
        }

        @Override // kotlin.random.Random
        public float nextFloat() {
            return Random.f5878a.nextFloat();
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(@NotNull byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.f5878a.nextBytes(array);
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(int size) {
            return Random.f5878a.nextBytes(size);
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(@NotNull byte[] array, int fromIndex, int toIndex) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.f5878a.nextBytes(array, fromIndex, toIndex);
        }
    }
}
