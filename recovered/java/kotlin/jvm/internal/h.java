package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.LongIterator;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/jvm/internal/h;", "Lkotlin/collections/LongIterator;", "", "array", "<init>", "([J)V", "", "hasNext", "()Z", "", "nextLong", "()J", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class h extends LongIterator {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f5865a;

    /* renamed from: b, reason: collision with root package name */
    public int f5866b;

    public h(@NotNull long[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f5865a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5866b < this.f5865a.length;
    }

    @Override // kotlin.collections.LongIterator
    public long nextLong() {
        try {
            long[] jArr = this.f5865a;
            int i = this.f5866b;
            this.f5866b = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f5866b--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
