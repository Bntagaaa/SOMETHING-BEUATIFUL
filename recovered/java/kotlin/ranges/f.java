package kotlin.ranges;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0018¨\u0006\u001a"}, d2 = {"Lkotlin/ranges/f;", "Lkotlin/ranges/OpenEndRange;", "", "start", "endExclusive", "<init>", "(FF)V", "value", "", "contains", "(F)Z", "isEmpty", "()Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "getStart", "()Ljava/lang/Float;", "getEndExclusive", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class f implements OpenEndRange<Float> {

    /* renamed from: a, reason: collision with root package name */
    public final float f5910a;

    /* renamed from: b, reason: collision with root package name */
    public final float f5911b;

    public f(float f, float f2) {
        this.f5910a = f;
        this.f5911b = f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.OpenEndRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return contains(((Number) comparable).floatValue());
    }

    @Override // kotlin.ranges.OpenEndRange
    @NotNull
    public Float getStart() {
        return Float.valueOf(this.f5910a);
    }

    @Override // kotlin.ranges.OpenEndRange
    @NotNull
    public Float getEndExclusive() {
        return Float.valueOf(this.f5911b);
    }

    public boolean contains(float value) {
        return value >= this.f5910a && value < this.f5911b;
    }

    @Override // kotlin.ranges.OpenEndRange
    public boolean isEmpty() {
        return this.f5910a >= this.f5911b;
    }

    public boolean equals(@Nullable Object other) {
        if (!(other instanceof f)) {
            return false;
        }
        if (isEmpty() && ((f) other).isEmpty()) {
            return true;
        }
        f fVar = (f) other;
        return this.f5910a == fVar.f5910a && this.f5911b == fVar.f5911b;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return Float.floatToIntBits(this.f5911b) + (Float.floatToIntBits(this.f5910a) * 31);
    }

    @NotNull
    public String toString() {
        return this.f5910a + "..<" + this.f5911b;
    }
}
