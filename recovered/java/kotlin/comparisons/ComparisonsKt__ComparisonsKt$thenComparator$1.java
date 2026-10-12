package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class ComparisonsKt__ComparisonsKt$thenComparator$1<T> implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f5714a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function2 f5715b;

    public ComparisonsKt__ComparisonsKt$thenComparator$1(Comparator<T> comparator, Function2<? super T, ? super T, Integer> function2) {
        this.f5714a = comparator;
        this.f5715b = function2;
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int iCompare = this.f5714a.compare(t, t2);
        return iCompare != 0 ? iCompare : ((Number) this.f5715b.invoke(t, t2)).intValue();
    }
}
