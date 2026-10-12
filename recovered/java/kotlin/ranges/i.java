package kotlin.ranges;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlin/ranges/i;", "", "Lkotlin/UInt;", "first", "last", "", "step", "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "hasNext", "()Z", "next-pVg5ArA", "()I", "next", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class i implements Iterator<UInt>, KMappedMarker {

    /* renamed from: a, reason: collision with root package name */
    public final int f5912a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5913b;
    public final int c;
    public int d;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ UInt next() {
        return UInt.m599boximpl(m978nextpVg5ArA());
    }

    public i(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5912a = i2;
        boolean z = false;
        int iCompare = Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2);
        if (i3 <= 0 ? iCompare >= 0 : iCompare <= 0) {
            z = true;
        }
        this.f5913b = z;
        this.c = UInt.m600constructorimpl(i3);
        this.d = this.f5913b ? i : i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5913b;
    }

    /* renamed from: next-pVg5ArA, reason: not valid java name */
    public int m978nextpVg5ArA() {
        int i = this.d;
        if (i == this.f5912a) {
            if (!this.f5913b) {
                throw new NoSuchElementException();
            }
            this.f5913b = false;
            return i;
        }
        this.d = UInt.m600constructorimpl(this.c + i);
        return i;
    }
}
