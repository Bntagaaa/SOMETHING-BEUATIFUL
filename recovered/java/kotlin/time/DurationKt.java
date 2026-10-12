package kotlin.time;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import kotlin.text.q;
import kotlin.time.Duration;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\t\"\u0014\u0010\n\u001a\u00020\u00008\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0014\u0010\f\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\r\"\u0014\u0010\u000e\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/Duration;", "toDuration", "(ILkotlin/time/DurationUnit;)J", "", "(JLkotlin/time/DurationUnit;)J", "", "(DLkotlin/time/DurationUnit;)J", "NANOS_IN_MILLIS", "I", "MAX_NANOS", "J", "MAX_MILLIS", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1059:1\n1012#1,6:1061\n1015#1,3:1067\n1012#1,6:1070\n1012#1,6:1076\n1015#1,3:1085\n1#2:1060\n1734#3,3:1082\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1061,6\n970#1:1067,3\n973#1:1070,6\n976#1:1076,6\n1012#1:1085,3\n1001#1:1082,3\n*E\n"})
/* loaded from: classes2.dex */
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    public static final int NANOS_IN_MILLIS = 1000000;

    public static final long access$millisToNanos(long j) {
        return j * NANOS_IN_MILLIS;
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public static final long toDuration(int i, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return b(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i, unit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, unit);
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public static final long toDuration(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long jConvertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(MAX_NANOS, durationUnit, unit);
        if ((-jConvertDurationUnitOverflow) <= j && j <= jConvertDurationUnitOverflow) {
            return b(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, unit, durationUnit));
        }
        return Duration.m1031constructorimpl((RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, MAX_MILLIS) << 1) + 1);
    }

    @SinceKotlin(version = "1.6")
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public static final long toDuration(double d, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double dConvertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dConvertDurationUnit)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long jRoundToLong = MathKt.roundToLong(dConvertDurationUnit);
        if (-4611686018426999999L <= jRoundToLong && jRoundToLong < 4611686018427000000L) {
            return b(jRoundToLong);
        }
        return a(MathKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.MILLISECONDS)));
    }

    public static final long access$parseDuration(String str, boolean z) {
        long jM1055plusLRDsOJo;
        DurationUnit durationUnit;
        boolean z2;
        boolean z3;
        char cCharAt;
        char cCharAt2;
        char cCharAt3;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        Duration.Companion companion = Duration.INSTANCE;
        long jM1096getZEROUwyO8pc = companion.m1096getZEROUwyO8pc();
        char cCharAt4 = str.charAt(0);
        int i = (cCharAt4 == '+' || cCharAt4 == '-') ? 1 : 0;
        boolean z4 = i > 0;
        boolean z5 = z4 && StringsKt__StringsKt.startsWith$default((CharSequence) str, '-', false, 2, (Object) null);
        if (length <= i) {
            throw new IllegalArgumentException("No components");
        }
        char c = ':';
        char c2 = '0';
        if (str.charAt(i) == 'P') {
            int i2 = i + 1;
            if (i2 == length) {
                throw new IllegalArgumentException();
            }
            DurationUnit durationUnit2 = null;
            boolean z6 = false;
            while (i2 < length) {
                if (str.charAt(i2) != 'T') {
                    int i3 = i2;
                    while (i3 < str.length() && ((c2 <= (cCharAt3 = str.charAt(i3)) && cCharAt3 < c) || StringsKt__StringsKt.contains$default((CharSequence) "+-.", cCharAt3, false, 2, (Object) null))) {
                        i3++;
                    }
                    Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring = str.substring(i2, i3);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    if (strSubstring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length2 = strSubstring.length() + i2;
                    if (length2 < 0 || length2 >= str.length()) {
                        throw new IllegalArgumentException("Missing unit for value ".concat(strSubstring));
                    }
                    char cCharAt5 = str.charAt(length2);
                    int i4 = length2 + 1;
                    DurationUnit durationUnitDurationUnitByIsoChar = DurationUnitKt__DurationUnitKt.durationUnitByIsoChar(cCharAt5, z6);
                    if (durationUnit2 != null && durationUnit2.compareTo(durationUnitDurationUnitByIsoChar) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) strSubstring, '.', 0, false, 6, (Object) null);
                    if (durationUnitDurationUnitByIsoChar == DurationUnit.SECONDS && iIndexOf$default > 0) {
                        Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring2 = strSubstring.substring(0, iIndexOf$default);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        long jM1055plusLRDsOJo2 = Duration.m1055plusLRDsOJo(jM1096getZEROUwyO8pc, toDuration(c(strSubstring2), durationUnitDurationUnitByIsoChar));
                        Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring3 = strSubstring.substring(iIndexOf$default);
                        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                        jM1096getZEROUwyO8pc = Duration.m1055plusLRDsOJo(jM1055plusLRDsOJo2, toDuration(Double.parseDouble(strSubstring3), durationUnitDurationUnitByIsoChar));
                    } else {
                        jM1096getZEROUwyO8pc = Duration.m1055plusLRDsOJo(jM1096getZEROUwyO8pc, toDuration(c(strSubstring), durationUnitDurationUnitByIsoChar));
                    }
                    durationUnit2 = durationUnitDurationUnitByIsoChar;
                    i2 = i4;
                    c2 = '0';
                    c = ':';
                } else {
                    if (z6 || (i2 = i2 + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z6 = true;
                }
            }
        } else {
            if (z) {
                throw new IllegalArgumentException();
            }
            if (q.regionMatches(str, i, "Infinity", 0, Math.max(length - i, 8), true)) {
                jM1096getZEROUwyO8pc = companion.m1094getINFINITEUwyO8pc();
            } else {
                boolean z7 = !z4;
                if (z4 && str.charAt(i) == '(' && StringsKt.last(str) == ')') {
                    i++;
                    length--;
                    if (i == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    jM1055plusLRDsOJo = jM1096getZEROUwyO8pc;
                    z3 = false;
                    z2 = true;
                    durationUnit = null;
                } else {
                    jM1055plusLRDsOJo = jM1096getZEROUwyO8pc;
                    durationUnit = null;
                    z2 = z7;
                    z3 = false;
                }
                while (i < length) {
                    if (z3 && z2) {
                        while (i < str.length() && str.charAt(i) == ' ') {
                            i++;
                        }
                    }
                    int i5 = i;
                    while (i5 < str.length() && (('0' <= (cCharAt2 = str.charAt(i5)) && cCharAt2 < ':') || cCharAt2 == '.')) {
                        i5++;
                    }
                    Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring4 = str.substring(i, i5);
                    Intrinsics.checkNotNullExpressionValue(strSubstring4, "substring(...)");
                    if (strSubstring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = strSubstring4.length() + i;
                    int i6 = length3;
                    while (i6 < str.length() && 'a' <= (cCharAt = str.charAt(i6)) && cCharAt < '{') {
                        i6++;
                    }
                    Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring5 = str.substring(length3, i6);
                    Intrinsics.checkNotNullExpressionValue(strSubstring5, "substring(...)");
                    int length4 = length3 + strSubstring5.length();
                    DurationUnit durationUnitDurationUnitByShortName = DurationUnitKt__DurationUnitKt.durationUnitByShortName(strSubstring5);
                    if (durationUnit != null && durationUnit.compareTo(durationUnitDurationUnitByShortName) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) strSubstring4, '.', 0, false, 6, (Object) null);
                    if (iIndexOf$default2 > 0) {
                        Intrinsics.checkNotNull(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring6 = strSubstring4.substring(0, iIndexOf$default2);
                        Intrinsics.checkNotNullExpressionValue(strSubstring6, "substring(...)");
                        long jM1055plusLRDsOJo3 = Duration.m1055plusLRDsOJo(jM1055plusLRDsOJo, toDuration(Long.parseLong(strSubstring6), durationUnitDurationUnitByShortName));
                        Intrinsics.checkNotNull(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring7 = strSubstring4.substring(iIndexOf$default2);
                        Intrinsics.checkNotNullExpressionValue(strSubstring7, "substring(...)");
                        jM1055plusLRDsOJo = Duration.m1055plusLRDsOJo(jM1055plusLRDsOJo3, toDuration(Double.parseDouble(strSubstring7), durationUnitDurationUnitByShortName));
                        if (length4 < length) {
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                    } else {
                        jM1055plusLRDsOJo = Duration.m1055plusLRDsOJo(jM1055plusLRDsOJo, toDuration(Long.parseLong(strSubstring4), durationUnitDurationUnitByShortName));
                    }
                    durationUnit = durationUnitDurationUnitByShortName;
                    i = length4;
                    z3 = true;
                }
                jM1096getZEROUwyO8pc = jM1055plusLRDsOJo;
            }
        }
        return z5 ? Duration.m1070unaryMinusUwyO8pc(jM1096getZEROUwyO8pc) : jM1096getZEROUwyO8pc;
    }

    public static final long c(String str) {
        int length = str.length();
        int i = (length <= 0 || !StringsKt__StringsKt.contains$default((CharSequence) "+-", str.charAt(0), false, 2, (Object) null)) ? 0 : 1;
        if (length - i > 16) {
            Iterable intRange = new IntRange(i, StringsKt__StringsKt.getLastIndex(str));
            if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                Iterator it = intRange.iterator();
                while (it.hasNext()) {
                    char cCharAt = str.charAt(((IntIterator) it).nextInt());
                    if ('0' > cCharAt || cCharAt >= ':') {
                    }
                }
            }
            return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
        return q.startsWith$default(str, "+", false, 2, null) ? Long.parseLong(StringsKt___StringsKt.drop(str, 1)) : Long.parseLong(str);
    }

    public static final long access$nanosToMillis(long j) {
        return j / NANOS_IN_MILLIS;
    }

    public static final long b(long j) {
        return Duration.m1031constructorimpl(j << 1);
    }

    public static final long access$durationOfNanosNormalized(long j) {
        if (-4611686018426999999L > j || j >= 4611686018427000000L) {
            return Duration.m1031constructorimpl(((j / NANOS_IN_MILLIS) << 1) + 1);
        }
        return b(j);
    }

    public static final long a(long j) {
        if (-4611686018426L > j || j >= 4611686018427L) {
            return Duration.m1031constructorimpl((RangesKt.coerceIn(j, -4611686018427387903L, MAX_MILLIS) << 1) + 1);
        }
        return b(j * NANOS_IN_MILLIS);
    }
}
