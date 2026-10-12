package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u001a'\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\tH\u0001¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/UInt;", "start", "end", "", "step", "getProgressionLastElement-Nkh28Cs", "(III)I", "getProgressionLastElement", "Lkotlin/ULong;", "", "getProgressionLastElement-7ftBX0g", "(JJJ)J", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class UProgressionUtilKt {
    public static final int a(int i, int i2, int i3) {
        long j = i3 & 4294967295L;
        int i4 = (int) ((i & 4294967295L) % j);
        int i5 = (int) ((i2 & 4294967295L) % j);
        int iCompare = Integer.compare(i4 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i5);
        int iM600constructorimpl = UInt.m600constructorimpl(i4 - i5);
        return iCompare >= 0 ? iM600constructorimpl : UInt.m600constructorimpl(iM600constructorimpl + i3);
    }

    public static final long b(long j, long j2, long j3) {
        long j4;
        if (j3 < 0) {
            if ((j ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j -= j3;
            }
        } else if (j >= 0) {
            j %= j3;
        } else {
            long j5 = j - ((((j >>> 1) / j3) << 1) * j3);
            j = j5 - ((j5 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE) ? j3 : 0L);
        }
        if (j3 < 0) {
            j4 = (j2 ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE) ? j2 : j2 - j3;
        } else if (j2 >= 0) {
            j4 = j2 % j3;
        } else {
            long j6 = j2 - ((((j2 >>> 1) / j3) << 1) * j3);
            j4 = j6 - ((j6 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE) ? j3 : 0L);
        }
        int iCompare = Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j4);
        long jM625constructorimpl = ULong.m625constructorimpl(j - j4);
        return iCompare >= 0 ? jM625constructorimpl : ULong.m625constructorimpl(jM625constructorimpl + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m952getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) < 0) {
                return UInt.m600constructorimpl(i2 - a(i2, i, UInt.m600constructorimpl(i3)));
            }
        } else if (i3 < 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) > 0) {
                return UInt.m600constructorimpl(a(i, i2, UInt.m600constructorimpl(-i3)) + i2);
            }
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
        return i2;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m951getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            return Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) >= 0 ? j2 : ULong.m625constructorimpl(j2 - b(j2, j, ULong.m625constructorimpl(j3)));
        }
        if (j3 < 0) {
            return Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) <= 0 ? j2 : ULong.m625constructorimpl(j2 + b(j, j2, ULong.m625constructorimpl(-j3)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }
}
