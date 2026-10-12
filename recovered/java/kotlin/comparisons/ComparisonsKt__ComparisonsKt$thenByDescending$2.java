package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class ComparisonsKt__ComparisonsKt$thenByDescending$2<T> implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f5712a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f5713b;
    public final /* synthetic */ Function1 c;

    public ComparisonsKt__ComparisonsKt$thenByDescending$2(Comparator<T> comparator, Comparator<Object> comparator2, Function1<? super T, Object> function1) {
        this.f5712a = comparator;
        this.f5713b = comparator2;
        this.c = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int iCompare = this.f5712a.compare(t, t2);
        if (iCompare != 0) {
            return iCompare;
        }
        Function1 function1 = this.c;
        return this.f5713b.compare(function1.invoke(t2), function1.invoke(t));
    }
}
