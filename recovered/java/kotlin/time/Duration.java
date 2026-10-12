package kotlin.time;

import com.airbnb.lottie.utils.Utils;
import com.google.common.primitives.Longs;
import gnu.bytecode.Access;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.comparisons.d;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.6")
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b'\b\u0087@\u0018\u0000 q2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001qB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0013\u0010\u0011J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0019H\u0086\u0002¢\u0006\u0004\b\u0016\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b\u001b\u0010\u0017J\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0019H\u0086\u0002¢\u0006\u0004\b\u001b\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010#\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0000¢\u0006\u0004\b!\u0010\"J\r\u0010&\u001a\u00020\u000b¢\u0006\u0004\b$\u0010%J\r\u0010(\u001a\u00020\u000b¢\u0006\u0004\b'\u0010%J\r\u0010*\u001a\u00020\u000b¢\u0006\u0004\b)\u0010%J\r\u0010,\u001a\u00020\u000b¢\u0006\u0004\b+\u0010%J\u0018\u0010/\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b-\u0010.J\u009d\u0001\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u001002u\u00109\u001aq\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(5\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u000001H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010;J\u0088\u0001\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u001002`\u00109\u001a\\\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(5\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u00000=H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010>Js\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u001002K\u00109\u001aG\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u00000?H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010@J^\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u0010026\u00109\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u00000AH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010BJ\u0015\u0010E\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bC\u0010DJ\u0015\u0010G\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bF\u0010\"J\u0015\u0010J\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bH\u0010IJ\u000f\u0010N\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MJ\u001f\u0010N\u001a\u00020K2\u0006\u0010 \u001a\u00020\u001f2\b\b\u0002\u0010O\u001a\u00020\u0006¢\u0006\u0004\bL\u0010PJ\r\u0010R\u001a\u00020K¢\u0006\u0004\bQ\u0010MR\u0011\u0010T\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\bS\u0010\u0005R\u001a\u0010Y\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\bW\u0010X\u001a\u0004\bU\u0010VR\u001a\u0010\\\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b[\u0010X\u001a\u0004\bZ\u0010VR\u001a\u0010_\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b^\u0010X\u001a\u0004\b]\u0010VR\u001a\u0010b\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\ba\u0010X\u001a\u0004\b`\u0010VR\u0011\u0010d\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bc\u0010\u0005R\u0011\u0010f\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\be\u0010\u0005R\u0011\u0010h\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bg\u0010\u0005R\u0011\u0010j\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bi\u0010\u0005R\u0011\u0010l\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bk\u0010\u0005R\u0011\u0010n\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bm\u0010\u0005R\u0011\u0010p\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bo\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006r"}, d2 = {"Lkotlin/time/Duration;", "", "", "rawValue", "constructor-impl", "(J)J", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "unaryMinus-UwyO8pc", "unaryMinus", "plus-LRDsOJo", "(JJ)J", "plus", "minus-LRDsOJo", "minus", "scale", "times-UwyO8pc", "(JI)J", "times", "", "(JD)J", "div-UwyO8pc", "div", "div-LRDsOJo", "(JJ)D", "Lkotlin/time/DurationUnit;", "unit", "truncateTo-UwyO8pc$kotlin_stdlib", "(JLkotlin/time/DurationUnit;)J", "truncateTo", "isNegative-impl", "(J)Z", "isNegative", "isPositive-impl", "isPositive", "isInfinite-impl", "isInfinite", "isFinite-impl", "isFinite", "compareTo-LRDsOJo", "(JJ)I", "compareTo", "T", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "action", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "toComponents", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toDouble", "toLong-impl", "toLong", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "toInt", "", "toString-impl", "(J)Ljava/lang/String;", "toString", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "toIsoString-impl", "toIsoString", "getAbsoluteValue-UwyO8pc", "absoluteValue", "getHoursComponent-impl", "(J)I", "getHoursComponent$annotations", "()V", "hoursComponent", "getMinutesComponent-impl", "getMinutesComponent$annotations", "minutesComponent", "getSecondsComponent-impl", "getSecondsComponent$annotations", "secondsComponent", "getNanosecondsComponent-impl", "getNanosecondsComponent$annotations", "nanosecondsComponent", "getInWholeDays-impl", "inWholeDays", "getInWholeHours-impl", "inWholeHours", "getInWholeMinutes-impl", "inWholeMinutes", "getInWholeSeconds-impl", "inWholeSeconds", "getInWholeMilliseconds-impl", "inWholeMilliseconds", "getInWholeMicroseconds-impl", "inWholeMicroseconds", "getInWholeNanoseconds-impl", "inWholeNanoseconds", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
@WasExperimental(markerClass = {ExperimentalTime.class})
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1059:1\n38#1:1060\n38#1:1061\n38#1:1062\n38#1:1063\n38#1:1064\n501#1:1065\n518#1:1073\n170#2,6:1066\n1#3:1072\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1060\n40#1:1061\n275#1:1062\n295#1:1063\n479#1:1064\n728#1:1065\n819#1:1073\n770#1:1066,6\n*E\n"})
/* loaded from: classes2.dex */
public final class Duration implements Comparable<Duration> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: collision with root package name */
    public static final long f6088b = m1031constructorimpl(0);
    public static final long c = m1031constructorimpl((DurationKt.MAX_MILLIS << 1) + 1);
    public static final long d = m1031constructorimpl(((-4611686018427387903L) << 1) + 1);

    /* renamed from: a, reason: collision with root package name */
    public final long f6089a;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m1029boximpl(long j) {
        return new Duration(j);
    }

    public static final boolean d(long j) {
        return (((int) j) & 1) == 0;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1035equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).getF6089a();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1036equalsimpl0(long j, long j2) {
        return j == j2;
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1049hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m1052isNegativeimpl(long j) {
        return j < 0;
    }

    /* renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m1053isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object other) {
        return m1035equalsimpl(this.f6089a, other);
    }

    public int hashCode() {
        return m1049hashCodeimpl(this.f6089a);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getF6089a() {
        return this.f6089a;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m1071compareToLRDsOJo(duration.getF6089a());
    }

    public /* synthetic */ Duration(long j) {
        this.f6089a = j;
    }

    public static final DurationUnit c(long j) {
        return d(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1031constructorimpl(long j) {
        if (!DurationJvmKt.getDurationAssertionsEnabled()) {
            return j;
        }
        if (d(j)) {
            long j2 = j >> 1;
            if (-4611686018426999999L <= j2 && j2 < 4611686018427000000L) {
                return j;
            }
            throw new AssertionError(j2 + " ns is out of nanoseconds range");
        }
        long j3 = j >> 1;
        if (-4611686018427387903L > j3 || j3 >= Longs.MAX_POWER_OF_TWO) {
            throw new AssertionError(j3 + " ms is out of milliseconds range");
        }
        if (-4611686018426L > j3 || j3 >= 4611686018427L) {
            return j;
        }
        throw new AssertionError(j3 + " ms is denormalized");
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0017\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u000eJ\u0017\u0010\u0014\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0013R\u0017\u0010\u0017\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u001b\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001aR\u001f\u0010$\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!R\u001f\u0010$\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010'\u001a\u0004\b \u0010&R\u001f\u0010$\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010)\u001a\u0004\b \u0010(R\u001f\u0010,\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010#\u001a\u0004\b*\u0010!R\u001f\u0010,\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010'\u001a\u0004\b*\u0010&R\u001f\u0010,\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010)\u001a\u0004\b*\u0010(R\u001f\u0010/\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010#\u001a\u0004\b-\u0010!R\u001f\u0010/\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010'\u001a\u0004\b-\u0010&R\u001f\u0010/\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010)\u001a\u0004\b-\u0010(R\u001f\u00102\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b1\u0010#\u001a\u0004\b0\u0010!R\u001f\u00102\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b1\u0010'\u001a\u0004\b0\u0010&R\u001f\u00102\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b1\u0010)\u001a\u0004\b0\u0010(R\u001f\u00105\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010#\u001a\u0004\b3\u0010!R\u001f\u00105\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010'\u001a\u0004\b3\u0010&R\u001f\u00105\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010)\u001a\u0004\b3\u0010(R\u001f\u00108\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010#\u001a\u0004\b6\u0010!R\u001f\u00108\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010'\u001a\u0004\b6\u0010&R\u001f\u00108\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010)\u001a\u0004\b6\u0010(R\u001f\u0010;\u001a\u00020\f*\u00020\u001f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010#\u001a\u0004\b9\u0010!R\u001f\u0010;\u001a\u00020\f*\u00020%8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010'\u001a\u0004\b9\u0010&R\u001f\u0010;\u001a\u00020\f*\u00020\u00048Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010)\u001a\u0004\b9\u0010(¨\u0006<"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "<init>", "()V", "", "value", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "convert", "(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D", "", "Lkotlin/time/Duration;", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parse", "parseIsoString-UwyO8pc", "parseIsoString", "parseOrNull-FghU774", "(Ljava/lang/String;)Lkotlin/time/Duration;", "parseOrNull", "parseIsoStringOrNull-FghU774", "parseIsoStringOrNull", "ZERO", "J", "getZERO-UwyO8pc", "()J", "INFINITE", "getINFINITE-UwyO8pc", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "", "getNanoseconds-UwyO8pc", "(I)J", "getNanoseconds-UwyO8pc$annotations", "(I)V", "nanoseconds", "", "(J)J", "(J)V", "(D)J", "(D)V", "getMicroseconds-UwyO8pc", "getMicroseconds-UwyO8pc$annotations", "microseconds", "getMilliseconds-UwyO8pc", "getMilliseconds-UwyO8pc$annotations", "milliseconds", "getSeconds-UwyO8pc", "getSeconds-UwyO8pc$annotations", "seconds", "getMinutes-UwyO8pc", "getMinutes-UwyO8pc$annotations", "minutes", "getHours-UwyO8pc", "getHours-UwyO8pc$annotations", "hours", "getDays-UwyO8pc", "getDays-UwyO8pc$annotations", "days", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1073getDaysUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1074getDaysUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1075getDaysUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1076getHoursUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1077getHoursUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1078getHoursUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1079getMicrosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1080getMicrosecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1081getMicrosecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1082getMillisecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1083getMillisecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1084getMillisecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1085getMinutesUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1086getMinutesUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1087getMinutesUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1088getNanosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1089getNanosecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1090getNanosecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1091getSecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1092getSecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m1093getSecondsUwyO8pc$annotations(long j) {
        }

        private Companion() {
        }

        /* renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m1096getZEROUwyO8pc() {
            return Duration.f6088b;
        }

        /* renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m1094getINFINITEUwyO8pc() {
            return Duration.c;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m1095getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.d;
        }

        @ExperimentalTime
        public final double convert(double value, @NotNull DurationUnit sourceUnit, @NotNull DurationUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        /* renamed from: parse-UwyO8pc, reason: not valid java name */
        public final long m1097parseUwyO8pc(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, false);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(_COROUTINE.a.A("Invalid duration string format: '", value, "'."), e);
            }
        }

        /* renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m1098parseIsoStringUwyO8pc(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(_COROUTINE.a.A("Invalid ISO duration string format: '", value, "'."), e);
            }
        }

        @Nullable
        /* renamed from: parseOrNull-FghU774, reason: not valid java name */
        public final Duration m1100parseOrNullFghU774(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m1029boximpl(DurationKt.access$parseDuration(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @Nullable
        /* renamed from: parseIsoStringOrNull-FghU774, reason: not valid java name */
        public final Duration m1099parseIsoStringOrNullFghU774(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m1029boximpl(DurationKt.access$parseDuration(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m1070unaryMinusUwyO8pc(long j) {
        return m1031constructorimpl(((-(j >> 1)) << 1) + (((int) j) & 1));
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m1055plusLRDsOJo(long j, long j2) {
        if (m1051isInfiniteimpl(j)) {
            if (m1050isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (m1051isInfiniteimpl(j2)) {
            return j2;
        }
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            if (i == 1) {
                return a(j >> 1, j2 >> 1);
            }
            return a(j2 >> 1, j >> 1);
        }
        long j3 = (j >> 1) + (j2 >> 1);
        if (!d(j)) {
            return DurationKt.a(j3);
        }
        return DurationKt.access$durationOfNanosNormalized(j3);
    }

    public static final long a(long j, long j2) {
        long jAccess$nanosToMillis = DurationKt.access$nanosToMillis(j2);
        long j3 = j + jAccess$nanosToMillis;
        if (-4611686018426L <= j3 && j3 < 4611686018427L) {
            return DurationKt.b(DurationKt.access$millisToNanos(j3) + (j2 - DurationKt.access$millisToNanos(jAccess$nanosToMillis)));
        }
        return m1031constructorimpl((RangesKt.coerceIn(j3, -4611686018427387903L, DurationKt.MAX_MILLIS) << 1) + 1);
    }

    /* renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m1054minusLRDsOJo(long j, long j2) {
        return m1055plusLRDsOJo(j, m1070unaryMinusUwyO8pc(j2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
    
        if ((kotlin.math.MathKt.getSign(r15) * kotlin.math.MathKt.getSign(r0)) > 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ad, code lost:
    
        if ((kotlin.math.MathKt.getSign(r15) * kotlin.math.MathKt.getSign(r0)) > 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b1, code lost:
    
        return kotlin.time.Duration.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b4, code lost:
    
        return kotlin.time.Duration.d;
     */
    /* renamed from: times-UwyO8pc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long m1057timesUwyO8pc(long r13, int r15) {
        /*
            boolean r0 = m1051isInfiniteimpl(r13)
            if (r0 == 0) goto L18
            if (r15 == 0) goto L10
            if (r15 <= 0) goto Lb
            return r13
        Lb:
            long r13 = m1070unaryMinusUwyO8pc(r13)
            return r13
        L10:
            java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
            java.lang.String r14 = "Multiplying infinite duration by zero yields an undefined result."
            r13.<init>(r14)
            throw r13
        L18:
            if (r15 != 0) goto L1d
            long r13 = kotlin.time.Duration.f6088b
            return r13
        L1d:
            r0 = 1
            long r0 = r13 >> r0
            long r2 = (long) r15
            long r4 = r0 * r2
            boolean r13 = d(r13)
            r6 = 4611686018427387903(0x3fffffffffffffff, double:1.9999999999999998)
            r8 = -4611686018427387903(0xc000000000000001, double:-2.0000000000000004)
            if (r13 == 0) goto L8f
            r13 = -2147483647(0xffffffff80000001, double:NaN)
            int r10 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r10 > 0) goto L48
            r13 = 2147483648(0x80000000, double:1.0609978955E-314)
            int r10 = (r0 > r13 ? 1 : (r0 == r13 ? 0 : -1))
            if (r10 >= 0) goto L48
            long r13 = kotlin.time.DurationKt.access$durationOfNanos(r4)
            return r13
        L48:
            long r13 = r4 / r2
            int r10 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r10 != 0) goto L53
            long r13 = kotlin.time.DurationKt.access$durationOfNanosNormalized(r4)
            return r13
        L53:
            long r13 = kotlin.time.DurationKt.access$nanosToMillis(r0)
            long r4 = kotlin.time.DurationKt.access$millisToNanos(r13)
            long r4 = r0 - r4
            long r10 = r13 * r2
            long r4 = r4 * r2
            long r4 = kotlin.time.DurationKt.access$nanosToMillis(r4)
            long r4 = r4 + r10
            long r2 = r10 / r2
            int r12 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r12 != 0) goto L82
            long r13 = r4 ^ r10
            r2 = 0
            int r10 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r10 < 0) goto L82
            kotlin.ranges.LongRange r13 = new kotlin.ranges.LongRange
            r13.<init>(r8, r6)
            long r13 = kotlin.ranges.RangesKt.c(r4, r13)
            long r13 = kotlin.time.DurationKt.access$durationOfMillis(r13)
            return r13
        L82:
            int r13 = kotlin.math.MathKt.getSign(r0)
            int r14 = kotlin.math.MathKt.getSign(r15)
            int r14 = r14 * r13
            if (r14 <= 0) goto Lb2
            goto Laf
        L8f:
            long r13 = r4 / r2
            int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r2 != 0) goto La3
            kotlin.ranges.LongRange r13 = new kotlin.ranges.LongRange
            r13.<init>(r8, r6)
            long r13 = kotlin.ranges.RangesKt.c(r4, r13)
            long r13 = kotlin.time.DurationKt.access$durationOfMillis(r13)
            return r13
        La3:
            int r13 = kotlin.math.MathKt.getSign(r0)
            int r14 = kotlin.math.MathKt.getSign(r15)
            int r14 = r14 * r13
            if (r14 <= 0) goto Lb2
        Laf:
            long r13 = kotlin.time.Duration.c
            return r13
        Lb2:
            long r13 = kotlin.time.Duration.d
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.Duration.m1057timesUwyO8pc(long, int):long");
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m1056timesUwyO8pc(long j, double d2) {
        int iRoundToInt = MathKt.roundToInt(d2);
        if (iRoundToInt == d2) {
            return m1057timesUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitC = c(j);
        return DurationKt.toDuration(m1062toDoubleimpl(j, durationUnitC) * d2, durationUnitC);
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m1034divUwyO8pc(long j, int i) {
        if (i == 0) {
            if (m1053isPositiveimpl(j)) {
                return c;
            }
            if (m1052isNegativeimpl(j)) {
                return d;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (d(j)) {
            return DurationKt.b((j >> 1) / i);
        }
        if (m1051isInfiniteimpl(j)) {
            return m1057timesUwyO8pc(j, MathKt.getSign(i));
        }
        long j2 = j >> 1;
        long j3 = i;
        long j4 = j2 / j3;
        if (-4611686018426L <= j4 && j4 < 4611686018427L) {
            return DurationKt.b(DurationKt.access$millisToNanos(j4) + (DurationKt.access$millisToNanos(j2 - (j4 * j3)) / j3));
        }
        return m1031constructorimpl((j4 << 1) + 1);
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m1033divUwyO8pc(long j, double d2) {
        int iRoundToInt = MathKt.roundToInt(d2);
        if (iRoundToInt == d2 && iRoundToInt != 0) {
            return m1034divUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitC = c(j);
        return DurationKt.toDuration(m1062toDoubleimpl(j, durationUnitC) / d2, durationUnitC);
    }

    /* renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m1032divLRDsOJo(long j, long j2) {
        DurationUnit durationUnit = (DurationUnit) d.maxOf(c(j), c(j2));
        return m1062toDoubleimpl(j, durationUnit) / m1062toDoubleimpl(j2, durationUnit);
    }

    /* renamed from: truncateTo-UwyO8pc$kotlin_stdlib, reason: not valid java name */
    public static final long m1069truncateToUwyO8pc$kotlin_stdlib(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnitC = c(j);
        if (unit.compareTo(durationUnitC) <= 0 || m1051isInfiniteimpl(j)) {
            return j;
        }
        long j2 = j >> 1;
        return DurationKt.toDuration(j2 - (j2 % DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, unit, durationUnitC)), durationUnitC);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m1051isInfiniteimpl(long j) {
        return j == c || j == d;
    }

    /* renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m1050isFiniteimpl(long j) {
        return !m1051isInfiniteimpl(j);
    }

    /* renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m1037getAbsoluteValueUwyO8pc(long j) {
        return m1052isNegativeimpl(j) ? m1070unaryMinusUwyO8pc(j) : j;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m1071compareToLRDsOJo(long j) {
        return m1030compareToLRDsOJo(this.f6089a, j);
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m1030compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m1052isNegativeimpl(j) ? -i : i;
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1061toComponentsimpl(long j, @NotNull Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1039getInWholeDaysimpl(j)), Integer.valueOf(m1038getHoursComponentimpl(j)), Integer.valueOf(m1046getMinutesComponentimpl(j)), Integer.valueOf(m1048getSecondsComponentimpl(j)), Integer.valueOf(m1047getNanosecondsComponentimpl(j)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1060toComponentsimpl(long j, @NotNull Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1040getInWholeHoursimpl(j)), Integer.valueOf(m1046getMinutesComponentimpl(j)), Integer.valueOf(m1048getSecondsComponentimpl(j)), Integer.valueOf(m1047getNanosecondsComponentimpl(j)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1059toComponentsimpl(long j, @NotNull Function3<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1043getInWholeMinutesimpl(j)), Integer.valueOf(m1048getSecondsComponentimpl(j)), Integer.valueOf(m1047getNanosecondsComponentimpl(j)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1058toComponentsimpl(long j, @NotNull Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1045getInWholeSecondsimpl(j)), Integer.valueOf(m1047getNanosecondsComponentimpl(j)));
    }

    /* renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m1038getHoursComponentimpl(long j) {
        if (m1051isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m1040getInWholeHoursimpl(j) % 24);
    }

    /* renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m1046getMinutesComponentimpl(long j) {
        if (m1051isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m1043getInWholeMinutesimpl(j) % 60);
    }

    /* renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m1048getSecondsComponentimpl(long j) {
        if (m1051isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m1045getInWholeSecondsimpl(j) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m1047getNanosecondsComponentimpl(long j) {
        long jAccess$millisToNanos;
        if (m1051isInfiniteimpl(j)) {
            return 0;
        }
        if ((((int) j) & 1) == 1) {
            jAccess$millisToNanos = DurationKt.access$millisToNanos((j >> 1) % 1000);
        } else {
            jAccess$millisToNanos = (j >> 1) % Utils.SECOND_IN_NANOS;
        }
        return (int) jAccess$millisToNanos;
    }

    /* renamed from: toDouble-impl, reason: not valid java name */
    public static final double m1062toDoubleimpl(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == c) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == d) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j >> 1, c(j), unit);
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m1065toLongimpl(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == c) {
            return Long.MAX_VALUE;
        }
        if (j == d) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j >> 1, c(j), unit);
    }

    /* renamed from: toInt-impl, reason: not valid java name */
    public static final int m1063toIntimpl(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) RangesKt.coerceIn(m1065toLongimpl(j, unit), -2147483648L, 2147483647L);
    }

    /* renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m1039getInWholeDaysimpl(long j) {
        return m1065toLongimpl(j, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m1040getInWholeHoursimpl(long j) {
        return m1065toLongimpl(j, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m1043getInWholeMinutesimpl(long j) {
        return m1065toLongimpl(j, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m1045getInWholeSecondsimpl(long j) {
        return m1065toLongimpl(j, DurationUnit.SECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m1042getInWholeMillisecondsimpl(long j) {
        return ((((int) j) & 1) == 1 && m1050isFiniteimpl(j)) ? j >> 1 : m1065toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    /* renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m1041getInWholeMicrosecondsimpl(long j) {
        return m1065toLongimpl(j, DurationUnit.MICROSECONDS);
    }

    /* renamed from: getInWholeNanoseconds-impl, reason: not valid java name */
    public static final long m1044getInWholeNanosecondsimpl(long j) {
        long j2 = j >> 1;
        if (d(j)) {
            return j2;
        }
        if (j2 > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (j2 < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.access$millisToNanos(j2);
    }

    @NotNull
    public String toString() {
        return m1066toStringimpl(this.f6089a);
    }

    @NotNull
    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1066toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == c) {
            return "Infinity";
        }
        if (j == d) {
            return "-Infinity";
        }
        boolean zM1052isNegativeimpl = m1052isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM1052isNegativeimpl) {
            sb.append('-');
        }
        long jM1037getAbsoluteValueUwyO8pc = m1037getAbsoluteValueUwyO8pc(j);
        long jM1039getInWholeDaysimpl = m1039getInWholeDaysimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1038getHoursComponentimpl = m1038getHoursComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1046getMinutesComponentimpl = m1046getMinutesComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1048getSecondsComponentimpl = m1048getSecondsComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1047getNanosecondsComponentimpl = m1047getNanosecondsComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM1039getInWholeDaysimpl != 0;
        boolean z2 = iM1038getHoursComponentimpl != 0;
        boolean z3 = iM1046getMinutesComponentimpl != 0;
        boolean z4 = (iM1048getSecondsComponentimpl == 0 && iM1047getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM1039getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM1038getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM1046getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iM1048getSecondsComponentimpl != 0 || z || z2 || z3) {
                b(sb, iM1048getSecondsComponentimpl, iM1047getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM1047getNanosecondsComponentimpl >= 1000000) {
                b(sb, iM1047getNanosecondsComponentimpl / DurationKt.NANOS_IN_MILLIS, iM1047getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
            } else if (iM1047getNanosecondsComponentimpl >= 1000) {
                b(sb, iM1047getNanosecondsComponentimpl / 1000, iM1047getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(iM1047getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (zM1052isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    public static final void b(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strPadStart = StringsKt__StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strPadStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strPadStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) strPadStart, 0, i6);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) strPadStart, 0, ((i4 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    /* renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m1068toStringimpl$default(long j, DurationUnit durationUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m1067toStringimpl(j, durationUnit, i);
    }

    @NotNull
    /* renamed from: toString-impl, reason: not valid java name */
    public static final String m1067toStringimpl(long j, @NotNull DurationUnit unit, int i) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (i < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "decimals must be not negative, but was ").toString());
        }
        double dM1062toDoubleimpl = m1062toDoubleimpl(j, unit);
        if (Double.isInfinite(dM1062toDoubleimpl)) {
            return String.valueOf(dM1062toDoubleimpl);
        }
        return DurationJvmKt.formatToExactDecimals(dM1062toDoubleimpl, RangesKt.coerceAtMost(i, 12)) + DurationUnitKt__DurationUnitKt.shortName(unit);
    }

    @NotNull
    /* renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m1064toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m1052isNegativeimpl(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long jM1037getAbsoluteValueUwyO8pc = m1037getAbsoluteValueUwyO8pc(j);
        long jM1040getInWholeHoursimpl = m1040getInWholeHoursimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1046getMinutesComponentimpl = m1046getMinutesComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1048getSecondsComponentimpl = m1048getSecondsComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        int iM1047getNanosecondsComponentimpl = m1047getNanosecondsComponentimpl(jM1037getAbsoluteValueUwyO8pc);
        if (m1051isInfiniteimpl(j)) {
            jM1040getInWholeHoursimpl = 9999999999999L;
        }
        boolean z = false;
        boolean z2 = jM1040getInWholeHoursimpl != 0;
        boolean z3 = (iM1048getSecondsComponentimpl == 0 && iM1047getNanosecondsComponentimpl == 0) ? false : true;
        if (iM1046getMinutesComponentimpl != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(jM1040getInWholeHoursimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(iM1046getMinutesComponentimpl);
            sb.append(Access.METHOD_CONTEXT);
        }
        if (z3 || (!z2 && !z)) {
            b(sb, iM1048getSecondsComponentimpl, iM1047getNanosecondsComponentimpl, 9, "S", true);
        }
        return sb.toString();
    }
}
