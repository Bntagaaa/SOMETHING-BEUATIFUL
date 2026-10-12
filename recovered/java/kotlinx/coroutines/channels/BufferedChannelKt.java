package kotlinx.coroutines.channels;

import com.google.common.primitives.Longs;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a3\u0010\u0004\u001a \u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0001\"\u0004\b\u0000\u0010\u0000H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\"\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\"\u0014\u0010\n\u001a\u00020\t8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u001a\u0010\u000f\u001a\u00020\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010\u000b\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"E", "Lkotlin/reflect/KFunction2;", "", "Lkotlinx/coroutines/channels/ChannelSegment;", "createSegmentFunction", "()Lkotlin/reflect/KFunction;", "", "SEGMENT_SIZE", "I", "Lkotlinx/coroutines/internal/Symbol;", "BUFFERED", "Lkotlinx/coroutines/internal/Symbol;", "j", "getCHANNEL_CLOSED", "()Lkotlinx/coroutines/internal/Symbol;", "CHANNEL_CLOSED", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BufferedChannelKt {

    /* renamed from: a, reason: collision with root package name */
    public static final ChannelSegment f6169a = new ChannelSegment(-1, null, null, 0);

    @JvmField
    public static final int SEGMENT_SIZE = kotlinx.coroutines.internal.g.systemProp$default("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, (Object) null);

    /* renamed from: b, reason: collision with root package name */
    public static final int f6170b = kotlinx.coroutines.internal.g.systemProp$default("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, (Object) null);

    @JvmField
    @NotNull
    public static final Symbol BUFFERED = new Symbol("BUFFERED");
    public static final Symbol c = new Symbol("SHOULD_BUFFER");
    public static final Symbol d = new Symbol("S_RESUMING_BY_RCV");
    public static final Symbol e = new Symbol("RESUMING_BY_EB");
    public static final Symbol f = new Symbol("POISONED");

    /* renamed from: g, reason: collision with root package name */
    public static final Symbol f6171g = new Symbol("DONE_RCV");
    public static final Symbol h = new Symbol("INTERRUPTED_SEND");
    public static final Symbol i = new Symbol("INTERRUPTED_RCV");
    public static final Symbol j = new Symbol("CHANNEL_CLOSED");
    public static final Symbol k = new Symbol("SUSPEND");
    public static final Symbol l = new Symbol("SUSPEND_NO_WAITER");
    public static final Symbol m = new Symbol("FAILED");
    public static final Symbol n = new Symbol("NO_RECEIVE_RESULT");
    public static final Symbol o = new Symbol("CLOSE_HANDLER_CLOSED");
    public static final Symbol p = new Symbol("CLOSE_HANDLER_INVOKED");
    public static final Symbol q = new Symbol("NO_CLOSE_CAUSE");

    public static final long access$constructEBCompletedAndPauseFlag(long j2, boolean z) {
        return (z ? Longs.MAX_POWER_OF_TWO : 0L) + j2;
    }

    public static final long access$constructSendersAndCloseStatus(long j2, int i2) {
        return (i2 << 60) + j2;
    }

    public static final long access$initialBufferEnd(int i2) {
        if (i2 == 0) {
            return 0L;
        }
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class a<E> extends FunctionReferenceImpl implements Function2<Long, ChannelSegment<E>, ChannelSegment<E>> {
        public static final a h = new a();

        public a() {
            super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Long l, Object obj) {
            return invoke(l.longValue(), (ChannelSegment) obj);
        }

        public final ChannelSegment<E> invoke(long j, ChannelSegment<E> channelSegment) {
            return BufferedChannelKt.access$createSegment(j, channelSegment);
        }
    }

    @NotNull
    public static final <E> KFunction<ChannelSegment<E>> createSegmentFunction() {
        return a.h;
    }

    public static final ChannelSegment access$createSegment(long j2, ChannelSegment channelSegment) {
        return new ChannelSegment(j2, channelSegment, channelSegment.getChannel(), 0);
    }

    public static final boolean access$tryResume0(CancellableContinuation cancellableContinuation, Object obj, Function3 function3) {
        Object objTryResume = cancellableContinuation.tryResume(obj, null, function3);
        if (objTryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(objTryResume);
        return true;
    }

    @NotNull
    public static final Symbol getCHANNEL_CLOSED() {
        return j;
    }
}
