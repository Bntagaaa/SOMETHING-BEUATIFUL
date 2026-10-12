package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.sync.MutexImpl;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Function3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6720a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MutexImpl f6721b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a(MutexImpl mutexImpl, Object obj, int i) {
        this.f6720a = i;
        this.f6721b = mutexImpl;
        this.c = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Object obj4 = this.c;
        MutexImpl mutexImpl = this.f6721b;
        switch (this.f6720a) {
            case 0:
                MutexImpl.a aVar = (MutexImpl.a) obj4;
                MutexImpl.i.set(mutexImpl, aVar.f6708b);
                mutexImpl.unlock(aVar.f6708b);
                break;
            default:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.i;
                mutexImpl.unlock(obj4);
                break;
        }
        return Unit.INSTANCE;
    }
}
