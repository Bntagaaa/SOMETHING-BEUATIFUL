package kotlinx.coroutines.flow;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {215, ErrorMessages.ERROR_NXT_INVALID_DESTINATION_ARGUMENT}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "timeoutMillis", "downstream", "values", "lastValue"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n14#2:408\n14#2:410\n1#3:409\n54#4,5:411\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n212#1:408\n215#1:410\n222#1:411,5\n*E\n"})
/* loaded from: classes2.dex */
final class m extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<Object>, Continuation<? super Unit>, Object> {
    public Ref.ObjectRef e;
    public Ref.LongRef f;

    /* renamed from: g, reason: collision with root package name */
    public int f6574g;
    public /* synthetic */ Object h;
    public /* synthetic */ Object i;
    public final /* synthetic */ Function1 j;
    public final /* synthetic */ Flow k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Function1 function1, Flow flow, Continuation continuation) {
        super(3, continuation);
        this.j = function1;
        this.k = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, FlowCollector<Object> flowCollector, Continuation<? super Unit> continuation) {
        m mVar = new m(this.j, this.k, continuation);
        mVar.h = coroutineScope;
        mVar.i = flowCollector;
        return mVar.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
    
        if (r7.emit(r14, r13) == r0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00da, code lost:
    
        if (r7.doSelect(r13) != r0) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c A[PHI: r1 r5 r6 r7
      0x009c: PHI (r1v3 kotlin.jvm.internal.Ref$LongRef) = (r1v5 kotlin.jvm.internal.Ref$LongRef), (r1v7 kotlin.jvm.internal.Ref$LongRef), (r1v7 kotlin.jvm.internal.Ref$LongRef) binds: [B:28:0x009a, B:15:0x0067, B:21:0x0082] A[DONT_GENERATE, DONT_INLINE]
      0x009c: PHI (r5v3 kotlin.jvm.internal.Ref$ObjectRef) = 
      (r5v5 kotlin.jvm.internal.Ref$ObjectRef)
      (r5v6 kotlin.jvm.internal.Ref$ObjectRef)
      (r5v6 kotlin.jvm.internal.Ref$ObjectRef)
     binds: [B:28:0x009a, B:15:0x0067, B:21:0x0082] A[DONT_GENERATE, DONT_INLINE]
      0x009c: PHI (r6v2 kotlinx.coroutines.channels.ReceiveChannel) = 
      (r6v4 kotlinx.coroutines.channels.ReceiveChannel)
      (r6v5 kotlinx.coroutines.channels.ReceiveChannel)
      (r6v5 kotlinx.coroutines.channels.ReceiveChannel)
     binds: [B:28:0x009a, B:15:0x0067, B:21:0x0082] A[DONT_GENERATE, DONT_INLINE]
      0x009c: PHI (r7v2 kotlinx.coroutines.flow.FlowCollector) = 
      (r7v4 kotlinx.coroutines.flow.FlowCollector)
      (r7v5 kotlinx.coroutines.flow.FlowCollector)
      (r7v5 kotlinx.coroutines.flow.FlowCollector)
     binds: [B:28:0x009a, B:15:0x0067, B:21:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00dd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00da -> B:7:0x001c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", i = {}, l = {204}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super Unit>, Object> {
        public int e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Flow f6577g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Flow flow, Continuation continuation) {
            super(2, continuation);
            this.f6577g = flow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            c cVar = new c(this.f6577g, continuation);
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
            public final /* synthetic */ ProducerScope f6578a;

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", i = {}, l = {204}, m = "emit", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.flow.m$c$a$a, reason: collision with other inner class name */
            public static final class C0177a extends ContinuationImpl {
                public /* synthetic */ Object d;
                public int f;

                public C0177a(Continuation continuation) {
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
                this.f6578a = producerScope;
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
                    boolean r0 = r6 instanceof kotlinx.coroutines.flow.m.c.a.C0177a
                    if (r0 == 0) goto L13
                    r0 = r6
                    kotlinx.coroutines.flow.m$c$a$a r0 = (kotlinx.coroutines.flow.m.c.a.C0177a) r0
                    int r1 = r0.f
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.m$c$a$a r0 = new kotlinx.coroutines.flow.m$c$a$a
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
                    kotlinx.coroutines.channels.ProducerScope r6 = r4.f6578a
                    java.lang.Object r5 = r6.send(r5, r0)
                    if (r5 != r1) goto L43
                    return r1
                L43:
                    kotlin.Unit r5 = kotlin.Unit.INSTANCE
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m.c.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
                if (this.f6577g.collect(aVar, this) == coroutine_suspended) {
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

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", i = {}, l = {226}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,407:1\n14#2:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n*L\n226#1:408\n*E\n"})
    public static final class a extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        public int e;
        public final /* synthetic */ FlowCollector f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f6575g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Continuation continuation, Ref.ObjectRef objectRef, FlowCollector flowCollector) {
            super(1, continuation);
            this.f = flowCollector;
            this.f6575g = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new a(continuation, this.f6575g, this.f);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((a) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.e;
            Ref.ObjectRef objectRef = this.f6575g;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Symbol symbol = NullSurrogateKt.NULL;
                Object obj2 = objectRef.element;
                if (obj2 == symbol) {
                    obj2 = null;
                }
                this.e = 1;
                if (this.f.emit(obj2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            objectRef.element = null;
            return Unit.INSTANCE;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "value", "Lkotlinx/coroutines/channels/ChannelResult;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {0}, l = {236}, m = "invokeSuspend", n = {"$this$onFailure_u2dWpGqRn0$iv"}, s = {"L$0"})
    @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,407:1\n1009#2,2:408\n1026#2:410\n1027#2:413\n1#3:411\n14#4:412\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n232#1:408,2\n233#1:410\n233#1:413\n236#1:412\n*E\n"})
    public static final class b extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super Unit>, Object> {
        public Ref.ObjectRef e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6576g;
        public final /* synthetic */ Ref.ObjectRef h;
        public final /* synthetic */ FlowCollector i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Continuation continuation, Ref.ObjectRef objectRef, FlowCollector flowCollector) {
            super(2, continuation);
            this.h = objectRef;
            this.i = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(continuation, this.h, this.i);
            bVar.f6576g = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(ChannelResult<? extends Object> channelResult, Continuation<? super Unit> continuation) {
            return m1176invokeWpGqRn0(channelResult.getHolder(), continuation);
        }

        /* renamed from: invoke-WpGqRn0, reason: not valid java name */
        public final Object m1176invokeWpGqRn0(Object obj, Continuation<? super Unit> continuation) {
            return ((b) create(ChannelResult.m1152boximpl(obj), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v7, types: [T, kotlinx.coroutines.internal.Symbol] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref.ObjectRef objectRef;
            Ref.ObjectRef objectRef2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ?? holder = ((ChannelResult) this.f6576g).getHolder();
                boolean z = holder instanceof ChannelResult.Failed;
                objectRef = this.h;
                if (!z) {
                    objectRef.element = holder;
                }
                if (z) {
                    Throwable thM1156exceptionOrNullimpl = ChannelResult.m1156exceptionOrNullimpl(holder);
                    if (thM1156exceptionOrNullimpl != null) {
                        throw thM1156exceptionOrNullimpl;
                    }
                    Object obj2 = objectRef.element;
                    if (obj2 != null) {
                        if (obj2 == NullSurrogateKt.NULL) {
                            obj2 = null;
                        }
                        this.f6576g = holder;
                        this.e = objectRef;
                        this.f = 1;
                        if (this.i.emit(obj2, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef2 = objectRef;
                    }
                    objectRef.element = NullSurrogateKt.DONE;
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef2 = this.e;
            ResultKt.throwOnFailure(obj);
            objectRef = objectRef2;
            objectRef.element = NullSurrogateKt.DONE;
            return Unit.INSTANCE;
        }
    }
}
