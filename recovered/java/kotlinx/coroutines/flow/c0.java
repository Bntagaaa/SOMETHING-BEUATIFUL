package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/flow/c0;", "Lkotlinx/coroutines/flow/SharingStarted;", "", "stopTimeout", "replayExpiration", "<init>", "(JJ)V", "Lkotlinx/coroutines/flow/StateFlow;", "", "subscriptionCount", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/SharingCommand;", "command", "(Lkotlinx/coroutines/flow/StateFlow;)Lkotlinx/coroutines/flow/Flow;", "", "toString", "()Ljava/lang/String;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharingStarted.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedWhileSubscribed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,205:1\n1#2:206\n*E\n"})
/* loaded from: classes2.dex */
final class c0 implements SharingStarted {

    /* renamed from: a, reason: collision with root package name */
    public final long f6508a;

    /* renamed from: b, reason: collision with root package name */
    public final long f6509b;

    public c0(long j, long j2) {
        this.f6508a = j;
        this.f6509b = j2;
        if (j < 0) {
            throw new IllegalArgumentException(("stopTimeout(" + j + " ms) cannot be negative").toString());
        }
        if (j2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j2 + " ms) cannot be negative").toString());
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/flow/SharingCommand;", "count", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {174, 176, 178, 179, 181}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
    public static final class a extends SuspendLambda implements Function3<FlowCollector<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {
        public int e;
        public /* synthetic */ FlowCollector f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ int f6510g;

        public a(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super SharingCommand> flowCollector, Integer num, Continuation<? super Unit> continuation) {
            return invoke(flowCollector, num.intValue(), continuation);
        }

        public final Object invoke(FlowCollector<? super SharingCommand> flowCollector, int i, Continuation<? super Unit> continuation) {
            a aVar = c0.this.new a(continuation);
            aVar.f = flowCollector;
            aVar.f6510g = i;
            return aVar.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
        
            if (r1.emit(r11, r10) == r0) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        
            if (r1.emit(r11, r10) != r0) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0081 A[PHI: r1
          0x0081: PHI (r1v4 kotlinx.coroutines.flow.FlowCollector) = 
          (r1v2 kotlinx.coroutines.flow.FlowCollector)
          (r1v3 kotlinx.coroutines.flow.FlowCollector)
          (r1v7 kotlinx.coroutines.flow.FlowCollector)
         binds: [B:25:0x0063, B:30:0x007e, B:12:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.e
                kotlinx.coroutines.flow.c0 r2 = kotlinx.coroutines.flow.c0.this
                r3 = 5
                r4 = 4
                r5 = 3
                r6 = 2
                r7 = 1
                if (r1 == 0) goto L38
                if (r1 == r7) goto L34
                if (r1 == r6) goto L2e
                if (r1 == r5) goto L28
                if (r1 == r4) goto L22
                if (r1 != r3) goto L1a
                goto L34
            L1a:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L22:
                kotlinx.coroutines.flow.FlowCollector r1 = r10.f
                kotlin.ResultKt.throwOnFailure(r11)
                goto L81
            L28:
                kotlinx.coroutines.flow.FlowCollector r1 = r10.f
                kotlin.ResultKt.throwOnFailure(r11)
                goto L72
            L2e:
                kotlinx.coroutines.flow.FlowCollector r1 = r10.f
                kotlin.ResultKt.throwOnFailure(r11)
                goto L5b
            L34:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L8f
            L38:
                kotlin.ResultKt.throwOnFailure(r11)
                kotlinx.coroutines.flow.FlowCollector r1 = r10.f
                int r11 = r10.f6510g
                if (r11 <= 0) goto L4c
                kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.START
                r10.e = r7
                java.lang.Object r11 = r1.emit(r11, r10)
                if (r11 != r0) goto L8f
                goto L8e
            L4c:
                long r7 = kotlinx.coroutines.flow.c0.access$getStopTimeout$p(r2)
                r10.f = r1
                r10.e = r6
                java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r7, r10)
                if (r11 != r0) goto L5b
                goto L8e
            L5b:
                long r6 = kotlinx.coroutines.flow.c0.access$getReplayExpiration$p(r2)
                r8 = 0
                int r11 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r11 <= 0) goto L81
                kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP
                r10.f = r1
                r10.e = r5
                java.lang.Object r11 = r1.emit(r11, r10)
                if (r11 != r0) goto L72
                goto L8e
            L72:
                long r5 = kotlinx.coroutines.flow.c0.access$getReplayExpiration$p(r2)
                r10.f = r1
                r10.e = r4
                java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r5, r10)
                if (r11 != r0) goto L81
                goto L8e
            L81:
                kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
                r2 = 0
                r10.f = r2
                r10.e = r3
                java.lang.Object r11 = r1.emit(r11, r10)
                if (r11 != r0) goto L8f
            L8e:
                return r0
            L8f:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.c0.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    @NotNull
    public Flow<SharingCommand> command(@NotNull StateFlow<Integer> subscriptionCount) {
        return FlowKt.distinctUntilChanged(FlowKt.dropWhile(FlowKt.transformLatest(subscriptionCount, new a(null)), new b(2, null)));
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/flow/SharingCommand;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Boolean>, Object> {
        public /* synthetic */ Object e;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(2, continuation);
            bVar.e = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation<? super Boolean> continuation) {
            return ((b) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((SharingCommand) this.e) != SharingCommand.START);
        }
    }

    @NotNull
    public String toString() {
        List listCreateListBuilder = CollectionsKt.createListBuilder(2);
        long j = this.f6508a;
        if (j > 0) {
            listCreateListBuilder.add("stopTimeout=" + j + "ms");
        }
        long j2 = this.f6509b;
        if (j2 < Long.MAX_VALUE) {
            listCreateListBuilder.add("replayExpiration=" + j2 + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt.build(listCreateListBuilder), null, null, null, 0, null, null, 63, null) + ')';
    }

    public boolean equals(@Nullable Object other) {
        if (!(other instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) other;
        return this.f6508a == c0Var.f6508a && this.f6509b == c0Var.f6509b;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        long j = this.f6508a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.f6509b;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }
}
