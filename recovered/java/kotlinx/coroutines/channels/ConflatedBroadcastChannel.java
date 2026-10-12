package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.selects.SelectClause2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Deprecated(level = DeprecationLevel.ERROR, message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
@ObsoleteCoroutinesApi
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0006J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0096\u0001¢\u0006\u0004\b\b\u0010\tJ \u0010\u000e\u001a\u00020\r2\u000e\u0010\f\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000bH\u0096\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u000e\u001a\u00020\u00112\b\u0010\f\u001a\u0004\u0018\u00010\u0010H\u0097\u0001¢\u0006\u0004\b\u000e\u0010\u0012J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00028\u0000H\u0096A¢\u0006\u0004\b\u0014\u0010\u0015J\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\r0\u00162\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001a\u001a\u00020\u00112\b\u0010\f\u001a\u0004\u0018\u00010\u0010H\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u0012J5\u0010\u001f\u001a\u00020\r2#\u0010\u001e\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\u001bH\u0096\u0001¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0004\b!\u0010\"R\u0011\u0010\u0005\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0013\u0010&\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b%\u0010$R\u0014\u0010'\u001a\u00020\u00118\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b'\u0010(R&\u0010-\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000*0)8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", "E", "Lkotlinx/coroutines/channels/BroadcastChannel;", "<init>", "()V", "value", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "cancel", "(Ljava/util/concurrent/CancellationException;)V", "", "", "(Ljava/lang/Throwable;)Z", "element", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "close", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "offer", "(Ljava/lang/Object;)Z", "getValue", "()Ljava/lang/Object;", "getValueOrNull", "valueOrNull", "isClosedForSend", "()Z", "Lkotlinx/coroutines/selects/SelectClause2;", "Lkotlinx/coroutines/channels/SendChannel;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ConflatedBroadcastChannel<E> implements BroadcastChannel<E> {

    /* renamed from: a, reason: collision with root package name */
    public final BroadcastChannelImpl f6176a;

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public void cancel(@Nullable CancellationException cause) {
        this.f6176a.cancel(cause);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility only")
    public /* synthetic */ boolean cancel(Throwable cause) {
        return this.f6176a.cancel(cause);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable cause) {
        return this.f6176a.close(cause);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    public SelectClause2<E, SendChannel<E>> getOnSend() {
        return this.f6176a.getOnSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(@NotNull Function1<? super Throwable, Unit> handler) {
        this.f6176a.invokeOnClose(handler);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return this.f6176a.isClosedForSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E element) {
        return this.f6176a.offer(element);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @NotNull
    public ReceiveChannel<E> openSubscription() {
        return this.f6176a.openSubscription();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    public Object send(E e, @NotNull Continuation<? super Unit> continuation) {
        return this.f6176a.send(e, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: trySend-JP2dKIU */
    public Object mo1142trySendJP2dKIU(E element) {
        return this.f6176a.mo1142trySendJP2dKIU(element);
    }

    public ConflatedBroadcastChannel() {
        this.f6176a = new BroadcastChannelImpl(-1);
    }

    public ConflatedBroadcastChannel(E e) {
        this();
        mo1142trySendJP2dKIU(e);
    }

    public final E getValue() {
        return (E) this.f6176a.getValue();
    }

    @Nullable
    public final E getValueOrNull() {
        return (E) this.f6176a.getValueOrNull();
    }
}
