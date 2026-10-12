package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u000201B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0016\u001a\u00020\f2\n\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00132\b\u0010\u000b\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0010¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010*\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b(\u0010)\u001a\u0004\b&\u0010'R\u0019\u0010-\u001a\u0004\u0018\u00018\u00008F¢\u0006\f\u0012\u0004\b,\u0010)\u001a\u0004\b+\u0010'R\u0014\u0010.\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/¨\u00062"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl;", "E", "Lkotlinx/coroutines/channels/BufferedChannel;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "", "capacity", "<init>", "(I)V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "element", "", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "", "registerSelectForSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "", "cause", "", "close", "(Ljava/lang/Throwable;)Z", "cancelImpl$kotlinx_coroutines_core", "cancelImpl", "", "toString", "()Ljava/lang/String;", "l", "I", "getCapacity", "()I", "getValue", "()Ljava/lang/Object;", "getValue$annotations", "()V", "value", "getValueOrNull", "getValueOrNull$annotations", "valueOrNull", "isClosedForSend", "()Z", "a", "b", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n11#2:364\n11#2:365\n11#2:369\n11#2:372\n11#2:378\n11#2:379\n11#2:385\n11#2:388\n11#2:389\n11#2:390\n774#3:366\n865#3,2:367\n1863#3,2:370\n1755#3,3:373\n1863#3,2:376\n1863#3,2:380\n774#3:382\n865#3,2:383\n1863#3,2:386\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n*L\n115#1:364\n137#1:365\n162#1:369\n186#1:372\n228#1:378\n280#1:379\n292#1:385\n304#1:388\n331#1:389\n343#1:390\n138#1:366\n138#1:367,2\n175#1:370,2\n191#1:373,3\n200#1:376,2\n282#1:380,2\n287#1:382\n287#1:383,2\n295#1:386,2\n*E\n"})
/* loaded from: classes2.dex */
public final class BroadcastChannelImpl<E> extends BufferedChannel<E> implements BroadcastChannel<E> {

    /* renamed from: l, reason: from kotlin metadata */
    public final int capacity;
    public final ReentrantLock m;
    public List n;
    public Object o;
    public final HashMap p;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl", f = "BroadcastChannel.kt", i = {0, 0}, l = {179}, m = "send", n = {"this", "element"}, s = {"L$0", "L$1"})
    public static final class d extends ContinuationImpl {
        public BroadcastChannelImpl d;
        public Object e;
        public Iterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6157g;
        public int i;

