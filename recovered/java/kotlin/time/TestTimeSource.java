package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.SourceDebugExtension;

@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "<init>", "()V", "", "read", "()J", "Lkotlin/time/Duration;", "duration", "", "plusAssign-LRDsOJo", "(J)V", "plusAssign", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
@SourceDebugExtension({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,202:1\n80#2:203\n80#2:204\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n176#1:203\n183#1:204\n*E\n"})
/* loaded from: classes2.dex */
public final class TestTimeSource extends AbstractLongTimeSource {
    public long c;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
        markNow();
    }

    @Override // kotlin.time.AbstractLongTimeSource
    /* renamed from: read, reason: from getter */
    public long getC() {
        return this.c;
    }

    /* renamed from: plusAssign-LRDsOJo, reason: not valid java name */
    public final void m1106plusAssignLRDsOJo(long duration) {
        long jM1065toLongimpl = Duration.m1065toLongimpl(duration, getUnit());
        if (((jM1065toLongimpl - 1) | 1) != Long.MAX_VALUE) {
            long j = this.c;
            long j2 = j + jM1065toLongimpl;
            if ((jM1065toLongimpl ^ j) >= 0 && (j ^ j2) < 0) {
                a(duration);
                throw null;
            }
            this.c = j2;
            return;
        }
        long jM1034divUwyO8pc = Duration.m1034divUwyO8pc(duration, 2);
        if ((1 | (Duration.m1065toLongimpl(jM1034divUwyO8pc, getUnit()) - 1)) != Long.MAX_VALUE) {
            long j3 = this.c;
            try {
                m1106plusAssignLRDsOJo(jM1034divUwyO8pc);
                m1106plusAssignLRDsOJo(Duration.m1054minusLRDsOJo(duration, jM1034divUwyO8pc));
                return;
            } catch (IllegalStateException e) {
                this.c = j3;
                throw e;
            }
        }
        a(duration);
        throw null;
    }

    public final void a(long j) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.c + DurationUnitKt__DurationUnitKt.shortName(getUnit()) + " is advanced by " + ((Object) Duration.m1066toStringimpl(j)) + '.');
    }
}
