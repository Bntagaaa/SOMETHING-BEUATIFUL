package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final /* synthetic */ class g extends FunctionReferenceImpl implements Function3<Throwable, ChannelResult<Object>, CoroutineContext, Unit> {
    public g(BufferedChannel bufferedChannel) {
        super(3, bufferedChannel, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th, ChannelResult<Object> channelResult, CoroutineContext coroutineContext) {
        m1168invoke5_sEAP8(th, channelResult.getHolder(), coroutineContext);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke-5_sEAP8, reason: not valid java name */
    public final void m1168invoke5_sEAP8(Throwable th, Object obj, CoroutineContext coroutineContext) {
        BufferedChannel.m1143access$onCancellationChannelResultImplDoNotCall5_sEAP8((BufferedChannel) this.receiver, th, obj, coroutineContext);
    }
}
