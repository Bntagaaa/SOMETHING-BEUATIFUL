package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class ComparisonsKt__ComparisonsKt$compareByDescending$1<T> implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function1 f5703a;

    public ComparisonsKt__ComparisonsKt$compareByDescending$1(Function1<? super T, ? extends Comparable<?>> function1) {
        this.f5703a = function1;
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Function1 function1 = this.f5703a;
        return c.compareValues((Comparable) function1.invoke(t2), (Comparable) function1.invoke(t));
    }
}
