package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000.\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\b\u001a[\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u000026\u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004¢\u0006\u0004\b\b\u0010\t\u001a/\u0010\n\u001a\u00020\u0007\"\f\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00052\b\u0010\u0001\u001a\u0004\u0018\u00018\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a[\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u0004\b\u0000\u0010\u000026\u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004¢\u0006\u0004\b\u000e\u0010\u000f\u001aV\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r2\u001a\u0010\u0010\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\rH\u0086\u0004¢\u0006\u0004\b\u0011\u0010\u0012\u001aV\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r2\u001a\u0010\u0010\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\rH\u0086\u0004¢\u0006\u0004\b\u0013\u0010\u0012\u001aG\u0010\u0015\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\r\"\b\b\u0000\u0010\u0000*\u00020\u00142\u001a\u0010\u0010\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\r¢\u0006\u0004\b\u0015\u0010\u0016\u001aG\u0010\u0017\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\r\"\b\b\u0000\u0010\u0000*\u00020\u00142\u001a\u0010\u0010\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\r¢\u0006\u0004\b\u0017\u0010\u0016\u001a-\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0018\u0010\u0019\u001a-\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u001a\u0010\u0019\u001a7\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\fj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0004\b\u001b\u0010\u0016¨\u0006\u001c"}, d2 = {"T", "a", "b", "", "Lkotlin/Function1;", "", "selectors", "", "compareValuesBy", "(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I", "compareValues", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)I", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "compareBy", "([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;", "comparator", "then", "(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;", "thenDescending", "", "nullsFirst", "(Ljava/util/Comparator;)Ljava/util/Comparator;", "nullsLast", "naturalOrder", "()Ljava/util/Comparator;", "reverseOrder", "reversed", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/comparisons/ComparisonsKt")
/* loaded from: classes2.dex */
public class c {
    public static final <T> int compareValuesBy(T t, T t2, @NotNull Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        for (Function1<? super T, ? extends Comparable<?>> function1 : selectors) {
            int iCompareValues = compareValues(function1.invoke(t), function1.invoke(t2));
            if (iCompareValues != 0) {
                return iCompareValues;
            }
        }
        return 0;
    }

    public static <T extends Comparable<?>> int compareValues(@Nullable T t, @Nullable T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }

    @NotNull
    public static final <T> Comparator<T> compareBy(@NotNull Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return new a(selectors, 2);
    }

    @NotNull
    public static final <T> Comparator<T> then(@NotNull Comparator<T> comparator, @NotNull Comparator<? super T> comparator2) {
        Intrinsics.checkNotNullParameter(comparator, "<this>");
        Intrinsics.checkNotNullParameter(comparator2, "comparator");
        return new b(comparator, comparator2, 1);
    }

    @NotNull
    public static final <T> Comparator<T> thenDescending(@NotNull Comparator<T> comparator, @NotNull Comparator<? super T> comparator2) {
        Intrinsics.checkNotNullParameter(comparator, "<this>");
        Intrinsics.checkNotNullParameter(comparator2, "comparator");
        return new b(comparator, comparator2, 0);
    }

    @NotNull
    public static final <T> Comparator<T> nullsFirst(@NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new a(comparator, 1);
    }

    @NotNull
    public static final <T> Comparator<T> nullsLast(@NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new a(comparator, 0);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
        f fVar = f.f5720a;
        Intrinsics.checkNotNull(fVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>");
        return fVar;
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> reverseOrder() {
        g gVar = g.f5721a;
        Intrinsics.checkNotNull(gVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reverseOrder>");
        return gVar;
    }

    @NotNull
    public static final <T> Comparator<T> reversed(@NotNull Comparator<T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "<this>");
        if (comparator instanceof h) {
            return ((h) comparator).getComparator();
        }
        f fVar = f.f5720a;
        if (Intrinsics.areEqual(comparator, fVar)) {
            g gVar = g.f5721a;
            Intrinsics.checkNotNull(gVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reversed>");
            return gVar;
        }
        if (!Intrinsics.areEqual(comparator, g.f5721a)) {
            return new h(comparator);
        }
        Intrinsics.checkNotNull(fVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reversed>");
        return fVar;
    }
}
