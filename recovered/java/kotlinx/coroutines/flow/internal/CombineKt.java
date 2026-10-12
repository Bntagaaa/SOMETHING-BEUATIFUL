package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u008d\u0001\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0005\"\u0004\b\u0001\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0014\u0010\b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00060\n0\t2\u0016\u0010\u000b\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0006\u0018\u00010\t0\f29\u0010\r\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000e¢\u0006\u0002\b\u0010H\u0081@¢\u0006\u0002\u0010\u0011\u001ak\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00050\n\"\u0004\b\u0000\u0010\u0013\"\u0004\b\u0001\u0010\u0014\"\u0004\b\u0002\u0010\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00130\n2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00140\n2(\u0010\r\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000eH\u0000¢\u0006\u0002\u0010\u0017*\u001c\b\u0002\u0010\u0000\"\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0018"}, d2 = {"Update", "Lkotlin/collections/IndexedValue;", "", "combineInternal", "", "R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "flows", "", "Lkotlinx/coroutines/flow/Flow;", "arrayFactory", "Lkotlin/Function0;", "transform", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "zipImpl", "T1", "T2", "flow", "flow2", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,140:1\n105#2:141\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n83#1:141\n*E\n"})
/* loaded from: classes2.dex */
public final class CombineKt {

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {51, 73, 76}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public Channel e;
        public byte[] f;