        public d(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6157g = obj;
            this.i |= Integer.MIN_VALUE;
            return BroadcastChannelImpl.this.send(null, this);
        }
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    public static /* synthetic */ void getValueOrNull$annotations() {
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public BroadcastChannelImpl(int i) {
        super(0, null);
        this.capacity = i;
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i, "BroadcastChannel capacity must be positive or Channel.CONFLATED, but ", " was specified").toString());
        }
        this.m = new ReentrantLock();
        this.n = CollectionsKt.emptyList();
        this.o = BroadcastChannelKt.f6158a;
        this.p = new HashMap();
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @NotNull
    public ReceiveChannel<E> openSubscription() {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            a bVar = this.capacity == -1 ? new b() : new a();
            if (!isClosedForSend() || this.o != BroadcastChannelKt.f6158a) {
                if (this.o != BroadcastChannelKt.f6158a) {
                    ((BufferedChannel) bVar).mo1142trySendJP2dKIU(getValue());
                }
                this.n = CollectionsKt.plus((Collection<? extends ReceiveChannel<E>>) this.n, bVar);
                reentrantLock.unlock();
                return bVar;
            }
            ((BufferedChannel) bVar).close(getCloseCause());
            reentrantLock.unlock();
            return bVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void access$removeSubscriber(BroadcastChannelImpl broadcastChannelImpl, ReceiveChannel receiveChannel) {
        ReentrantLock reentrantLock = broadcastChannelImpl.m;
        reentrantLock.lock();
        try {
            List list = broadcastChannelImpl.n;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj) != receiveChannel) {
                    arrayList.add(obj);
                }
            }
            broadcastChannelImpl.n = arrayList;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0079 -> B:30:0x007c). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object send(E r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.BroadcastChannelImpl.d
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.BroadcastChannelImpl$d r0 = (kotlinx.coroutines.channels.BroadcastChannelImpl.d) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.BroadcastChannelImpl$d r0 = new kotlinx.coroutines.channels.BroadcastChannelImpl$d
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6157g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.util.Iterator r7 = r0.f
            java.lang.Object r2 = r0.e
            kotlinx.coroutines.channels.BroadcastChannelImpl r4 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7c
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.locks.ReentrantLock r8 = r6.m
            r8.lock()
            boolean r2 = r6.isClosedForSend()     // Catch: java.lang.Throwable -> L4d
            if (r2 != 0) goto L95
            int r2 = r6.capacity     // Catch: java.lang.Throwable -> L4d
            r4 = -1
            if (r2 != r4) goto L4f
            r6.o = r7     // Catch: java.lang.Throwable -> L4d
            goto L4f
        L4d:
            r7 = move-exception
            goto L9a
        L4f:
            java.util.List r2 = r6.n     // Catch: java.lang.Throwable -> L4d
            r8.unlock()
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r8 = r2.iterator()
            r4 = r8
            r8 = r7
            r7 = r4
            r4 = r6
        L5e:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L92
            java.lang.Object r2 = r7.next()
            kotlinx.coroutines.channels.BufferedChannel r2 = (kotlinx.coroutines.channels.BufferedChannel) r2
            r0.d = r4
            r0.e = r8
            r0.f = r7
            r0.i = r3
            java.lang.Object r2 = r2.sendBroadcast$kotlinx_coroutines_core(r8, r0)
            if (r2 != r1) goto L79
            return r1
        L79:
            r5 = r2
            r2 = r8
            r8 = r5
        L7c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L90
            boolean r8 = r4.isClosedForSend()
            if (r8 != 0) goto L8b
            goto L90
        L8b:
            java.lang.Throwable r7 = r4.getSendException()
            throw r7
        L90:
            r8 = r2
            goto L5e
        L92:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L95:
            java.lang.Throwable r7 = r6.getSendException()     // Catch: java.lang.Throwable -> L4d
            throw r7     // Catch: java.lang.Throwable -> L4d
        L9a:
            r8.unlock()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl.send(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo1142trySendJP2dKIU(E element) {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            if (isClosedForSend()) {
                return super.mo1142trySendJP2dKIU(element);
            }
            List list = this.n;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((BufferedChannel) it.next()).shouldSendSuspend$kotlinx_coroutines_core()) {
                        return ChannelResult.INSTANCE.m1166failurePtdJZtk();
                    }
                }
            }
            if (this.capacity == -1) {
                this.o = element;
            }
            Iterator it2 = this.n.iterator();
            while (it2.hasNext()) {
                ((BufferedChannel) it2.next()).mo1142trySendJP2dKIU(element);
            }
            return ChannelResult.INSTANCE.m1167successJP2dKIU(Unit.INSTANCE);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public void registerSelectForSend(@NotNull SelectInstance<?> select, @Nullable Object element) {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            Object objRemove = this.p.remove(select);
            if (objRemove != null) {
                select.selectInRegistrationPhase(objRemove);
                reentrantLock.unlock();
            } else {
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                kotlinx.coroutines.e.launch$default(CoroutineScopeKt.CoroutineScope(select.getContext()), null, CoroutineStart.UNDISPATCHED, new c(element, select, null), 1, null);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2", f = "BroadcastChannel.kt", i = {}, l = {240}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n11#2:364\n1#3:365\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n*L\n253#1:364\n*E\n"})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int e;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Object f6156g;
        public final /* synthetic */ SelectInstance h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Object obj, SelectInstance selectInstance, Continuation continuation) {
            super(2, continuation);
            this.f6156g = obj;
            this.h = selectInstance;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new c(this.f6156g, this.h, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.e;
            BroadcastChannelImpl broadcastChannelImpl = BroadcastChannelImpl.this;
            boolean z = true;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Object obj2 = this.f6156g;
                    this.e = 1;
                    if (broadcastChannelImpl.send(obj2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Throwable th) {
                if (!broadcastChannelImpl.isClosedForSend() || (!(th instanceof ClosedSendChannelException) && broadcastChannelImpl.getSendException() != th)) {
                    throw th;
                }
                z = false;
            }
            ReentrantLock reentrantLock = broadcastChannelImpl.m;
            SelectInstance selectInstance = this.h;
            reentrantLock.lock();
            try {
                broadcastChannelImpl.p.put(selectInstance, z ? Unit.INSTANCE : BufferedChannelKt.getCHANNEL_CLOSED());
                Intrinsics.checkNotNull(selectInstance, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
                Object obj3 = Unit.INSTANCE;
                if (((SelectImplementation) selectInstance).trySelectDetailed(broadcastChannelImpl, obj3) != TrySelectDetailedResult.REREGISTER) {
                    broadcastChannelImpl.p.remove(selectInstance);
                }
                reentrantLock.unlock();
                return obj3;
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable cause) {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            Iterator it = this.n.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).close(cause);
            }
            List list = this.n;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj).hasElements$kotlinx_coroutines_core()) {
                    arrayList.add(obj);
                }
            }
            this.n = arrayList;
            boolean zClose = super.close(cause);
            reentrantLock.unlock();
            return zClose;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            Iterator it = this.n.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).cancelImpl$kotlinx_coroutines_core(cause);
            }
            this.o = BroadcastChannelKt.f6158a;
            boolean zCancelImpl$kotlinx_coroutines_core = super.cancelImpl$kotlinx_coroutines_core(cause);
            reentrantLock.unlock();
            return zCancelImpl$kotlinx_coroutines_core;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            return super.isClosedForSend();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$a;", "Lkotlinx/coroutines/channels/BufferedChannel;", "<init>", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "", "cause", "", "cancelImpl", "(Ljava/lang/Throwable;)Z", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,363:1\n11#2:364\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n*L\n311#1:364\n*E\n"})
    public final class a extends BufferedChannel<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            super(BroadcastChannelImpl.this.getCapacity(), null, 2, 0 == true ? 1 : 0);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* renamed from: cancelImpl, reason: merged with bridge method [inline-methods] */
        public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
            BroadcastChannelImpl broadcastChannelImpl = BroadcastChannelImpl.this;
            ReentrantLock reentrantLock = broadcastChannelImpl.m;
            reentrantLock.lock();
            try {
                BroadcastChannelImpl.access$removeSubscriber(broadcastChannelImpl, this);
                return super.cancelImpl$kotlinx_coroutines_core(cause);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$b;", "Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "<init>", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "", "cause", "", "cancelImpl", "(Ljava/lang/Throwable;)Z", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class b extends ConflatedBufferedChannel<E> {
        public b() {
            super(1, BufferOverflow.DROP_OLDEST, null, 4, null);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* renamed from: cancelImpl, reason: merged with bridge method [inline-methods] */
        public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
            BroadcastChannelImpl.access$removeSubscriber(BroadcastChannelImpl.this, this);
            return super.cancelImpl$kotlinx_coroutines_core(cause);
        }
    }

    public final E getValue() {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            if (!isClosedForSend()) {
                if (this.o == BroadcastChannelKt.f6158a) {
                    throw new IllegalStateException("No value");
                }
                E e = (E) this.o;
                reentrantLock.unlock();
                return e;
            }
            Throwable closeCause = getCloseCause();
            if (closeCause == null) {
                throw new IllegalStateException("This broadcast channel is closed");
            }
            throw closeCause;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Nullable
    public final E getValueOrNull() {
        ReentrantLock reentrantLock = this.m;
        reentrantLock.lock();
        try {
            E e = null;
            if (!isClosedForReceive() && this.o != BroadcastChannelKt.f6158a) {
                e = (E) this.o;
            }
            return e;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.o != BroadcastChannelKt.f6158a ? _COROUTINE.a.l(new StringBuilder("CONFLATED_ELEMENT="), this.o, "; ") : "");
        sb.append("BROADCAST=<");
        sb.append(super.toString());
        sb.append(">; SUBSCRIBERS=");
        sb.append(CollectionsKt___CollectionsKt.joinToString$default(this.n, ";", "<", ">", 0, null, null, 56, null));
        return sb.toString();
    }
}
