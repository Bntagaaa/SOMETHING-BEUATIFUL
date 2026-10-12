package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a.\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\b\u0010\t\u001a#\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\n\u0010\t\u001a+\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"T", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "channel", "", "emitAll", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/Flow;", "receiveAsFlow", "(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;", "consumeAsFlow", "Lkotlinx/coroutines/CoroutineScope;", "scope", "produceIn", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2.dex */
final /* synthetic */ class h {
    @Nullable
    public static final <T> Object emitAll(@NotNull FlowCollector<? super T> flowCollector, @NotNull ReceiveChannel<? extends T> receiveChannel, @NotNull Continuation<? super Unit> continuation) {
        Object objA = a(flowCollector, receiveChannel, true, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0085, code lost:
    
        if (r2.emit(r9, r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0073 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #1 {all -> 0x0036, blocks: (B:13:0x0030, B:24:0x0056, B:28:0x006b, B:30:0x0073, B:20:0x0048, B:23:0x0052), top: B:44:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0085 -> B:14:0x0033). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.flow.FlowCollector r6, kotlinx.coroutines.channels.ReceiveChannel r7, boolean r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.g
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.g r0 = (kotlinx.coroutines.flow.g) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.g r0 = new kotlinx.coroutines.flow.g
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            boolean r8 = r0.f6521g
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlinx.coroutines.flow.FlowCollector r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
        L33:
            r9 = r6
            r6 = r2
            goto L56
        L36:
            r6 = move-exception
            goto L91
        L38:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L40:
            boolean r8 = r0.f6521g
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.f
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.e
            kotlinx.coroutines.flow.FlowCollector r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
            goto L6b
        L4c:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.flow.FlowKt.ensureActive(r6)
            kotlinx.coroutines.channels.ChannelIterator r9 = r7.iterator()     // Catch: java.lang.Throwable -> L36
        L56:
            r0.d = r6     // Catch: java.lang.Throwable -> L36
            r0.e = r7     // Catch: java.lang.Throwable -> L36
            r0.f = r9     // Catch: java.lang.Throwable -> L36
            r0.f6521g = r8     // Catch: java.lang.Throwable -> L36
            r0.i = r4     // Catch: java.lang.Throwable -> L36
            java.lang.Object r2 = r9.hasNext(r0)     // Catch: java.lang.Throwable -> L36
            if (r2 != r1) goto L67
            goto L87
        L67:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L6b:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L36
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r9 == 0) goto L88
            java.lang.Object r9 = r6.next()     // Catch: java.lang.Throwable -> L36
            r0.d = r2     // Catch: java.lang.Throwable -> L36
            r0.e = r7     // Catch: java.lang.Throwable -> L36
            r0.f = r6     // Catch: java.lang.Throwable -> L36
            r0.f6521g = r8     // Catch: java.lang.Throwable -> L36
            r0.i = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r9 = r2.emit(r9, r0)     // Catch: java.lang.Throwable -> L36
            if (r9 != r1) goto L33
        L87:
            return r1
        L88:
            if (r8 == 0) goto L8e
            r6 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
        L8e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L91:
            throw r6     // Catch: java.lang.Throwable -> L92
        L92:
            r9 = move-exception
            if (r8 == 0) goto L98
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r7, r6)
        L98:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h.a(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.ReceiveChannel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @NotNull
    public static final <T> Flow<T> receiveAsFlow(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return new c(receiveChannel, false, null, 0, null, 28, null);
    }

    @NotNull
    public static final <T> Flow<T> consumeAsFlow(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return new c(receiveChannel, true, null, 0, null, 28, null);
    }

    @NotNull
    public static final <T> ReceiveChannel<T> produceIn(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope) {
        return ChannelFlowKt.asChannelFlow(flow).produceImpl(coroutineScope);
    }
}
