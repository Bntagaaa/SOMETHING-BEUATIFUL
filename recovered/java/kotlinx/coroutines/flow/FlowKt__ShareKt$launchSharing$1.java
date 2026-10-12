package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {}, l = {210, 214, 215, 221}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int e;
    public final /* synthetic */ SharingStarted f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Flow f6391g;
    public final /* synthetic */ MutableSharedFlow h;
    public final /* synthetic */ Object i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharing$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
        super(2, continuation);
        this.f = sharingStarted;
        this.f6391g = flow;
        this.h = mutableSharedFlow;
        this.i = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.f, this.f6391g, this.h, this.i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
    
        if (r5.collect(r7, r9) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
    
        if (r5.collect(r7, r9) != r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007a, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.collectLatest(r10, r3, r9) == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.e
            r2 = 4
            r3 = 3
            r4 = 1
            kotlinx.coroutines.flow.Flow r5 = r9.f6391g
            r6 = 2
            kotlinx.coroutines.flow.MutableSharedFlow r7 = r9.h
            if (r1 == 0) goto L29
            if (r1 == r4) goto L25
            if (r1 == r6) goto L21
            if (r1 == r3) goto L25
            if (r1 != r2) goto L19
            goto L25
        L19:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L21:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L58
        L25:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7d
        L29:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.SharingStarted$Companion r10 = kotlinx.coroutines.flow.SharingStarted.INSTANCE
            kotlinx.coroutines.flow.SharingStarted r1 = r10.getEagerly()
            kotlinx.coroutines.flow.SharingStarted r8 = r9.f
            if (r8 != r1) goto L3f
            r9.e = r4
            java.lang.Object r10 = r5.collect(r7, r9)
            if (r10 != r0) goto L7d
            goto L7c
        L3f:
            kotlinx.coroutines.flow.SharingStarted r10 = r10.getLazily()
            r1 = 0
            if (r8 != r10) goto L61
            kotlinx.coroutines.flow.StateFlow r10 = r7.getSubscriptionCount()
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$a r2 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$a
            r2.<init>(r6, r1)
            r9.e = r6
            java.lang.Object r10 = kotlinx.coroutines.flow.FlowKt.first(r10, r2, r9)
            if (r10 != r0) goto L58
            goto L7c
        L58:
            r9.e = r3
            java.lang.Object r10 = r5.collect(r7, r9)
            if (r10 != r0) goto L7d
            goto L7c
        L61:
            kotlinx.coroutines.flow.StateFlow r10 = r7.getSubscriptionCount()
            kotlinx.coroutines.flow.Flow r10 = r8.command(r10)
            kotlinx.coroutines.flow.Flow r10 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r10)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 r3 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2
            java.lang.Object r4 = r9.i
            r3.<init>(r5, r7, r4, r1)
            r9.e = r2
            java.lang.Object r10 = kotlinx.coroutines.flow.FlowKt.collectLatest(r10, r3, r9)
            if (r10 != r0) goto L7d
        L7c:
            return r0
        L7d:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {
        public /* synthetic */ int e;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(2, continuation);
            aVar.e = ((Number) obj).intValue();
            return aVar;
        }

        public final Object invoke(int i, Continuation<? super Boolean> continuation) {
            return ((a) create(Integer.valueOf(i), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Boolean> continuation) {
            return invoke(num.intValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.e > 0);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/flow/SharingCommand;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", i = {}, l = {223}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Unit>, Object> {
        public int e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Flow f6392g;
        public final /* synthetic */ MutableSharedFlow h;
        public final /* synthetic */ Object i;

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$WhenMappings */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                try {
                    iArr[SharingCommand.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
            super(2, continuation);
            this.f6392g = flow;
            this.h = mutableSharedFlow;
            this.i = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f6392g, this.h, this.i, continuation);
            anonymousClass2.f = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.e;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                int i2 = WhenMappings.$EnumSwitchMapping$0[((SharingCommand) this.f).ordinal()];
                MutableSharedFlow mutableSharedFlow = this.h;
                if (i2 == 1) {
                    this.e = 1;
                    if (this.f6392g.collect(mutableSharedFlow, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i2 != 2) {
                    if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Symbol symbol = SharedFlowKt.NO_VALUE;
                    Object obj2 = this.i;
                    if (obj2 == symbol) {
                        mutableSharedFlow.resetReplayCache();
                    } else {
                        Boxing.boxBoolean(mutableSharedFlow.tryEmit(obj2));
                    }
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
