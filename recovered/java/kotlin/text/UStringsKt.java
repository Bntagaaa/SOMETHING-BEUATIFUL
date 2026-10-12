package kotlin.text;

import androidx.core.internal.view.SupportMenu;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0011\u001a\u0019\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u00020\u0007*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014\u001a\u0019\u0010\u0013\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\n*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0017\u001a\u0019\u0010\u0016\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0018\u001a\u0011\u0010\u0019\u001a\u00020\r*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u0019\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u001b\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007\u001a\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007\u001a\u0016\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007\u001a\u0016\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006 "}, d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "UStringsKt")
/* loaded from: classes2.dex */
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-LxnNnR4, reason: not valid java name */
    public static final String m1021toStringLxnNnR4(byte b2, int i) {
        String string = Integer.toString(b2 & 255, b.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-olVBNx4, reason: not valid java name */
    public static final String m1023toStringolVBNx4(short s, int i) {
        String string = Integer.toString(s & UShort.MAX_VALUE, b.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-V7xB4Y4, reason: not valid java name */
    public static final String m1022toStringV7xB4Y4(int i, int i2) {
        return UnsignedKt.ulongToString(i & 4294967295L, b.checkRadix(i2));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-JSWoG40, reason: not valid java name */
    public static final String m1020toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, b.checkRadix(i));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str, i);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str, i);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str, i);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        p.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m600constructorimpl(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.m574boximpl(UByte.m575constructorimpl((byte) data));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m600constructorimpl(SupportMenu.USER_MASK) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.m649boximpl(UShort.m650constructorimpl((short) data));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String str, int i) {
        int i2;
        UInt uInt;
        int i3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        b.checkRadix(i);
        int length = str.length();
        UInt uInt2 = null;
        if (length == 0) {
            return null;
        }
        int iM600constructorimpl = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int iM600constructorimpl2 = UInt.m600constructorimpl(i);
        int i4 = 119304647;
        while (i2 < length) {
            int iDigitOf = b.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return uInt2;
            }
            int i5 = iM600constructorimpl ^ Integer.MIN_VALUE;
            if (Integer.compare(i5, i4 ^ Integer.MIN_VALUE) <= 0) {
                uInt = uInt2;
                i3 = iM600constructorimpl;
            } else {
                if (i4 != 119304647) {
                    return uInt2;
                }
                uInt = uInt2;
                i3 = iM600constructorimpl;
                i4 = (int) (((-1) & 4294967295L) / (iM600constructorimpl2 & 4294967295L));
                if (Integer.compare(i5, i4 ^ Integer.MIN_VALUE) > 0) {
                    return uInt;
                }
            }
            int iM600constructorimpl3 = UInt.m600constructorimpl(i3 * iM600constructorimpl2);
            iM600constructorimpl = UInt.m600constructorimpl(UInt.m600constructorimpl(iDigitOf) + iM600constructorimpl3);
            if (Integer.compare(iM600constructorimpl ^ Integer.MIN_VALUE, iM600constructorimpl3 ^ Integer.MIN_VALUE) < 0) {
                return uInt;
            }
            i2++;
            uInt2 = uInt;
        }
        return UInt.m599boximpl(iM600constructorimpl);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong toULongOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0096 A[SYNTHETIC] */
    @kotlin.SinceKotlin(version = "1.5")
    @kotlin.WasExperimental(markerClass = {kotlin.ExperimentalUnsignedTypes.class})
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.ULong toULongOrNull(@org.jetbrains.annotations.NotNull java.lang.String r26, int r27) {
        /*
            r0 = r26
            r1 = r27
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            kotlin.text.b.checkRadix(r1)
            int r2 = r0.length()
            r3 = 0
            if (r2 != 0) goto L14
            return r3
        L14:
            r4 = 0
            char r5 = r0.charAt(r4)
            r6 = 48
            int r6 = kotlin.jvm.internal.Intrinsics.compare(r5, r6)
            r7 = 1
            if (r6 >= 0) goto L2c
            if (r2 == r7) goto L2b
            r6 = 43
            if (r5 == r6) goto L29
            goto L2b
        L29:
            r5 = 1
            goto L2d
        L2b:
            return r3
        L2c:
            r5 = 0
        L2d:
            long r8 = (long) r1
            long r8 = kotlin.ULong.m625constructorimpl(r8)
            r10 = 0
            r12 = 512409557603043100(0x71c71c71c71c71c, double:2.0539100454284282E-274)
            r14 = r10
            r16 = r12
        L3c:
            if (r5 >= r2) goto Lc8
            char r6 = r0.charAt(r5)
            int r6 = kotlin.text.b.digitOf(r6, r1)
            if (r6 >= 0) goto L49
            return r3
        L49:
            r18 = -9223372036854775808
            r20 = r3
            long r3 = r14 ^ r18
            r22 = r8
            r21 = 1
            long r7 = r16 ^ r18
            int r7 = java.lang.Long.compare(r3, r7)
            if (r7 <= 0) goto L97
            int r7 = (r16 > r12 ? 1 : (r16 == r12 ? 0 : -1))
            if (r7 != 0) goto L96
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r9 = (r22 > r10 ? 1 : (r22 == r10 ? 0 : -1))
            if (r9 >= 0) goto L76
            long r16 = r22 ^ r18
            int r9 = (r7 > r16 ? 1 : (r7 == r16 ? 0 : -1))
            if (r9 >= 0) goto L71
            r16 = r10
            goto L8e
        L71:
            r7 = 1
        L73:
            r16 = r7
            goto L8e
        L76:
            long r7 = r7 / r22
            long r7 = r7 << r21
            long r16 = r7 * r22
            r24 = -1
            long r24 = r24 - r16
            long r16 = r24 ^ r18
            long r24 = r22 ^ r18
            int r9 = (r16 > r24 ? 1 : (r16 == r24 ? 0 : -1))
            if (r9 < 0) goto L8a
            r9 = 1
            goto L8b
        L8a:
            r9 = 0
        L8b:
            long r10 = (long) r9
            long r7 = r7 + r10
            goto L73
        L8e:
            long r7 = r16 ^ r18
            int r3 = java.lang.Long.compare(r3, r7)
            if (r3 <= 0) goto L97
        L96:
            return r20
        L97:
            long r14 = r14 * r22
            long r3 = kotlin.ULong.m625constructorimpl(r14)
            int r6 = kotlin.UInt.m600constructorimpl(r6)
            long r6 = (long) r6
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r6 = r6 & r8
            long r6 = kotlin.ULong.m625constructorimpl(r6)
            long r6 = r6 + r3
            long r14 = kotlin.ULong.m625constructorimpl(r6)
            long r6 = r14 ^ r18
            long r3 = r3 ^ r18
            int r3 = java.lang.Long.compare(r6, r3)
            if (r3 >= 0) goto Lbc
            return r20
        Lbc:
            int r5 = r5 + 1
            r3 = r20
            r8 = r22
            r4 = 0
            r7 = 1
            r10 = 0
            goto L3c
        Lc8:
            kotlin.ULong r0 = kotlin.ULong.m624boximpl(r14)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.UStringsKt.toULongOrNull(java.lang.String, int):kotlin.ULong");
    }
}
