package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class ComparisonsKt__ComparisonsKt$compareBy$3<T> implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f5701a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f5702b;

    public ComparisonsKt__ComparisonsKt$compareBy$3(Comparator<Object> comparator, Function1<? super T, Object> function1) {
        this.f5701a = comparator;
        this.f5702b = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Function1 function1 = this.f5702b;
        return this.f5701a.compare(function1.invoke(t), function1.invoke(t2));
    }
}
