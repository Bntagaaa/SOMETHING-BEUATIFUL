package kotlin.ranges;

import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0012\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00028\u00008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u00028\u00008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016¨\u0006\u0019"}, d2 = {"Lkotlin/ranges/d;", "", "T", "Lkotlin/ranges/ClosedRange;", "start", "endInclusive", "<init>", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "a", "Ljava/lang/Comparable;", "getStart", "()Ljava/lang/Comparable;", "b", "getEndInclusive", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
class d<T extends Comparable<? super T>> implements ClosedRange<T> {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final Comparable start;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final Comparable endInclusive;

    public d(@NotNull T start, @NotNull T endInclusive) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(endInclusive, "endInclusive");
        this.start = start;
        this.endInclusive = endInclusive;
    }

    @Override // kotlin.ranges.ClosedRange
    public boolean contains(@NotNull T t) {
        return ClosedRange.DefaultImpls.contains(this, t);
    }

    @Override // kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return ClosedRange.DefaultImpls.isEmpty(this);
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public T getStart() {
        return (T) this.start;
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public T getEndInclusive() {
        return (T) this.endInclusive;
    }

    public boolean equals(@Nullable Object other) {
        if (!(other instanceof d)) {
            return false;
        }
        if (isEmpty() && ((d) other).isEmpty()) {
            return true;
        }
        d dVar = (d) other;
        return Intrinsics.areEqual(getStart(), dVar.getStart()) && Intrinsics.areEqual(getEndInclusive(), dVar.getEndInclusive());
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return getEndInclusive().hashCode() + (getStart().hashCode() * 31);
    }

    @NotNull
    public String toString() {
        return getStart() + ".." + getEndInclusive();
    }
}
