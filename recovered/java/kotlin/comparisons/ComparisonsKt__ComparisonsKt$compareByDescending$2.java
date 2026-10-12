package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class ComparisonsKt__ComparisonsKt$compareByDescending$2<T> implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f5704a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f5705b;

    public ComparisonsKt__ComparisonsKt$compareByDescending$2(Comparator<Object> comparator, Function1<? super T, Object> function1) {
        this.f5704a = comparator;
        this.f5705b = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Function1 function1 = this.f5705b;
        return this.f5704a.compare(function1.invoke(t2), function1.invoke(t));
    }
}
