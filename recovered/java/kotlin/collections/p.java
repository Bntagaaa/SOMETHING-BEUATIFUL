package kotlin.collections;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\u001a#\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\u0004\b\u0002\u0010\u0003\u001a%\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003¨\u0006\u0006"}, d2 = {"T", "", "asReversed", "(Ljava/util/List;)Ljava/util/List;", "", "asReversedMutable", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2.dex */
class p extends o {
    public static final int access$reverseElementIndex(List list, int i) {
        if (i >= 0 && i <= CollectionsKt__CollectionsKt.getLastIndex(list)) {
            return CollectionsKt__CollectionsKt.getLastIndex(list) - i;
        }
        StringBuilder sbO = _COROUTINE.a.o(i, "Element index ", " must be in range [");
        sbO.append(new IntRange(0, CollectionsKt__CollectionsKt.getLastIndex(list)));
        sbO.append("].");
        throw new IndexOutOfBoundsException(sbO.toString());
    }

    public static final int access$reversePositionIndex(List list, int i) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        StringBuilder sbO = _COROUTINE.a.o(i, "Position index ", " must be in range [");
        sbO.append(new IntRange(0, list.size()));
        sbO.append("].");
        throw new IndexOutOfBoundsException(sbO.toString());
    }

    public static final int access$reverseIteratorIndex(List list, int i) {
        return CollectionsKt__CollectionsKt.getLastIndex(list) - i;
    }

    @NotNull
    public static final <T> List<T> asReversed(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new ReversedListReadOnly(list);
    }

    @JvmName(name = "asReversedMutable")
    @NotNull
    public static final <T> List<T> asReversedMutable(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new ReversedList(list);
    }
}
