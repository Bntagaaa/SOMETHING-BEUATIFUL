package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0002B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u001b\u0010\u0013J!\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b\u001e\u0010\u0010J+\u0010%\u001a\u00020\"2\u0006\u0010\f\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010\u001a2\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b#\u0010$J#\u0010)\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\f\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b'\u0010(J)\u0010.\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\b\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u001d\u00101\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\u0006\u00100\u001a\u00020\"¢\u0006\u0004\b1\u00102R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068F¢\u0006\u0006\u001a\u0004\b3\u00104R\u0014\u00107\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0013\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a088\u0002X\u0082\u0004¨\u0006:"}, d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", "E", "Lkotlinx/coroutines/internal/Segment;", "", "id", "prev", "Lkotlinx/coroutines/channels/BufferedChannel;", "channel", "", "pointers", "<init>", "(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V", "index", "element", "", "storeElement$kotlinx_coroutines_core", "(ILjava/lang/Object;)V", "storeElement", "getElement$kotlinx_coroutines_core", "(I)Ljava/lang/Object;", "getElement", "retrieveElement$kotlinx_coroutines_core", "retrieveElement", "cleanElement$kotlinx_coroutines_core", "(I)V", "cleanElement", "", "getState$kotlinx_coroutines_core", "getState", "value", "setState$kotlinx_coroutines_core", "setState", "from", "to", "", "casState$kotlinx_coroutines_core", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "casState", "update", "getAndSetState$kotlinx_coroutines_core", "(ILjava/lang/Object;)Ljava/lang/Object;", "getAndSetState", "", "cause", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V", "receiver", "onCancelledRequest", "(IZ)V", "getChannel", "()Lkotlinx/coroutines/channels/BufferedChannel;", "getNumberOfSlots", "()I", "numberOfSlots", "Lkotlinx/atomicfu/AtomicArray;", "data", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3116:1\n1#2:3117\n*E\n"})
/* loaded from: classes2.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {
    public final BufferedChannel d;
    public final /* synthetic */ AtomicReferenceArray e;

    public ChannelSegment(long j, @Nullable ChannelSegment<E> channelSegment, @Nullable BufferedChannel<E> bufferedChannel, int i) {
        super(j, channelSegment, i);
        this.d = bufferedChannel;
        this.e = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    @NotNull
    public final BufferedChannel<E> getChannel() {
        BufferedChannel<E> bufferedChannel = this.d;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    public final E getElement$kotlinx_coroutines_core(int index) {
        return (E) this.e.get(index * 2);
    }

    public final E retrieveElement$kotlinx_coroutines_core(int index) {
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        cleanElement$kotlinx_coroutines_core(index);
        return element$kotlinx_coroutines_core;
    }

    public final void cleanElement$kotlinx_coroutines_core(int index) {
        this.e.set(index * 2, null);
    }

    public final void storeElement$kotlinx_coroutines_core(int index, E element) {
        this.e.set(index * 2, element);
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core(int index) {
        return this.e.get((index * 2) + 1);
    }

    public final void setState$kotlinx_coroutines_core(int index, @Nullable Object value) {
        this.e.set((index * 2) + 1, value);
    }

    public final boolean casState$kotlinx_coroutines_core(int index, @Nullable Object from, @Nullable Object to) {
        AtomicReferenceArray atomicReferenceArray = this.e;
        int i = (index * 2) + 1;
        while (!atomicReferenceArray.compareAndSet(i, from, to)) {
            if (atomicReferenceArray.get(i) != from) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final Object getAndSetState$kotlinx_coroutines_core(int index, @Nullable Object update) {
        return this.e.getAndSet((index * 2) + 1, update);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x005f, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
    
        if (r0 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0064, code lost:
    
        r4 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006a, code lost:
    
        if (r4 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006c, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCancellation(int r4, @org.jetbrains.annotations.Nullable java.lang.Throwable r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.getElement$kotlinx_coroutines_core(r4)
        Le:
            java.lang.Object r1 = r3.getState$kotlinx_coroutines_core(r4)
            boolean r2 = r1 instanceof kotlinx.coroutines.Waiter
            if (r2 != 0) goto L70
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.s
            if (r2 == 0) goto L1b
            goto L70
        L1b:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            if (r1 == r2) goto L5f
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            if (r1 != r2) goto L28
            goto L5f
        L28:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r1 == r2) goto Le
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r1 != r2) goto L35
            goto Le
        L35:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r1 == r4) goto L96
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r1 != r4) goto L40
            goto L96
        L40:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            if (r1 != r4) goto L47
            goto L96
        L47:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "unexpected state: "
            r5.<init>(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L5f:
            r3.cleanElement$kotlinx_coroutines_core(r4)
            if (r0 == 0) goto L96
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r4 = r4.onUndeliveredElement
            if (r4 == 0) goto L96
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6)
            return
        L70:
            if (r0 == 0) goto L77
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            goto L7b
        L77:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
        L7b:
            boolean r1 = r3.casState$kotlinx_coroutines_core(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.cleanElement$kotlinx_coroutines_core(r4)
            r1 = r0 ^ 1
            r3.onCancelledRequest(r4, r1)
            if (r0 == 0) goto L96
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r4 = r4.onUndeliveredElement
            if (r4 == 0) goto L96
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelSegment.onCancellation(int, java.lang.Throwable, kotlin.coroutines.CoroutineContext):void");
    }

    public final void onCancelledRequest(int index, boolean receiver) {
        if (receiver) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.id * BufferedChannelKt.SEGMENT_SIZE) + index);
        }
        onSlotCleaned();
    }
}
