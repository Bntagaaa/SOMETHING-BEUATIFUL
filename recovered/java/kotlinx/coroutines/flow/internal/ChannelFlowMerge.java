package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BA\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ-\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001e\u0010\u0017\u001a\u00020\u00162\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0094@¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/Flow;", "flow", "", "concurrency", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(Lkotlinx/coroutines/flow/Flow;ILkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "create", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/channels/ReceiveChannel;", "produceImpl", "(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/channels/ProducerScope;", "", "collectTo", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "additionalToStringProps", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ChannelFlowMerge<T> extends ChannelFlow<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Flow f6526a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6527b;

    public /* synthetic */ ChannelFlowMerge(Flow flow, int i, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(flow, i, (i3 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i3 & 8) != 0 ? -2 : i2, (i3 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    public ChannelFlowMerge(@NotNull Flow<? extends Flow<? extends T>> flow, int i, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i2, bufferOverflow);
        this.f6526a = flow;
        this.f6527b = i;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ChannelFlow<T> create(@NotNull CoroutineContext context, int capacity, @NotNull BufferOverflow onBufferOverflow) {
        return new ChannelFlowMerge(this.f6526a, this.f6527b, context, capacity, onBufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ReceiveChannel<T> produceImpl(@NotNull CoroutineScope scope) {
        return ProduceKt.produce(scope, this.context, this.capacity, getCollectToFun$kotlinx_coroutines_core());
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object collectTo(@NotNull ProducerScope<? super T> producerScope, @NotNull Continuation<? super Unit> continuation) {
        Object objCollect = this.f6526a.collect(new a((Job) continuation.getF5543a().get(Job.INSTANCE), SemaphoreKt.Semaphore$default(this.f6527b, 0, 2, null), producerScope, new SendingCollector(producerScope)), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class a<T> implements FlowCollector {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Job f6528a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Semaphore f6529b;
        public final /* synthetic */ ProducerScope c;
        public final /* synthetic */ SendingCollector d;

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2", f = "Merge.kt", i = {0, 0}, l = {62}, m = "emit", n = {"this", "inner"}, s = {"L$0", "L$1"})
        public static final class b extends ContinuationImpl {
            public Object d;
            public Flow e;
            public /* synthetic */ Object f;
            public int h;

            public b(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f = obj;
                this.h |= Integer.MIN_VALUE;
                return a.this.emit((Flow) null, (Continuation<? super Unit>) this);
            }
        }

        public a(Job job, Semaphore semaphore, ProducerScope producerScope, SendingCollector sendingCollector) {
            this.f6528a = job;
            this.f6529b = semaphore;
            this.c = producerScope;
            this.d = sendingCollector;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((Flow) obj, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(kotlinx.coroutines.flow.Flow<? extends T> r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.ChannelFlowMerge.a.b
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.internal.ChannelFlowMerge$a$b r0 = (kotlinx.coroutines.flow.internal.ChannelFlowMerge.a.b) r0
                int r1 = r0.h
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.h = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.internal.ChannelFlowMerge$a$b r0 = new kotlinx.coroutines.flow.internal.ChannelFlowMerge$a$b
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.f
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.h
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                kotlinx.coroutines.flow.Flow r8 = r0.e
                java.lang.Object r0 = r0.d
                kotlinx.coroutines.flow.internal.ChannelFlowMerge$a r0 = (kotlinx.coroutines.flow.internal.ChannelFlowMerge.a) r0
                kotlin.ResultKt.throwOnFailure(r9)
                goto L51
            L2f:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L37:
                kotlin.ResultKt.throwOnFailure(r9)
                kotlinx.coroutines.Job r9 = r7.f6528a
                if (r9 == 0) goto L41
                kotlinx.coroutines.JobKt.ensureActive(r9)
            L41:
                r0.d = r7
                r0.e = r8
                r0.h = r3
                kotlinx.coroutines.sync.Semaphore r9 = r7.f6529b
                java.lang.Object r9 = r9.acquire(r0)
                if (r9 != r1) goto L50
                return r1
            L50:
                r0 = r7
            L51:
                kotlinx.coroutines.channels.ProducerScope r1 = r0.c
                kotlinx.coroutines.flow.internal.ChannelFlowMerge$a$a r4 = new kotlinx.coroutines.flow.internal.ChannelFlowMerge$a$a
                kotlinx.coroutines.flow.internal.SendingCollector r9 = r0.d
                kotlinx.coroutines.sync.Semaphore r0 = r0.f6529b
                r2 = 0
                r4.<init>(r8, r9, r0, r2)
                r3 = 0
                r5 = 3
                r6 = 0
                kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowMerge.a.emit(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowMerge$a$a, reason: collision with other inner class name */
        public static final class C0167a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int e;
            public final /* synthetic */ Flow f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ SendingCollector f6530g;
            public final /* synthetic */ Semaphore h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0167a(Flow flow, SendingCollector sendingCollector, Semaphore semaphore, Continuation continuation) {
                super(2, continuation);
                this.f = flow;
                this.f6530g = sendingCollector;
                this.h = semaphore;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0167a(this.f, this.f6530g, this.h, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C0167a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.e;
                Semaphore semaphore = this.h;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Flow flow = this.f;
                        SendingCollector sendingCollector = this.f6530g;
                        this.e = 1;
                        if (flow.collect(sendingCollector, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    semaphore.release();
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    semaphore.release();
                    throw th;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String additionalToStringProps() {
        return "concurrency=" + this.f6527b;
    }
}
