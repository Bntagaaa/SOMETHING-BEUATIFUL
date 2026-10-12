package kotlin.ranges;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlin/ranges/j;", "", "Lkotlin/ULong;", "first", "last", "", "step", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "hasNext", "()Z", "next-s-VKNKU", "()J", "next", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class j implements Iterator<ULong>, KMappedMarker {

    /* renamed from: a, reason: collision with root package name */
    public final long f5914a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5915b;
    public final long c;
    public long d;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ ULong next() {
        return ULong.m624boximpl(m979nextsVKNKU());
    }

    public j(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5914a = j2;
        boolean z = false;
        int iCompare = Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2);
        if (j3 <= 0 ? iCompare >= 0 : iCompare <= 0) {
            z = true;
        }
        this.f5915b = z;
        this.c = ULong.m625constructorimpl(j3);
        this.d = this.f5915b ? j : j2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5915b;
    }

    /* renamed from: next-s-VKNKU, reason: not valid java name */
    public long m979nextsVKNKU() {
        long j = this.d;
        if (j == this.f5914a) {
            if (!this.f5915b) {
                throw new NoSuchElementException();
            }
            this.f5915b = false;
            return j;
        }
        this.d = ULong.m625constructorimpl(this.c + j);
        return j;
    }
}
