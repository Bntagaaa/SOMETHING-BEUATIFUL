package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.BooleanIterator;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lkotlin/jvm/internal/a;", "Lkotlin/collections/BooleanIterator;", "", "array", "<init>", "([Z)V", "", "hasNext", "()Z", "nextBoolean", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class a extends BooleanIterator {

    /* renamed from: a, reason: collision with root package name */
    public final boolean[] f5851a;

    /* renamed from: b, reason: collision with root package name */
    public int f5852b;

    public a(@NotNull boolean[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f5851a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5852b < this.f5851a.length;
    }

    @Override // kotlin.collections.BooleanIterator
    public boolean nextBoolean() {
        try {
            boolean[] zArr = this.f5851a;
            int i = this.f5852b;
            this.f5852b = i + 1;
            return zArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f5852b--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
