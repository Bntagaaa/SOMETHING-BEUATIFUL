package kotlinx.coroutines.flow;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.channels.ChannelResult;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "downStream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {ErrorMessages.ERROR_NXT_COULD_NOT_FIT_ELEMENT_IN_BYTE}, m = "invokeSuspend", n = {"downStream", "values"}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n+ 2 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n27#2:408\n28#2:414\n54#3,5:409\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n*L\n392#1:408\n392#1:414\n392#1:409,5\n*E\n"})
/* loaded from: classes2.dex */
final class o extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<Object>, Continuation<? super Unit>, Object> {
    public long e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public /* synthetic */ Object f6585g;
    public /* synthetic */ Object h;
    public final /* synthetic */ long i;
    public final /* synthetic */ Flow j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(long j, Flow flow, Continuation continuation) {
        super(3, continuation);
        this.i = j;
        this.j = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, FlowCollector<Object> flowCollector, Continuation<? super Unit> continuation) {
        o oVar = new o(this.i, this.j, continuation);
        oVar.f6585g = coroutineScope;
        oVar.h = flowCollector;
        return oVar.invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0073 -> B:14:0x0076). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.f
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L22
            if (r1 != r2) goto L1a
            long r4 = r9.e
            java.lang.Object r1 = r9.h
            kotlinx.coroutines.channels.ReceiveChannel r1 = (kotlinx.coroutines.channels.ReceiveChannel) r1
            java.lang.Object r6 = r9.f6585g
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.ResultKt.throwOnFailure(r10)
            goto L76
        L1a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L22:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.f6585g
            kotlinx.coroutines.CoroutineScope r10 = (kotlinx.coroutines.CoroutineScope) r10
            java.lang.Object r1 = r9.h
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.time.Duration$Companion r4 = kotlin.time.Duration.INSTANCE
            long r4 = r4.m1096getZEROUwyO8pc()
            long r6 = r9.i
            int r4 = kotlin.time.Duration.m1030compareToLRDsOJo(r6, r4)
            if (r4 <= 0) goto L81
            r4 = 2
            kotlinx.coroutines.flow.Flow r5 = r9.j
            r8 = 0
            kotlinx.coroutines.flow.Flow r4 = kotlinx.coroutines.flow.FlowKt.buffer$default(r5, r8, r3, r4, r3)
            kotlinx.coroutines.channels.ReceiveChannel r10 = kotlinx.coroutines.flow.FlowKt.produceIn(r4, r10)
            r4 = r6
            r6 = r1
            r1 = r10
        L4a:
            kotlinx.coroutines.selects.SelectImplementation r10 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r7 = r9.getF5543a()
            r10.<init>(r7)
            kotlinx.coroutines.selects.SelectClause1 r7 = r1.getOnReceiveCatching()
            kotlinx.coroutines.flow.o$a r8 = new kotlinx.coroutines.flow.o$a
            r8.<init>(r6, r3)
            r10.invoke(r7, r8)
            kotlinx.coroutines.flow.o$b r7 = new kotlinx.coroutines.flow.o$b
            r7.<init>(r4, r3)
            kotlinx.coroutines.selects.OnTimeoutKt.m1205onTimeout8Mi8wO0(r10, r4, r7)
            r9.f6585g = r6
            r9.h = r1
            r9.e = r4
            r9.f = r2
            java.lang.Object r10 = r10.doSelect(r9)
            if (r10 != r0) goto L76
            return r0
        L76:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L4a
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L81:
            kotlinx.coroutines.TimeoutCancellationException r10 = new kotlinx.coroutines.TimeoutCancellationException
            java.lang.String r0 = "Timed out immediately"
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.o.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "T", "value", "Lkotlinx/coroutines/channels/ChannelResult;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1", f = "Delay.kt", i = {0}, l = {395}, m = "invokeSuspend", n = {"$this$onSuccess_u2dWpGqRn0$iv"}, s = {"L$0"})
    @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1009#2,2:408\n1047#2:410\n1048#2:412\n1#3:411\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$1\n*L\n394#1:408,2\n396#1:410\n396#1:412\n*E\n"})
    public static final class a extends SuspendLambda implements Function2<ChannelResult<Object>, Continuation<? super Boolean>, Object> {
        public int e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ FlowCollector f6586g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FlowCollector flowCollector, Continuation continuation) {
            super(2, continuation);
            this.f6586g = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(this.f6586g, continuation);
            aVar.f = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(ChannelResult<Object> channelResult, Continuation<? super Boolean> continuation) {
            return m1181invokeWpGqRn0(channelResult.getHolder(), continuation);
        }

        /* renamed from: invoke-WpGqRn0, reason: not valid java name */
        public final Object m1181invokeWpGqRn0(Object obj, Continuation<? super Boolean> continuation) {
            return ((a) create(ChannelResult.m1152boximpl(obj), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0049  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r4) throws java.lang.Throwable {
            /*
                r3 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r3.e
                r2 = 1
                if (r1 == 0) goto L19
                if (r1 != r2) goto L11
                java.lang.Object r0 = r3.f
                kotlin.ResultKt.throwOnFailure(r4)
                goto L36
            L11:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r0)
                throw r4
            L19:
                kotlin.ResultKt.throwOnFailure(r4)
                java.lang.Object r4 = r3.f
                kotlinx.coroutines.channels.ChannelResult r4 = (kotlinx.coroutines.channels.ChannelResult) r4
                java.lang.Object r4 = r4.getHolder()
                boolean r1 = r4 instanceof kotlinx.coroutines.channels.ChannelResult.Failed
                if (r1 != 0) goto L37
                r3.f = r4
                r3.e = r2
                kotlinx.coroutines.flow.FlowCollector r1 = r3.f6586g
                java.lang.Object r1 = r1.emit(r4, r3)
                if (r1 != r0) goto L35
                return r0
            L35:
                r0 = r4
            L36:
                r4 = r0
            L37:
                boolean r0 = r4 instanceof kotlinx.coroutines.channels.ChannelResult.Closed
                if (r0 == 0) goto L49
                java.lang.Throwable r4 = kotlinx.coroutines.channels.ChannelResult.m1156exceptionOrNullimpl(r4)
                if (r4 != 0) goto L48
                r4 = 0
                java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
                return r4
            L48:
                throw r4
            L49:
                java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.o.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0001\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function1<Continuation<?>, Object> {
        public final /* synthetic */ long e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j, Continuation continuation) {
            super(1, continuation);
            this.e = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new b(this.e, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<?> continuation) {
            return ((b) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            throw new TimeoutCancellationException("Timed out waiting for " + ((Object) Duration.m1066toStringimpl(this.e)));
        }
    }
}