        /* renamed from: g, reason: collision with root package name */
        public int f6542g;
        public int h;
        public int i;
        public /* synthetic */ Object j;
        public final /* synthetic */ Flow[] k;
        public final /* synthetic */ Function0 l;
        public final /* synthetic */ Function3 m;
        public final /* synthetic */ FlowCollector n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FlowCollector flowCollector, Flow[] flowArr, Function0 function0, Function3 function3, Continuation continuation) {
            super(2, continuation);
            this.k = flowArr;
            this.l = function0;
            this.m = function3;
            this.n = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(this.n, this.k, this.l, this.m, continuation);
            aVar.j = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00f8, code lost:
        
            if (r11.invoke(r10, r12, r21) == r1) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x010e, code lost:
        
            if (r11.invoke(r10, r9, r21) == r1) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0111, code lost:
        
            if (r6 != 0) goto L44;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b3 A[LOOP:0: B:28:0x00b3->B:47:?, LOOP_START, PHI: r6 r9
          0x00b3: PHI (r6v4 int) = (r6v3 int), (r6v5 int) binds: [B:25:0x00ae, B:47:?] A[DONT_GENERATE, DONT_INLINE]
          0x00b3: PHI (r9v3 kotlin.collections.IndexedValue) = (r9v2 kotlin.collections.IndexedValue), (r9v10 kotlin.collections.IndexedValue) binds: [B:25:0x00ae, B:47:?] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00da  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00f8 -> B:44:0x0111). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x010e -> B:44:0x0111). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r22) {
            /*
                Method dump skipped, instructions count: 280
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$a$a, reason: collision with other inner class name */
        public static final class C0170a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int e;
            public final /* synthetic */ Flow[] f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ int f6543g;
            public final /* synthetic */ AtomicInteger h;
            public final /* synthetic */ Channel i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0170a(Flow[] flowArr, int i, AtomicInteger atomicInteger, Channel channel, Continuation continuation) {
                super(2, continuation);
                this.f = flowArr;
                this.f6543g = i;
                this.h = atomicInteger;
                this.i = channel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0170a(this.f, this.f6543g, this.h, this.i, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C0170a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.e;
                AtomicInteger atomicInteger = this.h;
                Channel channel = this.i;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Flow[] flowArr = this.f;
                        int i2 = this.f6543g;
                        Flow flow = flowArr[i2];
                        C0171a c0171a = new C0171a(channel, i2);
                        this.e = 1;
                        if (flow.collect(c0171a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(channel, null, 1, null);
                    }
                    return Unit.INSTANCE;
                } finally {
                    if (atomicInteger.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(channel, null, 1, null);
                    }
                }
            }

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$a$a$a, reason: collision with other inner class name */
            public static final class C0171a<T> implements FlowCollector {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ Channel f6544a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f6545b;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", i = {}, l = {29, 30}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a, reason: collision with other inner class name */
                public static final class C0172a extends ContinuationImpl {
                    public /* synthetic */ Object d;
                    public int f;

                    public C0172a(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.d = obj;
                        this.f |= Integer.MIN_VALUE;
                        return C0171a.this.emit(null, this);
                    }
                }

                public C0171a(Channel channel, int i) {
                    this.f6544a = channel;
                    this.f6545b = i;
                }

                /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
                
                    if (kotlinx.coroutines.YieldKt.yield(r0) == r1) goto L21;
                 */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(T r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof kotlinx.coroutines.flow.internal.CombineKt.a.C0170a.C0171a.C0172a
                        if (r0 == 0) goto L13
                        r0 = r7
                        kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a r0 = (kotlinx.coroutines.flow.internal.CombineKt.a.C0170a.C0171a.C0172a) r0
                        int r1 = r0.f
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a r0 = new kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.d
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L38
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L56
                    L2c:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L34:
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L4d
                    L38:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlin.collections.IndexedValue r7 = new kotlin.collections.IndexedValue
                        int r2 = r5.f6545b
                        r7.<init>(r2, r6)
                        r0.f = r4
                        kotlinx.coroutines.channels.Channel r6 = r5.f6544a
                        java.lang.Object r6 = r6.send(r7, r0)
                        if (r6 != r1) goto L4d
                        goto L55
                    L4d:
                        r0.f = r3
                        java.lang.Object r6 = kotlinx.coroutines.YieldKt.yield(r0)
                        if (r6 != r1) goto L56
                    L55:
                        return r1
                    L56:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.a.C0170a.C0171a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }
        }
    }

    @PublishedApi
    @Nullable
    public static final <R, T> Object combineInternal(@NotNull FlowCollector<? super R> flowCollector, @NotNull Flow<? extends T>[] flowArr, @NotNull Function0<T[]> function0, @NotNull Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object objFlowScope = FlowCoroutineKt.flowScope(new a(flowCollector, flowArr, function0, function3, null), continuation);
        return objFlowScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlowScope : Unit.INSTANCE;
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0, 0}, l = {123}, m = "invokeSuspend", n = {"second", "collectJob"}, s = {"L$0", "L$1"})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public CompletableJob e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6546g;
        public final /* synthetic */ Flow h;
        public final /* synthetic */ Flow i;
        public final /* synthetic */ FlowCollector j;
        public final /* synthetic */ Function3 k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Flow flow, Flow flow2, FlowCollector flowCollector, Function3 function3, Continuation continuation) {
            super(2, continuation);
            this.h = flow;
            this.i = flow2;
            this.j = flowCollector;
            this.k = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(this.h, this.i, this.j, this.k, continuation);
            bVar.f6546g = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1", f = "Combine.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
        public static final class c extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super Unit>, Object> {
            public int e;
            public /* synthetic */ Object f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Flow f6552g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Flow flow, Continuation continuation) {
                super(2, continuation);
                this.f6552g = flow;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                c cVar = new c(this.f6552g, continuation);
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
                public final /* synthetic */ ProducerScope f6553a;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1$1", f = "Combine.kt", i = {}, l = {87}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$b$c$a$a, reason: collision with other inner class name */
                public static final class C0176a extends ContinuationImpl {
                    public /* synthetic */ Object d;
                    public int f;

                    public C0176a(Continuation continuation) {
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
                    this.f6553a = producerScope;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(T2 r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.internal.CombineKt.b.c.a.C0176a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.internal.CombineKt$b$c$a$a r0 = (kotlinx.coroutines.flow.internal.CombineKt.b.c.a.C0176a) r0
                        int r1 = r0.f
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.CombineKt$b$c$a$a r0 = new kotlinx.coroutines.flow.internal.CombineKt$b$c$a$a
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.d
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L47
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.ProducerScope r6 = r4.f6553a
                        kotlinx.coroutines.channels.SendChannel r6 = r6.getChannel()
                        if (r5 != 0) goto L3e
                        kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
                    L3e:
                        r0.f = r3
                        java.lang.Object r5 = r6.send(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.b.c.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
                    if (this.f6552g.collect(aVar, this) == coroutine_suspended) {
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
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReceiveChannel receiveChannel;
            CompletableJob completableJob;
            ReceiveChannel receiveChannel2;
            CompletableJob completableJob2;
            CoroutineContext coroutineContextPlus;
            Unit unit;
            C0173b c0173b;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f6546g;
                ReceiveChannel receiveChannelProduce$default = ProduceKt.produce$default(coroutineScope, null, 0, new c(this.h, null), 3, null);
                CompletableJob completableJobJob$default = x.Job$default((Job) null, 1, (Object) null);
                Intrinsics.checkNotNull(receiveChannelProduce$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
                ((SendChannel) receiveChannelProduce$default).invokeOnClose(new a(completableJobJob$default));
                try {
                    CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                    Object objThreadContextElements = ThreadContextKt.threadContextElements(coroutineContext);
                    coroutineContextPlus = coroutineScope.getCoroutineContext().plus(completableJobJob$default);
                    try {
                        try {
                            unit = Unit.INSTANCE;
                            try {
                                c0173b = new C0173b(this.i, coroutineContext, objThreadContextElements, receiveChannelProduce$default, this.j, this.k, completableJobJob$default, null);
                                receiveChannel = receiveChannelProduce$default;
                                completableJob = completableJobJob$default;
                            } catch (AbortFlowException e) {
                                e = e;
                                receiveChannel = receiveChannelProduce$default;
                                completableJob = completableJobJob$default;
                            }
                        } catch (AbortFlowException e2) {
                            e = e2;
                            completableJob = completableJobJob$default;
                            receiveChannel = receiveChannelProduce$default;
                        }
                    } catch (Throwable th) {
                        th = th;
                        receiveChannel = receiveChannelProduce$default;
                    }
                } catch (AbortFlowException e3) {
                    e = e3;
                    receiveChannel = receiveChannelProduce$default;
                    completableJob = completableJobJob$default;
                } catch (Throwable th2) {
                    th = th2;
                    receiveChannel = receiveChannelProduce$default;
                }
                try {
                    this.f6546g = receiveChannel;
                    this.e = completableJob;
                    this.f = 1;
                    if (ChannelFlowKt.withContextUndispatched$default(coroutineContextPlus, unit, null, c0173b, this, 4, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    receiveChannel2 = receiveChannel;
                } catch (AbortFlowException e4) {
                    e = e4;
                    completableJob2 = completableJob;
                    receiveChannel2 = receiveChannel;
                    FlowExceptions_commonKt.checkOwnership(e, completableJob2);
                    ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    receiveChannel2 = receiveChannel;
                    ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                completableJob2 = this.e;
                receiveChannel2 = (ReceiveChannel) this.f6546g;
                try {
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (AbortFlowException e5) {
                        e = e5;
                        FlowExceptions_commonKt.checkOwnership(e, completableJob2);
                        ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                        return Unit.INSTANCE;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
            }
            ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
            return Unit.INSTANCE;
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public static final class a implements Function1<Throwable, Unit> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ CompletableJob f6547a;

            public a(CompletableJob completableJob) {
                this.f6547a = completableJob;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                CompletableJob completableJob = this.f6547a;
                if (completableJob.isActive()) {
                    completableJob.cancel((CancellationException) new AbortFlowException(completableJob));
                }
            }
        }

        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$b$b, reason: collision with other inner class name */
        public static final class C0173b extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
            public int e;
            public final /* synthetic */ Flow f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ CoroutineContext f6548g;
            public final /* synthetic */ Object h;
            public final /* synthetic */ ReceiveChannel i;
            public final /* synthetic */ FlowCollector j;
            public final /* synthetic */ Function3 k;
            public final /* synthetic */ CompletableJob l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0173b(Flow flow, CoroutineContext coroutineContext, Object obj, ReceiveChannel receiveChannel, FlowCollector flowCollector, Function3 function3, CompletableJob completableJob, Continuation continuation) {
                super(2, continuation);
                this.f = flow;
                this.f6548g = coroutineContext;
                this.h = obj;
                this.i = receiveChannel;
                this.j = flowCollector;
                this.k = function3;
                this.l = completableJob;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0173b(this.f, this.f6548g, this.h, this.i, this.j, this.k, this.l, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                return ((C0173b) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$b$b$a */
            public static final class a<T> implements FlowCollector {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ CoroutineContext f6549a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ Object f6550b;
                public final /* synthetic */ ReceiveChannel c;
                public final /* synthetic */ FlowCollector d;
                public final /* synthetic */ Function3 e;
                public final /* synthetic */ CompletableJob f;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1", f = "Combine.kt", i = {}, l = {125}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$b$b$a$b, reason: collision with other inner class name */
                public static final class C0175b extends ContinuationImpl {
                    public /* synthetic */ Object d;
                    public int f;

                    public C0175b(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.d = obj;
                        this.f |= Integer.MIN_VALUE;
                        return a.this.emit(null, this);
                    }
                }

                public a(CoroutineContext coroutineContext, Object obj, ReceiveChannel receiveChannel, FlowCollector flowCollector, Function3 function3, CompletableJob completableJob) {
                    this.f6549a = coroutineContext;
                    this.f6550b = obj;
                    this.c = receiveChannel;
                    this.d = flowCollector;
                    this.e = function3;
                    this.f = completableJob;
                }

                @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {126, 129, 129}, m = "invokeSuspend", n = {}, s = {})
                @SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,140:1\n994#2:141\n14#3:142\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n126#1:141\n129#1:142\n*E\n"})
                /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$b$b$a$a, reason: collision with other inner class name */
                public static final class C0174a extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
                    public FlowCollector e;
                    public int f;

                    /* renamed from: g, reason: collision with root package name */
                    public final /* synthetic */ ReceiveChannel f6551g;
                    public final /* synthetic */ FlowCollector h;
                    public final /* synthetic */ Function3 i;
                    public final /* synthetic */ Object j;
                    public final /* synthetic */ CompletableJob k;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C0174a(ReceiveChannel receiveChannel, FlowCollector flowCollector, Function3 function3, Object obj, CompletableJob completableJob, Continuation continuation) {
                        super(2, continuation);
                        this.f6551g = receiveChannel;
                        this.h = flowCollector;
                        this.i = function3;
                        this.j = obj;
                        this.k = completableJob;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C0174a(this.f6551g, this.h, this.i, this.j, this.k, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                        return ((C0174a) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
                    
                        if (r1.emit(r7, r6) != r0) goto L30;
                     */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r7) throws java.lang.Throwable {
                        /*
                            r6 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r1 = r6.f
                            r2 = 0
                            r3 = 3
                            r4 = 2
                            r5 = 1
                            if (r1 == 0) goto L2e
                            if (r1 == r5) goto L24
                            if (r1 == r4) goto L1e
                            if (r1 != r3) goto L16
                            kotlin.ResultKt.throwOnFailure(r7)
                            goto L6f
                        L16:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r0)
                            throw r7
                        L1e:
                            kotlinx.coroutines.flow.FlowCollector r1 = r6.e
                            kotlin.ResultKt.throwOnFailure(r7)
                            goto L64
                        L24:
                            kotlin.ResultKt.throwOnFailure(r7)
                            kotlinx.coroutines.channels.ChannelResult r7 = (kotlinx.coroutines.channels.ChannelResult) r7
                            java.lang.Object r7 = r7.getHolder()
                            goto L3c
                        L2e:
                            kotlin.ResultKt.throwOnFailure(r7)
                            r6.f = r5
                            kotlinx.coroutines.channels.ReceiveChannel r7 = r6.f6551g
                            java.lang.Object r7 = r7.mo1145receiveCatchingJP2dKIU(r6)
                            if (r7 != r0) goto L3c
                            goto L6e
                        L3c:
                            boolean r1 = r7 instanceof kotlinx.coroutines.channels.ChannelResult.Failed
                            if (r1 == 0) goto L4e
                            java.lang.Throwable r7 = kotlinx.coroutines.channels.ChannelResult.m1156exceptionOrNullimpl(r7)
                            if (r7 != 0) goto L4d
                            kotlinx.coroutines.flow.internal.AbortFlowException r7 = new kotlinx.coroutines.flow.internal.AbortFlowException
                            kotlinx.coroutines.CompletableJob r0 = r6.k
                            r7.<init>(r0)
                        L4d:
                            throw r7
                        L4e:
                            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
                            if (r7 != r1) goto L53
                            r7 = r2
                        L53:
                            kotlinx.coroutines.flow.FlowCollector r1 = r6.h
                            r6.e = r1
                            r6.f = r4
                            kotlin.jvm.functions.Function3 r4 = r6.i
                            java.lang.Object r5 = r6.j
                            java.lang.Object r7 = r4.invoke(r5, r7, r6)
                            if (r7 != r0) goto L64
                            goto L6e
                        L64:
                            r6.e = r2
                            r6.f = r3
                            java.lang.Object r7 = r1.emit(r7, r6)
                            if (r7 != r0) goto L6f
                        L6e:
                            return r0
                        L6f:
                            kotlin.Unit r7 = kotlin.Unit.INSTANCE
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.b.C0173b.a.C0174a.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(T1 r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof kotlinx.coroutines.flow.internal.CombineKt.b.C0173b.a.C0175b
                        if (r0 == 0) goto L13
                        r0 = r13
                        kotlinx.coroutines.flow.internal.CombineKt$b$b$a$b r0 = (kotlinx.coroutines.flow.internal.CombineKt.b.C0173b.a.C0175b) r0
                        int r1 = r0.f
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.CombineKt$b$b$a$b r0 = new kotlinx.coroutines.flow.internal.CombineKt$b$b$a$b
                        r0.<init>(r13)
                    L18:
                        java.lang.Object r13 = r0.d
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r13)
                        goto L52
                    L29:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L31:
                        kotlin.ResultKt.throwOnFailure(r13)
                        kotlin.Unit r13 = kotlin.Unit.INSTANCE
                        kotlinx.coroutines.flow.internal.CombineKt$b$b$a$a r4 = new kotlinx.coroutines.flow.internal.CombineKt$b$b$a$a
                        kotlinx.coroutines.flow.FlowCollector r6 = r11.d
                        kotlin.jvm.functions.Function3 r7 = r11.e
                        kotlinx.coroutines.channels.ReceiveChannel r5 = r11.c
                        kotlinx.coroutines.CompletableJob r9 = r11.f
                        r10 = 0
                        r8 = r12
                        r4.<init>(r5, r6, r7, r8, r9, r10)
                        r0.f = r3
                        kotlin.coroutines.CoroutineContext r12 = r11.f6549a
                        java.lang.Object r2 = r11.f6550b
                        java.lang.Object r12 = kotlinx.coroutines.flow.internal.ChannelFlowKt.withContextUndispatched(r12, r13, r2, r4, r0)
                        if (r12 != r1) goto L52
                        return r1
                    L52:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.b.C0173b.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.e;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f6548g, this.h, this.i, this.j, this.k, this.l);
                    this.e = 1;
                    if (this.f.collect(aVar, this) == coroutine_suspended) {
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

    @NotNull
    public static final <T1, T2, R> Flow<R> zipImpl(@NotNull final Flow<? extends T1> flow, @NotNull final Flow<? extends T2> flow2, @NotNull final Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new Flow<R>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super R> flowCollector, Continuation<? super Unit> continuation) {
                Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new CombineKt.b(flow2, flow, flowCollector, function3, null), continuation);
                return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
            }
        };
    }
}
