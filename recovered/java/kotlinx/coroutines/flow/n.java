package kotlinx.coroutines.flow;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.selects.SelectImplementation;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u001a-\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a9\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0006H\u0007¢\u0006\u0004\b\u0004\u0010\u0007\u001a-\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\n\u0010\u0005\u001a9\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\u0007\u001a-\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\f\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\r\u0010\u0005\u001a!\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a-\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0014\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0015\u0010\u0005\u001a-\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0016\u0010\u0005¨\u0006\u0017"}, d2 = {"T", "Lkotlinx/coroutines/flow/Flow;", "", "timeoutMillis", "debounce", "(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function1;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;", "Lkotlin/time/Duration;", "timeout", "debounce-HG0u8IE", "debounceDuration", "periodMillis", "sample", "Lkotlinx/coroutines/CoroutineScope;", "delayMillis", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "fixedPeriodTicker", "(Lkotlinx/coroutines/CoroutineScope;J)Lkotlinx/coroutines/channels/ReceiveChannel;", "period", "sample-HG0u8IE", "timeout-HG0u8IE", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1#2:408\n*E\n"})
/* loaded from: classes2.dex */
final /* synthetic */ class n {
    /* JADX WARN: Multi-variable type inference failed */
    @FlowPreview
    @NotNull
    public static final <T> Flow<T> debounce(@NotNull Flow<? extends T> flow, final long j) {
        if (j >= 0) {
            return j == 0 ? flow : FlowCoroutineKt.scopedFlow(new m(new Function1() { // from class: kotlinx.coroutines.flow.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Long.valueOf(j);
                }
            }, flow, null));
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative");
    }

    @FlowPreview
    @NotNull
    /* renamed from: debounce-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m1177debounceHG0u8IE(@NotNull Flow<? extends T> flow, long j) {
        return FlowKt.debounce(flow, DelayKt.m1134toDelayMillisLRDsOJo(j));
    }

    @FlowPreview
    @JvmName(name = "debounceDuration")
    @NotNull
    @OverloadResolutionByLambdaReturnType
    public static final <T> Flow<T> debounceDuration(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, Duration> function1) {
        return FlowCoroutineKt.scopedFlow(new m(new kotlin.sequences.g(1, function1), flow, null));
    }

    @FlowPreview
    @OverloadResolutionByLambdaReturnType
    @NotNull
    public static final <T> Flow<T> debounce(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, Long> function1) {
        return FlowCoroutineKt.scopedFlow(new m(function1, flow, null));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {ErrorMessages.ERROR_NXT_COULD_NOT_DECODE_ELEMENT}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
    @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n54#2,5:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n278#1:408,5\n*E\n"})
    public static final class b<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {
        public Ref.ObjectRef e;
        public ReceiveChannel f;

        /* renamed from: g, reason: collision with root package name */
        public int f6580g;
        public /* synthetic */ Object h;
        public /* synthetic */ Object i;
        public final /* synthetic */ long j;
        public final /* synthetic */ Flow k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j, Flow flow, Continuation continuation) {
            super(3, continuation);
            this.j = j;
            this.k = flow;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
            b bVar = new b(this.j, this.k, continuation);
            bVar.h = coroutineScope;
            bVar.i = flowCollector;
            return bVar.invokeSuspend(Unit.INSTANCE);
        }

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1", f = "Delay.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
        public static final class c extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super Unit>, Object> {
            public int e;
            public /* synthetic */ Object f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Flow f6583g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Flow flow, Continuation continuation) {
                super(2, continuation);
                this.f6583g = flow;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                c cVar = new c(this.f6583g, continuation);
                cVar.f = obj;
                return cVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super Object> producerScope, Continuation<? super Unit> continuation) {
                return invoke2((ProducerScope<Object>) producerScope, continuation);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(ProducerScope<Object> producerScope, Continuation<? super Unit> continuation) {
                return ((c) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class a<T> implements FlowCollector {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ ProducerScope f6584a;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1$1", f = "Delay.kt", i = {}, l = {273}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.n$b$c$a$a, reason: collision with other inner class name */
                public static final class C0179a extends ContinuationImpl {
                    public /* synthetic */ Object d;
                    public int f;

                    public C0179a(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.d = obj;
                        this.f |= Integer.MIN_VALUE;
                        return a.this.emit(null, this);
                    }
                }

                public a(ProducerScope producerScope) {
                    this.f6584a = producerScope;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(T r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.n.b.c.a.C0179a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.n$b$c$a$a r0 = (kotlinx.coroutines.flow.n.b.c.a.C0179a) r0
                        int r1 = r0.f
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.n$b$c$a$a r0 = new kotlinx.coroutines.flow.n$b$c$a$a
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.d
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L43
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        if (r5 != 0) goto L38
                        kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
                    L38:
                        r0.f = r3
                        kotlinx.coroutines.channels.ProducerScope r6 = r4.f6584a
                        java.lang.Object r5 = r6.send(r5, r0)
                        if (r5 != r1) goto L43
                        return r1
                    L43:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.n.b.c.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.e;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a((ProducerScope) this.f);
                    this.e = 1;
                    if (this.f6583g.collect(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ReceiveChannel receiveChannel;
            ReceiveChannel<Unit> receiveChannelFixedPeriodTicker;
            Ref.ObjectRef objectRef;
            FlowCollector flowCollector;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6580g;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.h;
                FlowCollector flowCollector2 = (FlowCollector) this.i;
                ReceiveChannel receiveChannelProduce$default = ProduceKt.produce$default(coroutineScope, null, -1, new c(this.k, null), 1, null);
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                receiveChannel = receiveChannelProduce$default;
                receiveChannelFixedPeriodTicker = FlowKt.fixedPeriodTicker(coroutineScope, this.j);
                objectRef = objectRef2;
                flowCollector = flowCollector2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                receiveChannelFixedPeriodTicker = this.f;
                objectRef = this.e;
                receiveChannel = (ReceiveChannel) this.i;
                flowCollector = (FlowCollector) this.h;
                ResultKt.throwOnFailure(obj);
            }
            while (objectRef.element != NullSurrogateKt.DONE) {
                SelectImplementation selectImplementation = new SelectImplementation(getF5543a());
                selectImplementation.invoke(receiveChannel.getOnReceiveCatching(), new a(objectRef, receiveChannelFixedPeriodTicker, null));
                selectImplementation.invoke(receiveChannelFixedPeriodTicker.getOnReceive(), new C0178b(null, objectRef, flowCollector));
                this.h = flowCollector;
                this.i = receiveChannel;
                this.e = objectRef;
                this.f = receiveChannelFixedPeriodTicker;
                this.f6580g = 1;
                if (selectImplementation.doSelect(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "result", "Lkotlinx/coroutines/channels/ChannelResult;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1009#2,2:408\n1026#2:410\n1027#2:412\n1#3:411\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n*L\n281#1:408,2\n282#1:410\n282#1:412\n*E\n"})
        public static final class a extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super Unit>, Object> {
            public /* synthetic */ Object e;
            public final /* synthetic */ Ref.ObjectRef f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ ReceiveChannel f6581g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Ref.ObjectRef objectRef, ReceiveChannel receiveChannel, Continuation continuation) {
                super(2, continuation);
                this.f = objectRef;
                this.f6581g = receiveChannel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                a aVar = new a(this.f, this.f6581g, continuation);
                aVar.e = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ChannelResult<? extends Object> channelResult, Continuation<? super Unit> continuation) {
                return m1180invokeWpGqRn0(channelResult.getHolder(), continuation);
            }

            /* renamed from: invoke-WpGqRn0, reason: not valid java name */
            public final Object m1180invokeWpGqRn0(Object obj, Continuation<? super Unit> continuation) {
                return ((a) create(ChannelResult.m1152boximpl(obj), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                T t = (T) ((ChannelResult) this.e).getHolder();
                boolean z = t instanceof ChannelResult.Failed;
                Ref.ObjectRef objectRef = this.f;
                if (!z) {
                    objectRef.element = t;
                }
                if (z) {
                    Throwable thM1156exceptionOrNullimpl = ChannelResult.m1156exceptionOrNullimpl(t);
                    if (thM1156exceptionOrNullimpl != null) {
                        throw thM1156exceptionOrNullimpl;
                    }
                    this.f6581g.cancel((CancellationException) new ChildCancelledException());
                    objectRef.element = (T) NullSurrogateKt.DONE;
                }
                return Unit.INSTANCE;
            }
        }

        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$2", f = "Delay.kt", i = {}, l = {293}, m = "invokeSuspend", n = {}, s = {})
        @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,407:1\n14#2:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2\n*L\n293#1:408\n*E\n"})
        /* renamed from: kotlinx.coroutines.flow.n$b$b, reason: collision with other inner class name */
        public static final class C0178b extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
            public int e;
            public final /* synthetic */ Ref.ObjectRef f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ FlowCollector f6582g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0178b(Continuation continuation, Ref.ObjectRef objectRef, FlowCollector flowCollector) {
                super(2, continuation);
                this.f = objectRef;
                this.f6582g = flowCollector;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0178b(continuation, this.f, this.f6582g);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                return ((C0178b) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.e;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef = this.f;
                    T t = objectRef.element;
                    if (t == null) {
                        return Unit.INSTANCE;
                    }
                    objectRef.element = null;
                    if (t == NullSurrogateKt.NULL) {
                        t = null;
                    }
                    this.e = 1;
                    if (this.f6582g.emit(t, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }
    }

    @FlowPreview
    @NotNull
    public static final <T> Flow<T> sample(@NotNull Flow<? extends T> flow, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Sample period should be positive");
        }
        return FlowCoroutineKt.scopedFlow(new b(j, flow, null));
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$1", f = "Delay.kt", i = {0, 1, 2}, l = {ErrorMessages.ERROR_TWITTER_REQUEST_MENTIONS_FAILED, ErrorMessages.ERROR_TWITTER_REQUEST_DIRECT_MESSAGES_FAILED, ErrorMessages.ERROR_TWITTER_DIRECT_MESSAGE_FAILED}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    public static final class a extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
        public int e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ long f6579g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j, Continuation continuation) {
            super(2, continuation);
            this.f6579g = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(this.f6579g, continuation);
            aVar.f = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
            return ((a) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0050 A[PHI: r1
          0x0050: PHI (r1v4 kotlinx.coroutines.channels.ProducerScope) = (r1v3 kotlinx.coroutines.channels.ProducerScope), (r1v8 kotlinx.coroutines.channels.ProducerScope) binds: [B:16:0x004d, B:10:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0058 -> B:15:0x003f). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.e
                long r2 = r7.f6579g
                r4 = 3
                r5 = 2
                r6 = 1
                if (r1 == 0) goto L2c
                if (r1 == r6) goto L24
                if (r1 == r5) goto L1c
                if (r1 != r4) goto L14
                goto L24
            L14:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1c:
                java.lang.Object r1 = r7.f
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L50
            L24:
                java.lang.Object r1 = r7.f
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L3f
            L2c:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f
                r1 = r8
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                r7.f = r1
                r7.e = r6
                java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r2, r7)
                if (r8 != r0) goto L3f
                goto L5a
            L3f:
                kotlinx.coroutines.channels.SendChannel r8 = r1.getChannel()
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                r7.f = r1
                r7.e = r5
                java.lang.Object r8 = r8.send(r6, r7)
                if (r8 != r0) goto L50
                goto L5a
            L50:
                r7.f = r1
                r7.e = r4
                java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r2, r7)
                if (r8 != r0) goto L3f
            L5a:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.n.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @NotNull
    public static final ReceiveChannel<Unit> fixedPeriodTicker(@NotNull CoroutineScope coroutineScope, long j) {
        return ProduceKt.produce$default(coroutineScope, null, 0, new a(j, null), 1, null);
    }

    @FlowPreview
    @NotNull
    /* renamed from: sample-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m1178sampleHG0u8IE(@NotNull Flow<? extends T> flow, long j) {
        return FlowKt.sample(flow, DelayKt.m1134toDelayMillisLRDsOJo(j));
    }

    @FlowPreview
    @NotNull
    /* renamed from: timeout-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m1179timeoutHG0u8IE(@NotNull Flow<? extends T> flow, long j) {
        return FlowCoroutineKt.scopedFlow(new o(j, flow, null));
    }
}
