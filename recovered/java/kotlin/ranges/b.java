package kotlin.ranges;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001c¨\u0006\u001e"}, d2 = {"Lkotlin/ranges/b;", "Lkotlin/ranges/ClosedFloatingPointRange;", "", "start", "endInclusive", "<init>", "(FF)V", "a", "b", "", "lessThanOrEquals", "(FF)Z", "value", "contains", "(F)Z", "isEmpty", "()Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "getStart", "()Ljava/lang/Float;", "getEndInclusive", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class b implements ClosedFloatingPointRange<Float> {

    /* renamed from: a, reason: collision with root package name */
    public final float f5902a;

    /* renamed from: b, reason: collision with root package name */
    public final float f5903b;

    public boolean lessThanOrEquals(float a2, float b2) {
        return a2 <= b2;
    }

    public b(float f, float f2) {
        this.f5902a = f;
        this.f5903b = f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return contains(((Number) comparable).floatValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public /* bridge */ /* synthetic */ boolean lessThanOrEquals(Comparable comparable, Comparable comparable2) {
        return lessThanOrEquals(((Number) comparable).floatValue(), ((Number) comparable2).floatValue());
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public Float getStart() {
        return Float.valueOf(this.f5902a);
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public Float getEndInclusive() {
        return Float.valueOf(this.f5903b);
    }

    public boolean contains(float value) {
        return value >= this.f5902a && value <= this.f5903b;
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return this.f5902a > this.f5903b;
    }

    public boolean equals(@Nullable Object other) {
        if (!(other instanceof b)) {
            return false;
        }
        if (isEmpty() && ((b) other).isEmpty()) {
            return true;
        }
        b bVar = (b) other;
        return this.f5902a == bVar.f5902a && this.f5903b == bVar.f5903b;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return Float.floatToIntBits(this.f5903b) + (Float.floatToIntBits(this.f5902a) * 31);
    }

    @NotNull
    public String toString() {
        return this.f5902a + ".." + this.f5903b;
    }
}
