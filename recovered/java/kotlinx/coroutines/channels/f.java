package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final /* synthetic */ class f extends FunctionReferenceImpl implements Function3<Throwable, Object, CoroutineContext, Unit> {
    public f(BufferedChannel bufferedChannel) {
        super(3, bufferedChannel, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th, Object obj, CoroutineContext coroutineContext) {
        invoke2(th, obj, coroutineContext);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th, Object obj, CoroutineContext coroutineContext) {
        BufferedChannel.access$onCancellationImplDoNotCall((BufferedChannel) this.receiver, th, obj, coroutineContext);
    }
}
