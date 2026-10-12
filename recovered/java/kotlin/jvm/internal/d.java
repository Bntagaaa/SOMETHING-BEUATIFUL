package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.DoubleIterator;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/jvm/internal/d;", "Lkotlin/collections/DoubleIterator;", "", "array", "<init>", "([D)V", "", "hasNext", "()Z", "", "nextDouble", "()D", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class d extends DoubleIterator {

    /* renamed from: a, reason: collision with root package name */
    public final double[] f5857a;

    /* renamed from: b, reason: collision with root package name */
    public int f5858b;

    public d(@NotNull double[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f5857a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5858b < this.f5857a.length;
    }

    @Override // kotlin.collections.DoubleIterator
    public double nextDouble() {
        try {
            double[] dArr = this.f5857a;
            int i = this.f5858b;
            this.f5858b = i + 1;
            return dArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f5858b--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
