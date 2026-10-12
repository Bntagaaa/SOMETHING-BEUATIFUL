package kotlin.time;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.ComparableTimeMark;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H$¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/DurationUnit;", "unit", "<init>", "(Lkotlin/time/DurationUnit;)V", "", "read", "()D", "Lkotlin/time/ComparableTimeMark;", "markNow", "()Lkotlin/time/ComparableTimeMark;", "a", "Lkotlin/time/DurationUnit;", "getUnit", "()Lkotlin/time/DurationUnit;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated(message = "Using AbstractDoubleTimeSource is no longer recommended, use AbstractLongTimeSource instead.")
@ExperimentalTime
/* loaded from: classes2.dex */
public abstract class AbstractDoubleTimeSource implements TimeSource.WithComparableMarks {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final DurationUnit unit;

    public abstract double read();

    public AbstractDoubleTimeSource(@NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.unit = unit;
    }

    @NotNull
    public final DurationUnit getUnit() {
        return this.unit;
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0011\u001a\u0004\u0018\u00010\u0015H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource$a;", "Lkotlin/time/ComparableTimeMark;", "", "startedAt", "Lkotlin/time/AbstractDoubleTimeSource;", "timeSource", "Lkotlin/time/Duration;", "offset", "<init>", "(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/ComparableTimeMark;", "plus", "other", "minus-UwyO8pc", "(Lkotlin/time/ComparableTimeMark;)J", "minus", "", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a implements ComparableTimeMark {

        /* renamed from: a, reason: collision with root package name */
        public final double f6082a;

        /* renamed from: b, reason: collision with root package name */
        public final AbstractDoubleTimeSource f6083b;
        public final long c;

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
        /* renamed from: minus-LRDsOJo, reason: not valid java name */
        public ComparableTimeMark mo1025minusLRDsOJo(long j) {
            return ComparableTimeMark.DefaultImpls.m1028minusLRDsOJo(this, j);
        }

        public a(double d, AbstractDoubleTimeSource timeSource, long j, DefaultConstructorMarker defaultConstructorMarker) {
            Intrinsics.checkNotNullParameter(timeSource, "timeSource");
            this.f6082a = d;
            this.f6083b = timeSource;
            this.c = j;
        }

        @Override // kotlin.time.TimeMark
        /* renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
        public long mo1024elapsedNowUwyO8pc() {
            AbstractDoubleTimeSource abstractDoubleTimeSource = this.f6083b;
            return Duration.m1054minusLRDsOJo(DurationKt.toDuration(abstractDoubleTimeSource.read() - this.f6082a, abstractDoubleTimeSource.getUnit()), this.c);
        }

        @Override // kotlin.time.TimeMark
        @NotNull
        /* renamed from: plus-LRDsOJo, reason: not valid java name */
        public ComparableTimeMark mo1027plusLRDsOJo(long duration) {
            return new a(this.f6082a, this.f6083b, Duration.m1055plusLRDsOJo(this.c, duration), null);
        }

        @Override // kotlin.time.ComparableTimeMark
        /* renamed from: minus-UwyO8pc, reason: not valid java name */
        public long mo1026minusUwyO8pc(@NotNull ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (other instanceof a) {
                a aVar = (a) other;
                AbstractDoubleTimeSource abstractDoubleTimeSource = aVar.f6083b;
                AbstractDoubleTimeSource abstractDoubleTimeSource2 = this.f6083b;
                if (Intrinsics.areEqual(abstractDoubleTimeSource2, abstractDoubleTimeSource)) {
                    long j = aVar.c;
                    long j2 = this.c;
                    if (Duration.m1036equalsimpl0(j2, j) && Duration.m1051isInfiniteimpl(j2)) {
                        return Duration.INSTANCE.m1096getZEROUwyO8pc();
                    }
                    long jM1054minusLRDsOJo = Duration.m1054minusLRDsOJo(j2, aVar.c);
                    long duration = DurationKt.toDuration(this.f6082a - aVar.f6082a, abstractDoubleTimeSource2.getUnit());
                    return Duration.m1036equalsimpl0(duration, Duration.m1070unaryMinusUwyO8pc(jM1054minusLRDsOJo)) ? Duration.INSTANCE.m1096getZEROUwyO8pc() : Duration.m1055plusLRDsOJo(duration, jM1054minusLRDsOJo);
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        @Override // kotlin.time.ComparableTimeMark
        public boolean equals(@Nullable Object other) {
            if (other instanceof a) {
                return Intrinsics.areEqual(this.f6083b, ((a) other).f6083b) && Duration.m1036equalsimpl0(mo1026minusUwyO8pc((ComparableTimeMark) other), Duration.INSTANCE.m1096getZEROUwyO8pc());
            }
            return false;
        }

        @Override // kotlin.time.ComparableTimeMark
        public int hashCode() {
            return Duration.m1049hashCodeimpl(Duration.m1055plusLRDsOJo(DurationKt.toDuration(this.f6082a, this.f6083b.getUnit()), this.c));
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder("DoubleTimeMark(");
            sb.append(this.f6082a);
            AbstractDoubleTimeSource abstractDoubleTimeSource = this.f6083b;
            sb.append(DurationUnitKt__DurationUnitKt.shortName(abstractDoubleTimeSource.getUnit()));
            sb.append(" + ");
            sb.append((Object) Duration.m1066toStringimpl(this.c));
            sb.append(", ");
            sb.append(abstractDoubleTimeSource);
            sb.append(')');
            return sb.toString();
        }
    }

    @Override // kotlin.time.TimeSource
    @NotNull
    public ComparableTimeMark markNow() {
        return new a(read(), this, Duration.INSTANCE.m1096getZEROUwyO8pc(), null);
    }
}
