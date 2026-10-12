package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.ArrayIteratorsKt;
import kotlin.time.AbstractLongTimeSource;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5683a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5684b;

    public /* synthetic */ f(Object obj, int i) {
        this.f5683a = i;
        this.f5684b = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5683a) {
            case 0:
                return ArrayIteratorsKt.iterator((double[]) this.f5684b);
            case 1:
                return ArrayIteratorsKt.iterator((char[]) this.f5684b);
            case 2:
                return ArrayIteratorsKt.iterator((float[]) this.f5684b);
            case 3:
                return ArrayIteratorsKt.iterator((boolean[]) this.f5684b);
            case 4:
                return ArrayIteratorKt.iterator((Object[]) this.f5684b);
            case 5:
                return ((Iterable) this.f5684b).iterator();
            case 6:
                return this.f5684b;
            default:
                return Long.valueOf(((AbstractLongTimeSource) this.f5684b).read());
        }
    }
}
