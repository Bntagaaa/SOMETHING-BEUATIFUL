package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0013¨\u0006\u0018"}, d2 = {"Lkotlin/time/MonotonicTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "<init>", "()V", "", "toString", "()Ljava/lang/String;", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "markNow", "timeMark", "Lkotlin/time/Duration;", "elapsedFrom-6eNON_k", "(J)J", "elapsedFrom", "one", "another", "differenceBetween-fRLX17w", "(JJ)J", "differenceBetween", "duration", "adjustReading-6QKq23U", "adjustReading", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MonotonicTimeSource implements TimeSource.WithComparableMarks {

    @NotNull
    public static final MonotonicTimeSource INSTANCE = new MonotonicTimeSource();

    /* renamed from: a, reason: collision with root package name */
    public static final long f6093a = System.nanoTime();

    private MonotonicTimeSource() {
    }

    @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
    public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
        return TimeSource.Monotonic.ValueTimeMark.m1110boximpl(m1105markNowz9LOYto());
    }

    @Override // kotlin.time.TimeSource
    public /* bridge */ /* synthetic */ TimeMark markNow() {
        return TimeSource.Monotonic.ValueTimeMark.m1110boximpl(m1105markNowz9LOYto());
    }

    /* renamed from: elapsedFrom-6eNON_k, reason: not valid java name */
    public final long m1104elapsedFrom6eNON_k(long timeMark) {
        return LongSaturatedMathKt.saturatingDiff(System.nanoTime() - f6093a, timeMark, DurationUnit.NANOSECONDS);
    }

    /* renamed from: markNow-z9LOYto, reason: not valid java name */
    public long m1105markNowz9LOYto() {
        return TimeSource.Monotonic.ValueTimeMark.m1113constructorimpl(System.nanoTime() - f6093a);
    }

    @NotNull
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }

    /* renamed from: differenceBetween-fRLX17w, reason: not valid java name */
    public final long m1103differenceBetweenfRLX17w(long one, long another) {
        return LongSaturatedMathKt.saturatingOriginsDiff(one, another, DurationUnit.NANOSECONDS);
    }

    /* renamed from: adjustReading-6QKq23U, reason: not valid java name */
    public final long m1102adjustReading6QKq23U(long timeMark, long duration) {
        return TimeSource.Monotonic.ValueTimeMark.m1113constructorimpl(LongSaturatedMathKt.m1101saturatingAddNuflL3o(timeMark, DurationUnit.NANOSECONDS, duration));
    }
}
