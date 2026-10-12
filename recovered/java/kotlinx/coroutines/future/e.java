package kotlinx.coroutines.future;

import java.util.function.BiFunction;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.h;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements BiFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function2 f6604b;

    public /* synthetic */ e(Function2 function2, int i) {
        this.f6603a = i;
        this.f6604b = function2;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f6603a) {
            case 0:
                return ((h) this.f6604b).invoke(obj, (Throwable) obj2);
            default:
                return (Unit) this.f6604b.invoke(obj, (Throwable) obj2);
        }
    }
}
