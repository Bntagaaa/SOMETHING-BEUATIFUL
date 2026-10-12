package kotlin.coroutines;

import kotlin.TuplesKt;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThreadContextElement;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5736a;

    public /* synthetic */ a(int i) {
        this.f5736a = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CombinedContext combinedContext;
        switch (this.f5736a) {
            case 0:
                String acc = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                Intrinsics.checkNotNullParameter(acc, "acc");
                Intrinsics.checkNotNullParameter(element, "element");
                if (acc.length() == 0) {
                    return element.toString();
                }
                return acc + ", " + element;
            case 1:
                CoroutineContext acc2 = (CoroutineContext) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                Intrinsics.checkNotNullParameter(acc2, "acc");
                Intrinsics.checkNotNullParameter(element2, "element");
                CoroutineContext coroutineContextMinusKey = acc2.minusKey(element2.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                if (coroutineContextMinusKey == emptyCoroutineContext) {
                    return element2;
                }
                ContinuationInterceptor.Companion key = ContinuationInterceptor.INSTANCE;
                ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContextMinusKey.get(key);
                if (continuationInterceptor == null) {
                    combinedContext = new CombinedContext(coroutineContextMinusKey, element2);
                } else {
                    CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(key);
                    if (coroutineContextMinusKey2 == emptyCoroutineContext) {
                        return new CombinedContext(element2, continuationInterceptor);
                    }
                    combinedContext = new CombinedContext(new CombinedContext(coroutineContextMinusKey2, element2), continuationInterceptor);
                }
                return combinedContext;
            case 2:
                return TuplesKt.to(obj, obj2);
            case 3:
                return TuplesKt.to(obj, obj2);
            case 4:
                return Boolean.valueOf(((Boolean) obj).booleanValue() || (((CoroutineContext.Element) obj2) instanceof CopyableThreadContextElement));
            case 5:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                return element3 instanceof CopyableThreadContextElement ? coroutineContext.plus(((CopyableThreadContextElement) element3).copyForChild()) : coroutineContext.plus(element3);
            case 6:
                return TuplesKt.to(obj, obj2);
            case 7:
                return Boolean.valueOf(Intrinsics.areEqual(obj, obj2));
            default:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
        }
    }
}
