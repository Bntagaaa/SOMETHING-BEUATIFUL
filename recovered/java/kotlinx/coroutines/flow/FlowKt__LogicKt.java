package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u001aB\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0086@¢\u0006\u0002\u0010\b\u001aB\u0010\t\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0086@¢\u0006\u0002\u0010\b\u001aB\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0086@¢\u0006\u0002\u0010\b¨\u0006\u000b"}, d2 = {"any", "", "T", "Lkotlinx/coroutines/flow/Flow;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "all", "none", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logic.kt\nkotlinx/coroutines/flow/FlowKt__LogicKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,108:1\n124#2,17:109\n124#2,17:126\n*S KotlinDebug\n*F\n+ 1 Logic.kt\nkotlinx/coroutines/flow/FlowKt__LogicKt\n*L\n36#1:109,17\n73#1:126,17\n*E\n"})
/* loaded from: classes2.dex */
final /* synthetic */ class FlowKt__LogicKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LogicKt", f = "Logic.kt", i = {0, 0}, l = {119}, m = "all", n = {"foundCounterExample", "collector$iv"}, s = {"L$0", "L$1"})
    public static final class a<T> extends ContinuationImpl {
        public Ref.BooleanRef d;
        public FlowKt__LogicKt$all$$inlined$collectWhile$1 e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6349g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6349g |= Integer.MIN_VALUE;
            return FlowKt.all(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LogicKt", f = "Logic.kt", i = {0, 0}, l = {119}, m = "any", n = {"found", "collector$iv"}, s = {"L$0", "L$1"})
    public static final class b<T> extends ContinuationImpl {
        public Ref.BooleanRef d;
        public FlowKt__LogicKt$any$$inlined$collectWhile$1 e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public int f6350g;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f = obj;
            this.f6350g |= Integer.MIN_VALUE;
            return FlowKt.any(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LogicKt", f = "Logic.kt", i = {}, l = {107}, m = "none", n = {}, s = {})
    public static final class c<T> extends ContinuationImpl {
        public /* synthetic */ Object d;
        public int e;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.d = obj;
            this.e |= Integer.MIN_VALUE;
            return FlowKt.none(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object any(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LogicKt.b
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LogicKt$b r0 = (kotlinx.coroutines.flow.FlowKt__LogicKt.b) r0
            int r1 = r0.f6350g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6350g = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LogicKt$b r0 = new kotlinx.coroutines.flow.FlowKt__LogicKt$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6350g
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlinx.coroutines.flow.FlowKt__LogicKt$any$$inlined$collectWhile$1 r4 = r0.e
            kotlin.jvm.internal.Ref$BooleanRef r5 = r0.d
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2d
            goto L61
        L2d:
            r6 = move-exception
            goto L57
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$BooleanRef r6 = new kotlin.jvm.internal.Ref$BooleanRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__LogicKt$any$$inlined$collectWhile$1 r2 = new kotlinx.coroutines.flow.FlowKt__LogicKt$any$$inlined$collectWhile$1
            r2.<init>(r5, r6)
            r0.d = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r0.e = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r0.f6350g = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            if (r4 != r1) goto L51
            return r1
        L51:
            r5 = r6
            goto L61
        L53:
            r4 = move-exception
            r5 = r6
            r6 = r4
            r4 = r2
        L57:
            kotlinx.coroutines.flow.internal.FlowExceptions_commonKt.checkOwnership(r6, r4)
            kotlin.coroutines.CoroutineContext r4 = r0.getF5543a()
            kotlinx.coroutines.JobKt.ensureActive(r4)
        L61:
            boolean r4 = r5.element
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LogicKt.any(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object all(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LogicKt.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LogicKt$a r0 = (kotlinx.coroutines.flow.FlowKt__LogicKt.a) r0
            int r1 = r0.f6349g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6349g = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LogicKt$a r0 = new kotlinx.coroutines.flow.FlowKt__LogicKt$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6349g
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlinx.coroutines.flow.FlowKt__LogicKt$all$$inlined$collectWhile$1 r4 = r0.e
            kotlin.jvm.internal.Ref$BooleanRef r5 = r0.d
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2d
            goto L61
        L2d:
            r6 = move-exception
            goto L57
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$BooleanRef r6 = new kotlin.jvm.internal.Ref$BooleanRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__LogicKt$all$$inlined$collectWhile$1 r2 = new kotlinx.coroutines.flow.FlowKt__LogicKt$all$$inlined$collectWhile$1
            r2.<init>(r5, r6)
            r0.d = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r0.e = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r0.f6349g = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            if (r4 != r1) goto L51
            return r1
        L51:
            r5 = r6
            goto L61
        L53:
            r4 = move-exception
            r5 = r6
            r6 = r4
            r4 = r2
        L57:
            kotlinx.coroutines.flow.internal.FlowExceptions_commonKt.checkOwnership(r6, r4)
            kotlin.coroutines.CoroutineContext r4 = r0.getF5543a()
            kotlinx.coroutines.JobKt.ensureActive(r4)
        L61:
            boolean r4 = r5.element
            r4 = r4 ^ r3
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LogicKt.all(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object none(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LogicKt.c
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LogicKt$c r0 = (kotlinx.coroutines.flow.FlowKt__LogicKt.c) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LogicKt$c r0 = new kotlinx.coroutines.flow.FlowKt__LogicKt$c
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3d
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.e = r3
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.any(r4, r5, r0)
            if (r6 != r1) goto L3d
            return r1
        L3d:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r4 = r6.booleanValue()
            r4 = r4 ^ r3
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LogicKt.none(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
