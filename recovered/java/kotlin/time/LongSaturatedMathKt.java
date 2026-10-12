package kotlin.time;

import com.google.common.net.HttpHeaders;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a'\u0010\b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a'\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000f\u0010\f\u001a\u0014\u0010\u0011\u001a\u00020\u0010*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"", "value", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/Duration;", "duration", "saturatingAdd-NuflL3o", "(JLkotlin/time/DurationUnit;J)J", "saturatingAdd", "valueNs", HttpHeaders.ReferrerPolicyValues.ORIGIN, "saturatingDiff", "(JJLkotlin/time/DurationUnit;)J", "origin1", "origin2", "saturatingOriginsDiff", "", "isSaturated", "(J)Z", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"})
/* loaded from: classes2.dex */
public final class LongSaturatedMathKt {
    public static final boolean isSaturated(long j) {
        return ((j - 1) | 1) == Long.MAX_VALUE;
    }

    /* renamed from: saturatingAdd-NuflL3o, reason: not valid java name */
    public static final long m1101saturatingAddNuflL3o(long j, @NotNull DurationUnit unit, long j2) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        long jM1065toLongimpl = Duration.m1065toLongimpl(j2, unit);
        if (((j - 1) | 1) == Long.MAX_VALUE) {
            if (!Duration.m1051isInfiniteimpl(j2) || (j ^ jM1065toLongimpl) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinities of different signs");
        }
        if (((jM1065toLongimpl - 1) | 1) != Long.MAX_VALUE) {
            long j3 = j + jM1065toLongimpl;
            return ((jM1065toLongimpl ^ j3) & (j ^ j3)) < 0 ? j < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j3;
        }
        long jM1034divUwyO8pc = Duration.m1034divUwyO8pc(j2, 2);
        long jM1065toLongimpl2 = Duration.m1065toLongimpl(jM1034divUwyO8pc, unit);
        return (1 | (jM1065toLongimpl2 - 1)) == Long.MAX_VALUE ? jM1065toLongimpl2 : m1101saturatingAddNuflL3o(m1101saturatingAddNuflL3o(j, unit, jM1034divUwyO8pc), unit, Duration.m1054minusLRDsOJo(j2, jM1034divUwyO8pc));
    }

    public static final long a(long j) {
        Duration.Companion companion = Duration.INSTANCE;
        return j < 0 ? companion.m1095getNEG_INFINITEUwyO8pc$kotlin_stdlib() : companion.m1094getINFINITEUwyO8pc();
    }

    public static final long saturatingDiff(long j, long j2, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if ((1 | (j2 - 1)) == Long.MAX_VALUE) {
            return Duration.m1070unaryMinusUwyO8pc(a(j2));
        }
        return b(j, j2, unit);
    }

    public static final long saturatingOriginsDiff(long j, long j2, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (((j2 - 1) | 1) == Long.MAX_VALUE) {
            if (j == j2) {
                return Duration.INSTANCE.m1096getZEROUwyO8pc();
            }
            return Duration.m1070unaryMinusUwyO8pc(a(j2));
        }
        if ((1 | (j - 1)) == Long.MAX_VALUE) {
            return a(j);
        }
        return b(j, j2, unit);
    }

    public static final long b(long j, long j2, DurationUnit durationUnit) {
        long j3 = j - j2;
        if (((j3 ^ j) & (~(j3 ^ j2))) < 0) {
            DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
            if (durationUnit.compareTo(durationUnit2) < 0) {
                long jConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit2, durationUnit);
                long j4 = (j / jConvertDurationUnit) - (j2 / jConvertDurationUnit);
                long j5 = (j % jConvertDurationUnit) - (j2 % jConvertDurationUnit);
                Duration.Companion companion = Duration.INSTANCE;
                return Duration.m1055plusLRDsOJo(DurationKt.toDuration(j4, durationUnit2), DurationKt.toDuration(j5, durationUnit));
            }
            return Duration.m1070unaryMinusUwyO8pc(a(j3));
        }
        return DurationKt.toDuration(j3, durationUnit);
    }
}
