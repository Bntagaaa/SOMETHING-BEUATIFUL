package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.ComparableTimeMark;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeSource;", "", "markNow", "Lkotlin/time/TimeMark;", "WithComparableMarks", "Monotonic", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
/* loaded from: classes2.dex */
public interface TimeSource {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.f6094a;

    @SinceKotlin(version = "1.9")
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/TimeSource;", "markNow", "Lkotlin/time/ComparableTimeMark;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public interface WithComparableMarks extends TimeSource {
        @Override // kotlin.time.TimeSource
        @NotNull
        ComparableTimeMark markNow();
    }

    @NotNull
    TimeMark markNow();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\nB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource$WithComparableMarks;", "<init>", "()V", "markNow", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "toString", "", "ValueTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Monotonic implements WithComparableMarks {

        @NotNull
        public static final Monotonic INSTANCE = new Monotonic();

        private Monotonic() {
        }

        @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
            return ValueTimeMark.m1110boximpl(m1109markNowz9LOYto());
        }

        @Override // kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ TimeMark markNow() {
            return ValueTimeMark.m1110boximpl(m1109markNowz9LOYto());
        }

        /* renamed from: markNow-z9LOYto, reason: not valid java name */
        public long m1109markNowz9LOYto() {
            return MonotonicTimeSource.INSTANCE.m1105markNowz9LOYto();
        }

        @NotNull
        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }

        @SinceKotlin(version = "1.9")
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0087@\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0006J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0012H\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0012H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u0017J\u000f\u0010\u001d\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b \u0010!J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\"\u0010\u0017J\u0018\u0010%\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b#\u0010$\u0088\u0001\u0004\u0092\u0001\u00060\u0002j\u0002`\u0003¨\u0006&"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/ComparableTimeMark;", "", "Lkotlin/time/ValueTimeMarkReading;", "reading", "constructor-impl", "(J)J", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "elapsedNow", "duration", "plus-LRDsOJo", "(JJ)J", "plus", "minus-LRDsOJo", "minus", "hasPassedNow-impl", "(J)Z", "hasPassedNow", "hasNotPassedNow-impl", "hasNotPassedNow", "minus-UwyO8pc", "(JLkotlin/time/ComparableTimeMark;)J", "minus-6eNON_k", "compareTo-6eNON_k", "(JJ)I", "compareTo", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @JvmInline
        @WasExperimental(markerClass = {ExperimentalTime.class})
        public static final class ValueTimeMark implements ComparableTimeMark {

            /* renamed from: a, reason: collision with root package name */
            public final long f6095a;

            /* renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ ValueTimeMark m1110boximpl(long j) {
                return new ValueTimeMark(j);
            }

            /* renamed from: constructor-impl, reason: not valid java name */
            public static long m1113constructorimpl(long j) {
                return j;
            }

            /* renamed from: equals-impl, reason: not valid java name */
            public static boolean m1115equalsimpl(long j, Object obj) {
                return (obj instanceof ValueTimeMark) && j == ((ValueTimeMark) obj).getF6095a();
            }

            /* renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m1116equalsimpl0(long j, long j2) {
                return j == j2;
            }

            /* renamed from: hashCode-impl, reason: not valid java name */
            public static int m1119hashCodeimpl(long j) {
                return (int) (j ^ (j >>> 32));
            }

            /* renamed from: toString-impl, reason: not valid java name */
            public static String m1124toStringimpl(long j) {
                return "ValueTimeMark(reading=" + j + ')';
            }

            @Override // kotlin.time.ComparableTimeMark
            public boolean equals(Object other) {
                return m1115equalsimpl(this.f6095a, other);
            }

            @Override // kotlin.time.ComparableTimeMark
            public int hashCode() {
                return m1119hashCodeimpl(this.f6095a);
            }

            public String toString() {
                return m1124toStringimpl(this.f6095a);
            }

            /* renamed from: unbox-impl, reason: not valid java name and from getter */
            public final /* synthetic */ long getF6095a() {
                return this.f6095a;
            }

            /* renamed from: compareTo-impl, reason: not valid java name */
            public static int m1112compareToimpl(long j, @NotNull ComparableTimeMark other) {
                Intrinsics.checkNotNullParameter(other, "other");
                return m1110boximpl(j).compareTo(other);
            }

            @Override // java.lang.Comparable
            public int compareTo(@NotNull ComparableTimeMark comparableTimeMark) {
                return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
            }

            @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
            /* renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ ComparableTimeMark mo1025minusLRDsOJo(long j) {
                return m1110boximpl(m1125minusLRDsOJo(j));
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo1025minusLRDsOJo(long j) {
                return m1110boximpl(m1125minusLRDsOJo(j));
            }

            @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
            /* renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ ComparableTimeMark mo1027plusLRDsOJo(long j) {
                return m1110boximpl(m1126plusLRDsOJo(j));
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo1027plusLRDsOJo(long j) {
                return m1110boximpl(m1126plusLRDsOJo(j));
            }

            public /* synthetic */ ValueTimeMark(long j) {
                this.f6095a = j;
            }

            /* renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
            public static long m1114elapsedNowUwyO8pc(long j) {
                return MonotonicTimeSource.INSTANCE.m1104elapsedFrom6eNON_k(j);
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: elapsedNow-UwyO8pc */
            public long mo1024elapsedNowUwyO8pc() {
                return m1114elapsedNowUwyO8pc(this.f6095a);
            }

            /* renamed from: plus-LRDsOJo, reason: not valid java name */
            public static long m1123plusLRDsOJo(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.m1102adjustReading6QKq23U(j, j2);
            }

            /* renamed from: plus-LRDsOJo, reason: not valid java name */
            public long m1126plusLRDsOJo(long j) {
                return m1123plusLRDsOJo(this.f6095a, j);
            }

            /* renamed from: minus-LRDsOJo, reason: not valid java name */
            public static long m1121minusLRDsOJo(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.m1102adjustReading6QKq23U(j, Duration.m1070unaryMinusUwyO8pc(j2));
            }

            /* renamed from: minus-LRDsOJo, reason: not valid java name */
            public long m1125minusLRDsOJo(long j) {
                return m1121minusLRDsOJo(this.f6095a, j);
            }

            /* renamed from: hasPassedNow-impl, reason: not valid java name */
            public static boolean m1118hasPassedNowimpl(long j) {
                return !Duration.m1052isNegativeimpl(m1114elapsedNowUwyO8pc(j));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasPassedNow() {
                return m1118hasPassedNowimpl(this.f6095a);
            }

            /* renamed from: hasNotPassedNow-impl, reason: not valid java name */
            public static boolean m1117hasNotPassedNowimpl(long j) {
                return Duration.m1052isNegativeimpl(m1114elapsedNowUwyO8pc(j));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasNotPassedNow() {
                return m1117hasNotPassedNowimpl(this.f6095a);
            }

            @Override // kotlin.time.ComparableTimeMark
            /* renamed from: minus-UwyO8pc */
            public long mo1026minusUwyO8pc(@NotNull ComparableTimeMark other) {
                Intrinsics.checkNotNullParameter(other, "other");
                return m1122minusUwyO8pc(this.f6095a, other);
            }

            /* renamed from: minus-UwyO8pc, reason: not valid java name */
            public static long m1122minusUwyO8pc(long j, @NotNull ComparableTimeMark other) {
                Intrinsics.checkNotNullParameter(other, "other");
                if (!(other instanceof ValueTimeMark)) {
                    throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) m1124toStringimpl(j)) + " and " + other);
                }
                return m1120minus6eNON_k(j, ((ValueTimeMark) other).getF6095a());
            }

            /* renamed from: minus-6eNON_k, reason: not valid java name */
            public static final long m1120minus6eNON_k(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.m1103differenceBetweenfRLX17w(j, j2);
            }

            /* renamed from: compareTo-6eNON_k, reason: not valid java name */
            public static final int m1111compareTo6eNON_k(long j, long j2) {
                return Duration.m1030compareToLRDsOJo(m1120minus6eNON_k(j, j2), Duration.INSTANCE.m1096getZEROUwyO8pc());
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f6094a = new Companion();

        private Companion() {
        }
    }
}
