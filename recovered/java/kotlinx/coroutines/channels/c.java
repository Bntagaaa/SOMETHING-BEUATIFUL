package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6182a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ReceiveChannel f6183b;

    public /* synthetic */ c(ReceiveChannel receiveChannel, int i) {
        this.f6182a = i;
        this.f6183b = receiveChannel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        switch (this.f6182a) {
            case 0:
                ChannelsKt.cancelConsumed(this.f6183b, th);
                break;
            default:
                ChannelsKt.cancelConsumed(this.f6183b, th);
                break;
        }
        return Unit.INSTANCE;
    }
}
