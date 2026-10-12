package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeMark;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\r\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lkotlin/time/a;", "Lkotlin/time/TimeMark;", "mark", "Lkotlin/time/Duration;", "adjustment", "<init>", "(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "plus", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class a implements TimeMark {

    /* renamed from: a, reason: collision with root package name */
    public final TimeMark f6098a;

    /* renamed from: b, reason: collision with root package name */
    public final long f6099b;

    public a(TimeMark mark, long j, DefaultConstructorMarker defaultConstructorMarker) {
        Intrinsics.checkNotNullParameter(mark, "mark");
        this.f6098a = mark;
        this.f6099b = j;
    }

    @Override // kotlin.time.TimeMark
    public boolean hasNotPassedNow() {
        return TimeMark.DefaultImpls.hasNotPassedNow(this);
    }

    @Override // kotlin.time.TimeMark
    public boolean hasPassedNow() {
        return TimeMark.DefaultImpls.hasPassedNow(this);
    }

    @Override // kotlin.time.TimeMark
    @NotNull
    /* renamed from: minus-LRDsOJo */
    public TimeMark mo1025minusLRDsOJo(long j) {
        return TimeMark.DefaultImpls.m1107minusLRDsOJo(this, j);
    }

    @Override // kotlin.time.TimeMark
    /* renamed from: elapsedNow-UwyO8pc */
    public long mo1024elapsedNowUwyO8pc() {
        return Duration.m1054minusLRDsOJo(this.f6098a.mo1024elapsedNowUwyO8pc(), this.f6099b);
    }

    @Override // kotlin.time.TimeMark
    @NotNull
    /* renamed from: plus-LRDsOJo */
    public TimeMark mo1027plusLRDsOJo(long duration) {
        return new a(this.f6098a, Duration.m1055plusLRDsOJo(this.f6099b, duration), null);
    }
}
