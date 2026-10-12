package kotlin.time;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.collections.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.time.ComparableTimeMark;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H$¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/DurationUnit;", "unit", "<init>", "(Lkotlin/time/DurationUnit;)V", "", "read", "()J", "Lkotlin/time/ComparableTimeMark;", "markNow", "()Lkotlin/time/ComparableTimeMark;", "a", "Lkotlin/time/DurationUnit;", "getUnit", "()Lkotlin/time/DurationUnit;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
/* loaded from: classes2.dex */
public abstract class AbstractLongTimeSource implements TimeSource.WithComparableMarks {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final DurationUnit unit;

    /* renamed from: b, reason: collision with root package name */
    public final Lazy f6085b;

    public abstract long read();

    public AbstractLongTimeSource(@NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.unit = unit;
        this.f6085b = LazyKt.lazy(new f(this, 7));
    }

    @NotNull
    public final DurationUnit getUnit() {
        return this.unit;
    }

    public static final long access$adjustedRead(AbstractLongTimeSource abstractLongTimeSource) {
        return abstractLongTimeSource.read() - ((Number) abstractLongTimeSource.f6085b.getValue()).longValue();
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0011\u001a\u0004\u0018\u00010\u0015H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lkotlin/time/AbstractLongTimeSource$a;", "Lkotlin/time/ComparableTimeMark;", "", "startedAt", "Lkotlin/time/AbstractLongTimeSource;", "timeSource", "Lkotlin/time/Duration;", "offset", "<init>", "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/ComparableTimeMark;", "plus", "other", "minus-UwyO8pc", "(Lkotlin/time/ComparableTimeMark;)J", "minus", "", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,202:1\n80#2:203\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:203\n*E\n"})
    public static final class a implements ComparableTimeMark {

        /* renamed from: a, reason: collision with root package name */
        public final long f6086a;

        /* renamed from: b, reason: collision with root package name */
        public final AbstractLongTimeSource f6087b;
        public final long c;

        public a(long j, AbstractLongTimeSource timeSource, long j2, DefaultConstructorMarker defaultConstructorMarker) {
            Intrinsics.checkNotNullParameter(timeSource, "timeSource");
            this.f6086a = j;
            this.f6087b = timeSource;
            this.c = j2;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
        }

        @Override // kotlin.time.TimeMark
        public boolean hasNotPassedNow() {
            return ComparableTimeMark.DefaultImpls.hasNotPassedNow(this);
        }

        @Override // kotlin.time.TimeMark
        public boolean hasPassedNow() {
            return ComparableTimeMark.DefaultImpls.hasPassedNow(this);
        }

        @Override // kotlin.time.TimeMark
        @NotNull
        /* renamed from: minus-LRDsOJo */
        public ComparableTimeMark mo1025minusLRDsOJo(long j) {
            return ComparableTimeMark.DefaultImpls.m1028minusLRDsOJo(this, j);
        }

        @Override // kotlin.time.TimeMark
        /* renamed from: elapsedNow-UwyO8pc */
        public long mo1024elapsedNowUwyO8pc() {
            AbstractLongTimeSource abstractLongTimeSource = this.f6087b;
            return Duration.m1054minusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(AbstractLongTimeSource.access$adjustedRead(abstractLongTimeSource), this.f6086a, abstractLongTimeSource.getUnit()), this.c);
        }

        @Override // kotlin.time.TimeMark
        @NotNull
        /* renamed from: plus-LRDsOJo */
        public ComparableTimeMark mo1027plusLRDsOJo(long duration) {
            DurationUnit unit = this.f6087b.getUnit();
            boolean zM1051isInfiniteimpl = Duration.m1051isInfiniteimpl(duration);
            long j = this.f6086a;
            if (zM1051isInfiniteimpl) {
                return new a(LongSaturatedMathKt.m1101saturatingAddNuflL3o(j, unit, duration), this.f6087b, Duration.INSTANCE.m1096getZEROUwyO8pc(), null);
            }
            long jM1069truncateToUwyO8pc$kotlin_stdlib = Duration.m1069truncateToUwyO8pc$kotlin_stdlib(duration, unit);
            long jM1055plusLRDsOJo = Duration.m1055plusLRDsOJo(Duration.m1054minusLRDsOJo(duration, jM1069truncateToUwyO8pc$kotlin_stdlib), this.c);
            long jM1101saturatingAddNuflL3o = LongSaturatedMathKt.m1101saturatingAddNuflL3o(j, unit, jM1069truncateToUwyO8pc$kotlin_stdlib);
            long jM1069truncateToUwyO8pc$kotlin_stdlib2 = Duration.m1069truncateToUwyO8pc$kotlin_stdlib(jM1055plusLRDsOJo, unit);
            long jM1101saturatingAddNuflL3o2 = LongSaturatedMathKt.m1101saturatingAddNuflL3o(jM1101saturatingAddNuflL3o, unit, jM1069truncateToUwyO8pc$kotlin_stdlib2);
            long jM1054minusLRDsOJo = Duration.m1054minusLRDsOJo(jM1055plusLRDsOJo, jM1069truncateToUwyO8pc$kotlin_stdlib2);
            long jM1044getInWholeNanosecondsimpl = Duration.m1044getInWholeNanosecondsimpl(jM1054minusLRDsOJo);
            if (jM1101saturatingAddNuflL3o2 != 0 && jM1044getInWholeNanosecondsimpl != 0 && (jM1101saturatingAddNuflL3o2 ^ jM1044getInWholeNanosecondsimpl) < 0) {
                long duration2 = DurationKt.toDuration(MathKt.getSign(jM1044getInWholeNanosecondsimpl), unit);
                jM1101saturatingAddNuflL3o2 = LongSaturatedMathKt.m1101saturatingAddNuflL3o(jM1101saturatingAddNuflL3o2, unit, duration2);
                jM1054minusLRDsOJo = Duration.m1054minusLRDsOJo(jM1054minusLRDsOJo, duration2);
            }
            if ((1 | (jM1101saturatingAddNuflL3o2 - 1)) == Long.MAX_VALUE) {
                jM1054minusLRDsOJo = Duration.INSTANCE.m1096getZEROUwyO8pc();
            }
            return new a(jM1101saturatingAddNuflL3o2, this.f6087b, jM1054minusLRDsOJo, null);
        }

        @Override // kotlin.time.ComparableTimeMark
        /* renamed from: minus-UwyO8pc */
        public long mo1026minusUwyO8pc(@NotNull ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (other instanceof a) {
                a aVar = (a) other;
                AbstractLongTimeSource abstractLongTimeSource = aVar.f6087b;
                AbstractLongTimeSource abstractLongTimeSource2 = this.f6087b;
                if (Intrinsics.areEqual(abstractLongTimeSource2, abstractLongTimeSource)) {
                    return Duration.m1055plusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.f6086a, aVar.f6086a, abstractLongTimeSource2.getUnit()), Duration.m1054minusLRDsOJo(this.c, aVar.c));
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        @Override // kotlin.time.ComparableTimeMark
        public boolean equals(@Nullable Object other) {
            if (other instanceof a) {
                return Intrinsics.areEqual(this.f6087b, ((a) other).f6087b) && Duration.m1036equalsimpl0(mo1026minusUwyO8pc((ComparableTimeMark) other), Duration.INSTANCE.m1096getZEROUwyO8pc());
            }
            return false;
        }

        @Override // kotlin.time.ComparableTimeMark
        public int hashCode() {
            int iM1049hashCodeimpl = Duration.m1049hashCodeimpl(this.c) * 37;
            long j = this.f6086a;
            return iM1049hashCodeimpl + ((int) (j ^ (j >>> 32)));
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder("LongTimeMark(");
            sb.append(this.f6086a);
            AbstractLongTimeSource abstractLongTimeSource = this.f6087b;
            sb.append(DurationUnitKt__DurationUnitKt.shortName(abstractLongTimeSource.getUnit()));
            sb.append(" + ");
            sb.append((Object) Duration.m1066toStringimpl(this.c));
            sb.append(", ");
            sb.append(abstractLongTimeSource);
            sb.append(')');
            return sb.toString();
        }
    }

    @Override // kotlin.time.TimeSource
    @NotNull
    public ComparableTimeMark markNow() {
        return new a(read() - ((Number) this.f6085b.getValue()).longValue(), this, Duration.INSTANCE.m1096getZEROUwyO8pc(), null);
    }
}
