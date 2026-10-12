package kotlin.sequences;

import kotlin.collections.IndexedValue;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6007a;

    public /* synthetic */ e(int i) {
        this.f6007a = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f6007a) {
            case 0:
                Sequence it = (Sequence) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return it.iterator();
            case 1:
                Iterable it2 = (Iterable) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.iterator();
            case 2:
                return obj;
            case 3:
                IndexedValue it3 = (IndexedValue) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getValue();
            case 4:
                return Boolean.valueOf(obj == null);
            case 5:
                String line = (String) obj;
                Intrinsics.checkNotNullParameter(line, "line");
                return line;
            case 6:
                CharSequence it4 = (CharSequence) obj;
                Intrinsics.checkNotNullParameter(it4, "it");
                return it4.toString();
            case 7:
                CharSequence it5 = (CharSequence) obj;
                Intrinsics.checkNotNullParameter(it5, "it");
                return it5.toString();
            case 8:
                CharSequence it6 = (CharSequence) obj;
                Intrinsics.checkNotNullParameter(it6, "it");
                return it6.toString();
            case 9:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (element instanceof CoroutineDispatcher) {
                    return (CoroutineDispatcher) element;
                }
                return null;
            case 10:
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj;
                if (element2 instanceof ExecutorCoroutineDispatcher) {
                    return (ExecutorCoroutineDispatcher) element2;
                }
                return null;
            default:
                return Boolean.TRUE;
        }
    }
}
