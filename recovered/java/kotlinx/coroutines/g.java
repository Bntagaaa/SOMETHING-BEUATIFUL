package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Function3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6606a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6607b;

    public /* synthetic */ g(Object obj, int i) {
        this.f6606a = i;
        this.f6607b = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, final Object obj3) {
        Object obj4 = this.f6607b;
        switch (this.f6606a) {
            case 0:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = CancellableContinuationImpl.c;
                ((Function1) obj4).invoke((Throwable) obj);
                return Unit.INSTANCE;
            case 1:
                final SelectInstance selectInstance = (SelectInstance) obj;
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.c;
                final BufferedChannel bufferedChannel = (BufferedChannel) obj4;
                return new Function3() { // from class: kotlinx.coroutines.channels.e
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                        AtomicLongFieldUpdater atomicLongFieldUpdater2 = BufferedChannel.c;
                        Symbol channel_closed = BufferedChannelKt.getCHANNEL_CLOSED();
                        Object obj8 = obj3;
                        if (obj8 != channel_closed) {
                            OnUndeliveredElementKt.callUndeliveredElement(bufferedChannel.onUndeliveredElement, obj8, selectInstance.getContext());
                        }
                        return Unit.INSTANCE;
                    }
                };
            case 2:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.i;
                return new kotlinx.coroutines.sync.a((MutexImpl) obj4, obj2, 1);
            default:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = SemaphoreAndMutexImpl.c;
                ((SemaphoreAndMutexImpl) obj4).release();
                return Unit.INSTANCE;
        }
    }
}
