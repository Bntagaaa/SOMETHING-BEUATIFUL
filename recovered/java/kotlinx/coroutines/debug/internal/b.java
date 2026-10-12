package kotlinx.coroutines.debug.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6259a;

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f6259a) {
            case 0:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ConcurrentWeakMap.f6232b;
                return new ConcurrentWeakMap.b(obj, obj2);
            default:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = ConcurrentWeakMap.f6232b;
                return obj;
        }
    }
}
