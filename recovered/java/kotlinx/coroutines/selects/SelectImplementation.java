package kotlinx.coroutines.selects;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004:\u0001=B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028\u0000H\u0091@¢\u0006\u0004\b\t\u0010\nJ2\u0010\u0011\u001a\u00020\u0010*\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012JD\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u00028\u00010\u00142\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0015H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0016JX\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\u0017\"\u0004\b\u0002\u0010\u0013*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00012\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0015H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u001aJ'\u0010\u001e\u001a\u00020\u0010*\f0\u001bR\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00102\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J#\u0010(\u001a\u00020\u00102\n\u0010%\u001a\u0006\u0012\u0002\b\u00030$2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u00020\u00102\b\u0010*\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b+\u0010,J!\u0010/\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u000e2\b\u0010.\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b/\u00100J\u001f\u00102\u001a\u0002012\u0006\u0010-\u001a\u00020\u000e2\b\u0010.\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b2\u00103J\u0019\u0010\u0011\u001a\u00020\u00102\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b\u0011\u00106R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0011\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000e0;8\u0002X\u0082\u0004¨\u0006>"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation;", "R", "Lkotlinx/coroutines/CancelHandler;", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "doSelect", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectClause0;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "", "invoke", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", "param", "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", "", "reregister", "register", "(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V", "Lkotlinx/coroutines/DisposableHandle;", "disposableHandle", "disposeOnCompletion", "(Lkotlinx/coroutines/DisposableHandle;)V", "Lkotlinx/coroutines/internal/Segment;", "segment", "", "index", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "internalResult", "selectInRegistrationPhase", "(Ljava/lang/Object;)V", "clauseObject", "result", "trySelect", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "trySelectDetailed", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "", "cause", "(Ljava/lang/Throwable;)V", "a", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/atomicfu/AtomicRef;", "state", "ClauseData", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,904:1\n1#2:905\n2632#3,3:906\n1863#3,2:918\n1863#3,2:926\n1863#3,2:928\n426#4,9:909\n435#4,2:920\n149#5,4:922\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n529#1:906,3\n593#1:918,2\n749#1:926,2\n774#1:928,2\n569#1:909,9\n569#1:920,2\n734#1:922,4\n*E\n"})
/* loaded from: classes2.dex */
public class SelectImplementation<R> implements CancelHandler, SelectBuilder<R>, SelectInstanceInternal<R> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final CoroutineContext context;
    public Object c;
    private volatile /* synthetic */ Object state$volatile = SelectKt.f6695b;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f6691b = new ArrayList(2);
    public int d = -1;
    public Object e = SelectKt.e;

    public static final boolean access$getInRegistrationPhase(SelectImplementation selectImplementation) {
        selectImplementation.getClass();
        Object obj = f.get(selectImplementation);
        return obj == SelectKt.f6695b || (obj instanceof List);
    }

    public static final boolean access$isCancelled(SelectImplementation selectImplementation) {
        selectImplementation.getClass();
        return f.get(selectImplementation) == SelectKt.d;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processResultAndInvokeBlockRecoveringException(kotlinx.coroutines.selects.SelectImplementation r4, kotlinx.coroutines.selects.SelectImplementation.ClauseData r5, java.lang.Object r6, kotlin.coroutines.Continuation r7) {
        /*
            r4.getClass()
            boolean r0 = r7 instanceof kotlinx.coroutines.selects.d
            if (r0 == 0) goto L16
            r0 = r7
            kotlinx.coroutines.selects.d r0 = (kotlinx.coroutines.selects.d) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f = r1
            goto L1b
        L16:
            kotlinx.coroutines.selects.d r0 = new kotlinx.coroutines.selects.d
            r0.<init>(r4, r7)
        L1b:
            java.lang.Object r4 = r0.d
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.f
            r2 = 1
            if (r1 == 0) goto L34
            if (r1 != r2) goto L2c
            kotlin.ResultKt.throwOnFailure(r4)
            return r4
        L2c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L34:
            kotlin.ResultKt.throwOnFailure(r4)
            java.lang.Object r4 = r5.processResult(r6)
            r0.f = r2
            java.lang.Object r4 = r5.invokeBlock(r4, r0)
            if (r4 != r7) goto L44
            return r7
        L44:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.access$processResultAndInvokeBlockRecoveringException(kotlinx.coroutines.selects.SelectImplementation, kotlinx.coroutines.selects.SelectImplementation$ClauseData, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(@NotNull SelectClause2<? super P, ? extends Q> selectClause2, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        SelectBuilder.DefaultImpls.invoke(this, selectClause2, function2);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    @Deprecated(level = DeprecationLevel.ERROR, message = "Replaced with the same extension function", replaceWith = @ReplaceWith(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @LowPriorityInOverloadResolution
    @ExperimentalCoroutinesApi
    public void onTimeout(long j, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        SelectBuilder.DefaultImpls.onTimeout(this, j, function1);
    }

    public SelectImplementation(@NotNull CoroutineContext coroutineContext) {
        this.context = coroutineContext;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    @NotNull
    public CoroutineContext getContext() {
        return this.context;
    }

    @PublishedApi
    @Nullable
    public Object doSelect(@NotNull Continuation<? super R> continuation) {
        if (f.get(this) instanceof ClauseData) {
            return a(continuation);
        }
        return b(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.selects.c
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.selects.c r0 = (kotlinx.coroutines.selects.c) r0
            int r1 = r0.f6703g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6703g = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.c r0 = new kotlinx.coroutines.selects.c
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6703g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            return r6
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            kotlinx.coroutines.selects.SelectImplementation r2 = r0.d
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.d = r5
            r0.f6703g = r4
            java.lang.Object r6 = r5.e(r0)
            if (r6 != r1) goto L48
            goto L54
        L48:
            r2 = r5
        L49:
            r6 = 0
            r0.d = r6
            r0.f6703g = r3
            java.lang.Object r6 = r2.a(r0)
            if (r6 != r1) goto L55
        L54:
            return r1
        L55:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void invoke(@NotNull SelectClause0 selectClause0, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        register$default(this, new ClauseData(selectClause0.getClauseObject(), selectClause0.getRegFunc(), selectClause0.getProcessResFunc(), SelectKt.getPARAM_CLAUSE_0(), function1, selectClause0.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <Q> void invoke(@NotNull SelectClause1<? extends Q> selectClause1, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        register$default(this, new ClauseData(selectClause1.getClauseObject(), selectClause1.getRegFunc(), selectClause1.getProcessResFunc(), null, function2, selectClause1.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(@NotNull SelectClause2<? super P, ? extends Q> selectClause2, P p, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        register$default(this, new ClauseData(selectClause2.getClauseObject(), selectClause2.getRegFunc(), selectClause2.getProcessResFunc(), p, function2, selectClause2.getOnCancellationConstructor()), false, 1, null);
    }

    public static /* synthetic */ void register$default(SelectImplementation selectImplementation, ClauseData clauseData, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        selectImplementation.register(clauseData, z);
    }

    @JvmName(name = "register")
    public final void register(@NotNull SelectImplementation<R>.ClauseData clauseData, boolean z) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        if (atomicReferenceFieldUpdater.get(this) instanceof ClauseData) {
            return;
        }
        if (!z) {
            Object obj = clauseData.clauseObject;
            ArrayList arrayList = this.f6691b;
            Intrinsics.checkNotNull(arrayList);
            if (!_COROUTINE.a.x(arrayList) || !arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((ClauseData) it.next()).clauseObject == obj) {
                        throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
                    }
                }
            }
        }
        if (clauseData.tryRegisterAsWaiter(this)) {
            if (!z) {
                ArrayList arrayList2 = this.f6691b;
                Intrinsics.checkNotNull(arrayList2);
                arrayList2.add(clauseData);
            }
            clauseData.disposableHandleOrSegment = this.c;
            clauseData.indexInSegment = this.d;
            this.c = null;
            this.d = -1;
            return;
        }
        atomicReferenceFieldUpdater.set(this, clauseData);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void disposeOnCompletion(@NotNull DisposableHandle disposableHandle) {
        this.c = disposableHandle;
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
        this.c = segment;
        this.d = index;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void selectInRegistrationPhase(@Nullable Object internalResult) {
        this.e = internalResult;
    }

    public static final void access$reregisterClause(SelectImplementation selectImplementation, Object obj) {
        ClauseData clauseDataC = selectImplementation.c(obj);
        Intrinsics.checkNotNull(clauseDataC);
        clauseDataC.disposableHandleOrSegment = null;
        clauseDataC.indexInSegment = -1;
        selectImplementation.register(clauseDataC, true);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean trySelect(@NotNull Object clauseObject, @Nullable Object result) {
        return d(clauseObject, result) == 0;
    }

    @NotNull
    public final TrySelectDetailedResult trySelectDetailed(@NotNull Object clauseObject, @Nullable Object result) {
        return SelectKt.access$TrySelectDetailedResult(d(clauseObject, result));
    }

    public final int d(Object obj, Object obj2) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof CancellableContinuation)) {
                if (Intrinsics.areEqual(obj3, SelectKt.c) || (obj3 instanceof ClauseData)) {
                    return 3;
                }
                if (Intrinsics.areEqual(obj3, SelectKt.d)) {
                    return 2;
                }
                if (Intrinsics.areEqual(obj3, SelectKt.f6695b)) {
                    List listListOf = CollectionsKt.listOf(obj);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, listListOf)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj3) {
                            break;
                        }
                    }
                    return 1;
                }
                if (!(obj3 instanceof List)) {
                    throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                }
                List listPlus = CollectionsKt.plus((Collection<? extends Object>) obj3, obj);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, listPlus)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj3) {
                        break;
                    }
                }
                return 1;
            }
            ClauseData clauseDataC = c(obj);
            if (clauseDataC != null) {
                Function3<Throwable, Object, CoroutineContext, Unit> function3CreateOnCancellationAction = clauseDataC.createOnCancellationAction(this, obj2);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, clauseDataC)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj3) {
                        break;
                    }
                }
                this.e = obj2;
                if (SelectKt.access$tryResume((CancellableContinuation) obj3, function3CreateOnCancellationAction)) {
                    return 0;
                }
                this.e = SelectKt.e;
                return 2;
            }
            continue;
        }
    }

    public final ClauseData c(Object obj) {
        ArrayList arrayList = this.f6691b;
        Object obj2 = null;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ClauseData) next).clauseObject == obj) {
                obj2 = next;
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    public final Object a(Continuation continuation) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        Object obj = atomicReferenceFieldUpdater.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        ClauseData clauseData = (ClauseData) obj;
        Object obj2 = this.e;
        ArrayList arrayList = this.f6691b;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ClauseData clauseData2 = (ClauseData) it.next();
                if (clauseData2 != clauseData) {
                    clauseData2.dispose();
                }
            }
            atomicReferenceFieldUpdater.set(this, SelectKt.c);
            this.e = SelectKt.e;
            this.f6691b = null;
        }
        return clauseData.invokeBlock(clauseData.processResult(obj2), continuation);
    }

    @Override // kotlinx.coroutines.CancelHandler
    public void invoke(@Nullable Throwable cause) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.c) {
                return;
            }
            Symbol symbol = SelectKt.d;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, symbol)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            ArrayList arrayList = this.f6691b;
            if (arrayList == null) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ClauseData) it.next()).dispose();
            }
            this.e = SelectKt.e;
            this.f6691b = null;
            return;
        }
    }

    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0004\u0018\u00002\u00020\u0001BÆ\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012U\u0010\u000b\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0003j\u0002`\n\u0012U\u0010\u000e\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003j\u0002`\r\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012u\u0010\u0014\u001aq\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0010\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0003\u0018\u00010\u0003j\u0004\u0018\u0001`\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0019\u001a\u00020\u00182\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u001f\u001a\u00028\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0086@¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\t¢\u0006\u0004\b!\u0010\"J?\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t\u0018\u00010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b#\u0010$R\u0014\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010%R\u0083\u0001\u0010\u0014\u001aq\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0010\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0003\u0018\u00010\u0003j\u0004\u0018\u0001`\u00138\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010&R\u0018\u0010'\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0016\u0010)\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", "", "clauseObject", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "param", "", "Lkotlinx/coroutines/selects/RegistrationFunction;", "regFunc", "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "processResFunc", "block", "internalResult", "", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "onCancellationConstructor", "<init>", "(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "Lkotlinx/coroutines/selects/SelectImplementation;", "", "tryRegisterAsWaiter", "(Lkotlinx/coroutines/selects/SelectImplementation;)Z", "result", "processResult", "(Ljava/lang/Object;)Ljava/lang/Object;", "argument", "invokeBlock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispose", "()V", "createOnCancellationAction", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;", "Ljava/lang/Object;", "Lkotlin/jvm/functions/Function3;", "disposableHandleOrSegment", "", "indexInSegment", "I", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,904:1\n1#2:905\n*E\n"})
    public final class ClauseData {

        /* renamed from: a, reason: collision with root package name */
        public final Function3 f6692a;

        /* renamed from: b, reason: collision with root package name */
        public final Function3 f6693b;
        public final Object c;

        @JvmField
        @NotNull
        public final Object clauseObject;
        public final Object d;

        @JvmField
        @Nullable
        public Object disposableHandleOrSegment;

        @JvmField
        public int indexInSegment = -1;

        @JvmField
        @Nullable
        public final Function3<SelectInstance<?>, Object, Object, Function3<Throwable, Object, CoroutineContext, Unit>> onCancellationConstructor;

        /* JADX WARN: Multi-variable type inference failed */
        public ClauseData(@NotNull Object obj, @NotNull Function3<Object, ? super SelectInstance<?>, Object, Unit> function3, @NotNull Function3<Object, Object, Object, ? extends Object> function32, @Nullable Object obj2, @NotNull Object obj3, @Nullable Function3<? super SelectInstance<?>, Object, Object, ? extends Function3<? super Throwable, Object, ? super CoroutineContext, Unit>> function33) {
            this.clauseObject = obj;
            this.f6692a = function3;
            this.f6693b = function32;
            this.c = obj2;
            this.d = obj3;
            this.onCancellationConstructor = function33;
        }

        public final boolean tryRegisterAsWaiter(@NotNull SelectImplementation<R> select) {
            this.f6692a.invoke(this.clauseObject, select, this.c);
            return select.e == SelectKt.e;
        }

        @Nullable
        public final Object processResult(@Nullable Object result) {
            return this.f6693b.invoke(this.clauseObject, this.c, result);
        }

        @Nullable
        public final Object invokeBlock(@Nullable Object obj, @NotNull Continuation<? super R> continuation) {
            Object obj2 = this.c;
            Symbol param_clause_0 = SelectKt.getPARAM_CLAUSE_0();
            Object obj3 = this.d;
            if (obj2 == param_clause_0) {
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj3).invoke(continuation);
            }
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj3).invoke(obj, continuation);
        }

        public final void dispose() {
            Object obj = this.disposableHandleOrSegment;
            if (obj instanceof Segment) {
                ((Segment) obj).onCancellation(this.indexInSegment, null, SelectImplementation.this.getContext());
                return;
            }
            DisposableHandle disposableHandle = obj instanceof DisposableHandle ? (DisposableHandle) obj : null;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }

        @Nullable
        public final Function3<Throwable, Object, CoroutineContext, Unit> createOnCancellationAction(@NotNull SelectInstance<?> select, @Nullable Object internalResult) {
            Function3<SelectInstance<?>, Object, Object, Function3<Throwable, Object, CoroutineContext, Unit>> function3 = this.onCancellationConstructor;
            if (function3 != null) {
                return function3.invoke(select, this.c, internalResult);
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0070, code lost:
    
        r0 = r0.getResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
    
        kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0081, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0086, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            kotlinx.coroutines.CancellableContinuationImpl r0 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r7)
            r2 = 1
            r0.<init>(r1, r2)
            r0.initCancellability()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = access$getState$volatile$FU()
        L11:
            java.lang.Object r2 = r1.get(r6)
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.selects.SelectKt.access$getSTATE_REG$p()
            if (r2 != r3) goto L30
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = access$getState$volatile$FU()
        L1f:
            boolean r4 = r3.compareAndSet(r6, r2, r0)
            if (r4 == 0) goto L29
            kotlinx.coroutines.CancellableContinuationKt.invokeOnCancellation(r0, r6)
            goto L70
        L29:
            java.lang.Object r4 = r3.get(r6)
            if (r4 == r2) goto L1f
            goto L11
        L30:
            boolean r3 = r2 instanceof java.util.List
            if (r3 == 0) goto L5d
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = access$getState$volatile$FU()
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.selects.SelectKt.access$getSTATE_REG$p()
        L3c:
            boolean r5 = r3.compareAndSet(r6, r2, r4)
            if (r5 == 0) goto L56
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
        L48:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L11
            java.lang.Object r3 = r2.next()
            access$reregisterClause(r6, r3)
            goto L48
        L56:
            java.lang.Object r5 = r3.get(r6)
            if (r5 == r2) goto L3c
            goto L11
        L5d:
            boolean r1 = r2 instanceof kotlinx.coroutines.selects.SelectImplementation.ClauseData
            if (r1 == 0) goto L87
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.selects.SelectImplementation$ClauseData r2 = (kotlinx.coroutines.selects.SelectImplementation.ClauseData) r2
            java.lang.Object r3 = access$getInternalResult$p(r6)
            kotlin.jvm.functions.Function3 r2 = r2.createOnCancellationAction(r6, r3)
            r0.resume(r1, r2)
        L70:
            java.lang.Object r0 = r0.getResult()
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r1) goto L7d
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r7)
        L7d:
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r7) goto L84
            return r0
        L84:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L87:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "unexpected state: "
            r0.<init>(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.e(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
