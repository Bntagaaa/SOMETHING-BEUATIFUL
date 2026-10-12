package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class ComparisonsKt__ComparisonsKt$thenByDescending$1<T> implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f5710a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f5711b;

    public ComparisonsKt__ComparisonsKt$thenByDescending$1(Comparator<T> comparator, Function1<? super T, ? extends Comparable<?>> function1) {
        this.f5710a = comparator;
        this.f5711b = function1;
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int iCompare = this.f5710a.compare(t, t2);
        if (iCompare != 0) {
            return iCompare;
        }
        Function1 function1 = this.f5711b;
        return c.compareValues((Comparable) function1.invoke(t2), (Comparable) function1.invoke(t));
    }
}
