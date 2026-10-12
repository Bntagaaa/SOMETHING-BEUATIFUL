package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {0, 0, 0, 0}, l = {3117}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", n = {"this", "segment", "index", "r"}, s = {"L$0", "L$1", "I$0", "J$0"})
/* loaded from: classes2.dex */
final class i extends ContinuationImpl {
    public /* synthetic */ Object d;
    public final /* synthetic */ BufferedChannel e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(BufferedChannel bufferedChannel, Continuation continuation) {
        super(continuation);
        this.e = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        Object objM = this.e.m(null, 0, 0L, this);
        return objM == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM : ChannelResult.m1152boximpl(objM);
    }
}
