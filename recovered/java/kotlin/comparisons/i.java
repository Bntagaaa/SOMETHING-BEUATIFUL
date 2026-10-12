package kotlin.comparisons;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a\u001f\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001f\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u001f\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a#\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0010\u001a\u00020\u000f\"\u00020\u0000H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001a#\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\n\u0010\u0010\u001a\u00020\u0013\"\u00020\u0006H\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001a#\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\n\u0010\u0010\u001a\u00020\u0016\"\u00020\tH\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u001a#\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\n\u0010\u0010\u001a\u00020\u0019\"\u00020\fH\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001f\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u001c\u0010\u0004\u001a\u001f\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001e\u0010\b\u001a\u001f\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0007¢\u0006\u0004\b\u001f\u0010\u000b\u001a\u001f\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0007¢\u0006\u0004\b \u0010\u000e\u001a#\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0010\u001a\u00020\u000f\"\u00020\u0000H\u0007¢\u0006\u0004\b!\u0010\u0012\u001a#\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\n\u0010\u0010\u001a\u00020\u0013\"\u00020\u0006H\u0007¢\u0006\u0004\b\"\u0010\u0015\u001a#\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\n\u0010\u0010\u001a\u00020\u0016\"\u00020\tH\u0007¢\u0006\u0004\b#\u0010\u0018\u001a#\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\n\u0010\u0010\u001a\u00020\u0019\"\u00020\fH\u0007¢\u0006\u0004\b$\u0010\u001b¨\u0006%"}, d2 = {"Lkotlin/UInt;", "a", "b", "maxOf-J1ME1BU", "(II)I", "maxOf", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "Lkotlin/UByte;", "maxOf-Kr8caGY", "(BB)B", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "Lkotlin/UIntArray;", "other", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf-J1ME1BU", "minOf", "minOf-eb3DHEI", "minOf-Kr8caGY", "minOf-5PvTz6A", "minOf-Md2H83M", "minOf-R03FKyM", "minOf-Wr6uiD8", "minOf-t1qELG4", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/comparisons/UComparisonsKt")
/* loaded from: classes2.dex */
class i {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-J1ME1BU, reason: not valid java name */
    public static final int m936maxOfJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) >= 0 ? i : i2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-eb3DHEI, reason: not valid java name */
    public static final long m941maxOfeb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) >= 0 ? j : j2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-Kr8caGY, reason: not valid java name */
    public static final byte m937maxOfKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & 255, b3 & 255) >= 0 ? b2 : b3;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-5PvTz6A, reason: not valid java name */
    public static final short m935maxOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) >= 0 ? s : s2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Md2H83M, reason: not valid java name */
    public static final int m938maxOfMd2H83M(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM614getSizeimpl = UIntArray.m614getSizeimpl(other);
        for (int i2 = 0; i2 < iM614getSizeimpl; i2++) {
            i = m936maxOfJ1ME1BU(i, UIntArray.m613getpVg5ArA(other, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-R03FKyM, reason: not valid java name */
    public static final long m939maxOfR03FKyM(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM639getSizeimpl = ULongArray.m639getSizeimpl(other);
        for (int i = 0; i < iM639getSizeimpl; i++) {
            j = m941maxOfeb3DHEI(j, ULongArray.m638getsVKNKU(other, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Wr6uiD8, reason: not valid java name */
    public static final byte m940maxOfWr6uiD8(byte b2, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM589getSizeimpl = UByteArray.m589getSizeimpl(other);
        for (int i = 0; i < iM589getSizeimpl; i++) {
            b2 = m937maxOfKr8caGY(b2, UByteArray.m588getw2LRezQ(other, i));
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-t1qELG4, reason: not valid java name */
    public static final short m942maxOft1qELG4(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM664getSizeimpl = UShortArray.m664getSizeimpl(other);
        for (int i = 0; i < iM664getSizeimpl; i++) {
            s = m935maxOf5PvTz6A(s, UShortArray.m663getMh2AYeg(other, i));
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-J1ME1BU, reason: not valid java name */
    public static final int m944minOfJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) <= 0 ? i : i2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-eb3DHEI, reason: not valid java name */
    public static final long m949minOfeb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) <= 0 ? j : j2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-Kr8caGY, reason: not valid java name */
    public static final byte m945minOfKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & 255, b3 & 255) <= 0 ? b2 : b3;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-5PvTz6A, reason: not valid java name */
    public static final short m943minOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) <= 0 ? s : s2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Md2H83M, reason: not valid java name */
    public static final int m946minOfMd2H83M(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM614getSizeimpl = UIntArray.m614getSizeimpl(other);
        for (int i2 = 0; i2 < iM614getSizeimpl; i2++) {
            i = m944minOfJ1ME1BU(i, UIntArray.m613getpVg5ArA(other, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-R03FKyM, reason: not valid java name */
    public static final long m947minOfR03FKyM(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM639getSizeimpl = ULongArray.m639getSizeimpl(other);
        for (int i = 0; i < iM639getSizeimpl; i++) {
            j = m949minOfeb3DHEI(j, ULongArray.m638getsVKNKU(other, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Wr6uiD8, reason: not valid java name */
    public static final byte m948minOfWr6uiD8(byte b2, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM589getSizeimpl = UByteArray.m589getSizeimpl(other);
        for (int i = 0; i < iM589getSizeimpl; i++) {
            b2 = m945minOfKr8caGY(b2, UByteArray.m588getw2LRezQ(other, i));
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-t1qELG4, reason: not valid java name */
    public static final short m950minOft1qELG4(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM664getSizeimpl = UShortArray.m664getSizeimpl(other);
        for (int i = 0; i < iM664getSizeimpl; i++) {
            s = m943minOf5PvTz6A(s, UShortArray.m663getMh2AYeg(other, i));
        }
        return s;
    }
}
