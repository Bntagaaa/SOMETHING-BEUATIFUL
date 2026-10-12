package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectClause0Impl;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001\u008f\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0017\u001a\u00060\u0010j\u0002`\u0011*\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0004¢\u0006\u0004\b\u0017\u0010\u0018J6\u0010 \u001a\u00020\u001f2'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\t0\u0019j\u0002`\u001d¢\u0006\u0004\b \u0010!JF\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\t0\u0019j\u0002`\u001d¢\u0006\u0004\b \u0010$J\u001f\u0010)\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b'\u0010(J\u0010\u0010*\u001a\u00020\tH\u0086@¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\t2\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b,\u0010-J\u001f\u0010/\u001a\u00020\t2\u000e\u0010\u001c\u001a\n\u0018\u00010\u0010j\u0004\u0018\u0001`\u0011H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0015H\u0014¢\u0006\u0004\b1\u00102J\u0019\u0010/\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0017¢\u0006\u0004\b/\u00103J\u0017\u00104\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b4\u00105J\u0015\u00107\u001a\u00020\t2\u0006\u00106\u001a\u00020\u0003¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b9\u00103J\u0017\u0010:\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b:\u00103J\u0019\u0010>\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\b<\u0010=J(\u0010B\u001a\u00020?2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0080\b¢\u0006\u0004\b@\u0010AJ\u0013\u0010C\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\bC\u0010\u0013J\u0019\u0010F\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\bE\u0010=J\u001b\u0010I\u001a\u0004\u0018\u00010;2\b\u0010D\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\bG\u0010HJ\u0015\u0010L\u001a\u00020K2\u0006\u0010J\u001a\u00020\u0002¢\u0006\u0004\bL\u0010MJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u0014H\u0010¢\u0006\u0004\bO\u00105J\u0019\u0010\"\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\"\u00105J\u0017\u0010Q\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u0014H\u0014¢\u0006\u0004\bQ\u00103J\u0019\u0010S\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010;H\u0014¢\u0006\u0004\bS\u0010TJ\u0019\u0010U\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010;H\u0014¢\u0006\u0004\bU\u0010TJ\u000f\u0010V\u001a\u00020\u0015H\u0016¢\u0006\u0004\bV\u00102J\u000f\u0010W\u001a\u00020\u0015H\u0007¢\u0006\u0004\bW\u00102J\u000f\u0010Y\u001a\u00020\u0015H\u0010¢\u0006\u0004\bX\u00102J\u000f\u0010Z\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\bZ\u0010[J\u0011\u0010^\u001a\u0004\u0018\u00010;H\u0000¢\u0006\u0004\b\\\u0010]J\u0012\u0010_\u001a\u0004\u0018\u00010;H\u0084@¢\u0006\u0004\b_\u0010+R\u0015\u0010c\u001a\u0006\u0012\u0002\b\u00030`8F¢\u0006\u0006\u001a\u0004\ba\u0010bR(\u0010i\u001a\u0004\u0018\u00010K2\b\u0010d\u001a\u0004\u0018\u00010K8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0016\u0010\b\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bj\u0010kR\u0016\u0010R\u001a\u0004\u0018\u00010;8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bl\u0010]R\u0014\u0010m\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bm\u0010\rR\u0011\u0010n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bn\u0010\rR\u0011\u0010o\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bo\u0010\rR\u0016\u0010q\u001a\u0004\u0018\u00010\u00148DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bp\u0010[R\u0014\u0010s\u001a\u00020\u00048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\br\u0010\rR\u0017\u0010x\u001a\u00020t8F¢\u0006\f\u0012\u0004\bw\u0010\u000f\u001a\u0004\bu\u0010vR\u0014\u0010z\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\by\u0010\rR\u0017\u0010~\u001a\b\u0012\u0004\u0012\u00020\u00010{8F¢\u0006\u0006\u001a\u0004\b|\u0010}R\u0014\u0010\u007f\u001a\u00020\u00048TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010\rR\u0016\u0010\u0081\u0001\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010\rR\u0013\u0010\u0082\u0001\u001a\u00020\u00048F¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\rR#\u0010\u0087\u0001\u001a\u0007\u0012\u0002\b\u00030\u0083\u00018DX\u0084\u0004¢\u0006\u000f\u0012\u0005\b\u0086\u0001\u0010\u000f\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0015\u0010\u0089\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010;0\u0088\u00018\u0002X\u0082\u0004R\u0015\u0010\u008a\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010K0\u0088\u00018\u0002X\u0082\u0004¨\u0006\u0090\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "", "active", "<init>", "(Z)V", "parent", "", "initParentJob", "(Lkotlinx/coroutines/Job;)V", "start", "()Z", "onStart", "()V", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "", "", "message", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/JobNode;", "node", "invokeOnCompletionInternal$kotlinx_coroutines_core", "(ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletionInternal", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/JobNode;)V", "removeNode", "cancel", "(Ljava/util/concurrent/CancellationException;)V", "cancellationExceptionMessage", "()Ljava/lang/String;", "(Ljava/lang/Throwable;)Z", "cancelInternal", "(Ljava/lang/Throwable;)V", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "childCancelled", "cancelCoroutine", "", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "getChildJobCancellationCause", "proposedUpdate", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "makeCompletingOnce", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "exception", "handleOnCompletionException$kotlinx_coroutines_core", "handleOnCompletionException", "handleJobException", "state", "onCompletionInternal", "(Ljava/lang/Object;)V", "afterCompletion", "toString", "toDebugString", "nameString$kotlinx_coroutines_core", "nameString", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "awaitInternal", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "value", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", "getParent", "()Lkotlinx/coroutines/Job;", "getState$kotlinx_coroutines_core", "isActive", "isCompleted", "isCancelled", "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin$annotations", "onJoin", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "children", "isScopedCoroutine", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isCompletedExceptionally", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal$annotations", "onAwaitInternal", "Lkotlinx/atomicfu/AtomicRef;", "_state", "_parentHandle", "e", "c", "b", "a", "d", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 9 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1583:1\n732#1,3:1587\n361#1,2:1597\n363#1,5:1602\n368#1,5:1608\n373#1,2:1616\n361#1,2:1618\n363#1,5:1623\n368#1,5:1629\n373#1,2:1637\n169#1,2:1645\n734#1:1647\n536#1:1648\n169#1,2:1649\n537#1,15:1651\n169#1,2:1666\n169#1,2:1668\n169#1,2:1681\n732#1,3:1683\n732#1,3:1686\n169#1,2:1689\n732#1,3:1691\n169#1,2:1694\n169#1,2:1698\n169#1,2:1700\n536#1:1704\n169#1,2:1705\n537#1,15:1707\n1#2:1584\n1#2:1607\n1#2:1628\n29#3:1585\n29#3:1696\n29#3:1702\n16#4:1586\n16#4:1697\n16#4:1703\n295#5,2:1590\n295#5,2:1592\n23#6:1594\n159#7:1595\n159#7:1596\n149#7,4:1722\n273#8,3:1599\n276#8,3:1613\n273#8,3:1620\n276#8,3:1634\n273#8,6:1639\n426#9,11:1670\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n241#1:1587,3\n324#1:1597,2\n324#1:1602,5\n324#1:1608,5\n324#1:1616,2\n357#1:1618,2\n357#1:1623,5\n357#1:1629,5\n357#1:1637,2\n377#1:1645,2\n422#1:1647\n468#1:1648\n468#1:1649,2\n468#1:1651,15\n536#1:1666,2\n579#1:1668,2\n621#1:1681,2\n648#1:1683,3\n657#1:1686,3\n721#1:1689,2\n750#1:1691,3\n763#1:1694,2\n836#1:1698,2\n858#1:1700,2\n1023#1:1704\n1023#1:1705,2\n1023#1:1707,15\n324#1:1607\n357#1:1628\n204#1:1585\n766#1:1696\n911#1:1702\n204#1:1586\n766#1:1697\n911#1:1703\n252#1:1590,2\n256#1:1592,2\n264#1:1594\n270#1:1595\n272#1:1596\n1327#1:1722,4\n324#1:1599,3\n324#1:1613,3\n357#1:1620,3\n357#1:1634,3\n362#1:1639,6\n585#1:1670,11\n*E\n"})
/* loaded from: classes2.dex */
public class JobSupport implements Job, ChildJob, ParentJob {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6137a = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6138b = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public static /* synthetic */ void getOnAwaitInternal$annotations() {
    }

    public static /* synthetic */ void getOnJoin$annotations() {
    }

    public void afterCompletion(@Nullable Object state) {
    }

    /* renamed from: getHandlesException$kotlinx_coroutines_core */
    public boolean getHandlesException() {
        return true;
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    public boolean handleJobException(@NotNull Throwable exception) {
        return false;
    }

    public boolean isScopedCoroutine() {
        return false;
    }

    public void onCancelling(@Nullable Throwable cause) {
    }

    public void onCompletionInternal(@Nullable Object state) {
    }

    public void onStart() {
    }

    public static final void access$continueCompleting(JobSupport jobSupport, c cVar, kotlinx.coroutines.i iVar, Object obj) {
        jobSupport.getClass();
        kotlinx.coroutines.i iVarI = i(iVar);
        if (iVarI == null || !jobSupport.p(cVar, iVarI, obj)) {
            cVar.getList().close(2);
            kotlinx.coroutines.i iVarI2 = i(iVar);
            if (iVarI2 == null || !jobSupport.p(cVar, iVarI2, obj)) {
                jobSupport.afterCompletion(jobSupport.e(cVar, obj));
            }
        }
    }

    public static final Object access$onAwaitInternalProcessResFunc(JobSupport jobSupport, Object obj, Object obj2) throws Throwable {
        jobSupport.getClass();
        if (obj2 instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) obj2).cause;
        }
        return obj2;
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        cancel((CancellationException) null);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) Job.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) Job.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return Job.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return Job.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public Job plus(@NotNull Job job) {
        return Job.DefaultImpls.plus((Job) this, job);
    }

    public JobSupport(boolean z) {
        this._state$volatile = z ? JobSupportKt.f : JobSupportKt.e;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.Key<?> getKey() {
        return Job.INSTANCE;
    }

    @Nullable
    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        return (ChildHandle) f6138b.get(this);
    }

    public final void setParentHandle$kotlinx_coroutines_core(@Nullable ChildHandle childHandle) {
        f6138b.set(this, childHandle);
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    public Job getParent() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    public final void initParentJob(@Nullable Job parent) {
        if (parent == null) {
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
            return;
        }
        parent.start();
        ChildHandle childHandleAttachChild = parent.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(childHandleAttachChild);
        if (isCompleted()) {
            childHandleAttachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core() {
        return f6137a.get(this);
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).getIsActive();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return true;
        }
        return (state$kotlinx_coroutines_core instanceof c) && ((c) state$kotlinx_coroutines_core).isCancelling();
    }

    public final Object e(c cVar, Object obj) throws Throwable {
        boolean zIsCancelling;
        Throwable thF;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        synchronized (cVar) {
            zIsCancelling = cVar.isCancelling();
            List<Throwable> listSealLocked = cVar.sealLocked(th);
            thF = f(cVar, listSealLocked);
            if (thF != null && listSealLocked.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(listSealLocked.size()));
                for (Throwable th2 : listSealLocked) {
                    if (th2 != thF && th2 != thF && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        kotlin.ExceptionsKt.addSuppressed(thF, th2);
                    }
                }
            }
        }
        if (thF != null && thF != th) {
            obj = new CompletedExceptionally(thF, false, 2, null);
        }
        if (thF != null && (b(thF) || handleJobException(thF))) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((CompletedExceptionally) obj).makeHandled();
        }
        if (!zIsCancelling) {
            onCancelling(thF);
        }
        onCompletionInternal(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6137a;
        Object objBoxIncomplete = JobSupportKt.boxIncomplete(obj);
        while (!atomicReferenceFieldUpdater.compareAndSet(this, cVar, objBoxIncomplete) && atomicReferenceFieldUpdater.get(this) == cVar) {
        }
        c(cVar, obj);
        return obj;
    }

    public final Throwable f(c cVar, List list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (cVar.isCancelling()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        List list2 = list;
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                Throwable th3 = (Throwable) next2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = next2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public final void c(Incomplete incomplete, Object obj) throws Throwable {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
        CompletionHandlerException completionHandlerException = null;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).invoke(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList list = incomplete.getList();
        if (list != null) {
            list.close(1);
            Object next = list.getNext();
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            for (LockFreeLinkedListNode nextNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(nextNode, list); nextNode = nextNode.getNextNode()) {
                if (nextNode instanceof JobNode) {
                    try {
                        ((JobNode) nextNode).invoke(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            kotlin.ExceptionsKt.addSuppressed(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + nextNode + " for " + this, th3);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
            }
        }
    }

    public final void j(NodeList nodeList, Throwable th) throws Throwable {
        onCancelling(th);
        nodeList.close(4);
        Object next = nodeList.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode nextNode = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(nextNode, nodeList); nextNode = nextNode.getNextNode()) {
            if ((nextNode instanceof JobNode) && ((JobNode) nextNode).getOnCancelling()) {
                try {
                    ((JobNode) nextNode).invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + nextNode + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        b(th);
    }

    public final boolean b(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        return (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == NonDisposableHandle.INSTANCE) ? z : parentHandle$kotlinx_coroutines_core.childCancelled(th) || z;
    }

    public final int m(Object obj) {
        boolean z = obj instanceof r;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6137a;
        if (z) {
            if (((r) obj).getIsActive()) {
                return 0;
            }
            r rVar = JobSupportKt.f;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, rVar)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof s)) {
            return 0;
        }
        NodeList list = ((s) obj).getList();
        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, list)) {
            if (atomicReferenceFieldUpdater.get(this) != obj) {
                return -1;
            }
        }
        onStart();
        return 1;
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof c) {
            Throwable rootCause = ((c) state$kotlinx_coroutines_core).getRootCause();
            if (rootCause != null) {
                CancellationException cancellationException = toCancellationException(rootCause, DebugStringsKt.getClassSimpleName(this) + " is cancelling");
                if (cancellationException != null) {
                    return cancellationException;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return toCancellationException$default(this, ((CompletedExceptionally) state$kotlinx_coroutines_core).cause, null, 1, null);
        }
        return new JobCancellationException(DebugStringsKt.getClassSimpleName(this) + " has completed normally", null, this);
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        return jobSupport.toCancellationException(th, str);
    }

    @NotNull
    public final CancellationException toCancellationException(@NotNull Throwable th, @Nullable String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    @Nullable
    public final Throwable getCompletionCause() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof c) {
            Throwable rootCause = ((c) state$kotlinx_coroutines_core).getRootCause();
            if (rootCause != null) {
                return rootCause;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return null;
    }

    public final boolean getCompletionCauseHandled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof CompletedExceptionally) && ((CompletedExceptionally) state$kotlinx_coroutines_core).getHandled();
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final DisposableHandle invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> handler) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new v(handler));
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final DisposableHandle invokeOnCompletion(boolean onCancelling, boolean invokeImmediately, @NotNull Function1<? super Throwable, Unit> handler) {
        JobNode vVar;
        if (onCancelling) {
            vVar = new u(handler);
        } else {
            vVar = new v(handler);
        }
        return invokeOnCompletionInternal$kotlinx_coroutines_core(invokeImmediately, vVar);
    }

    @NotNull
    public final DisposableHandle invokeOnCompletionInternal$kotlinx_coroutines_core(boolean invokeImmediately, @NotNull JobNode node) {
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean zAddLast;
        node.setJob(this);
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            z = true;
            if (state$kotlinx_coroutines_core instanceof r) {
                r rVar = (r) state$kotlinx_coroutines_core;
                if (rVar.getIsActive()) {
                    do {
                        atomicReferenceFieldUpdater = f6137a;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, node)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
                } else {
                    k(rVar);
                }
            } else {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                    z = false;
                    break;
                }
                Incomplete incomplete = (Incomplete) state$kotlinx_coroutines_core;
                NodeList list = incomplete.getList();
                if (list != null) {
                    if (node.getOnCancelling()) {
                        c cVar = incomplete instanceof c ? (c) incomplete : null;
                        Throwable rootCause = cVar != null ? cVar.getRootCause() : null;
                        if (rootCause == null) {
                            zAddLast = list.addLast(node, 5);
                        } else {
                            if (invokeImmediately) {
                                node.invoke(rootCause);
                            }
                            return NonDisposableHandle.INSTANCE;
                        }
                    } else {
                        zAddLast = list.addLast(node, 1);
                    }
                    if (zAddLast) {
                        break;
                    }
                } else {
                    Intrinsics.checkNotNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    l((JobNode) state$kotlinx_coroutines_core);
                }
            }
        }
        if (z) {
            return node;
        }
        if (invokeImmediately) {
            Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
            CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core2 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core2 : null;
            node.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
        }
        return NonDisposableHandle.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.s] */
    public final void k(r rVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        NodeList nodeList = new NodeList();
        if (!rVar.getIsActive()) {
            nodeList = new s(nodeList);
        }
        do {
            atomicReferenceFieldUpdater = f6137a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, rVar, nodeList)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == rVar);
    }

    public final void l(JobNode jobNode) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        jobNode.addOneIfEmpty(new NodeList());
        LockFreeLinkedListNode nextNode = jobNode.getNextNode();
        do {
            atomicReferenceFieldUpdater = f6137a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, jobNode, nextNode)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == jobNode);
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final SelectClause0 getOnJoin() {
        i iVar = i.h;
        Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new SelectClause0Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(iVar, 3), null, 4, null);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class i extends FunctionReferenceImpl implements Function3<JobSupport, SelectInstance<?>, Object, Unit> {
        public static final i h = new i();

        public i() {
            super(3, JobSupport.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
            invoke2(jobSupport, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
            JobSupport.access$registerSelectForOnJoin(jobSupport, selectInstance, obj);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobSupport$e;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "getOnCancelling", "()Z", "onCancelling", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class e extends JobNode {
        public final SelectInstance d;

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        public e(@NotNull SelectInstance<?> selectInstance) {
            this.d = selectInstance;
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(@Nullable Throwable cause) {
            this.d.trySelect(JobSupport.this, Unit.INSTANCE);
        }
    }

    @NotNull
    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean cancel(Throwable cause) throws Throwable {
        Throwable jobCancellationException;
        if (cause == null || (jobCancellationException = toCancellationException$default(this, cause, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    public void cancelInternal(@NotNull Throwable cause) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void parentCancelled(@NotNull ParentJob parentJob) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(parentJob);
    }

    public boolean childCancelled(@NotNull Throwable cause) {
        if (cause instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(cause) && getHandlesException();
    }

    public final boolean cancelCoroutine(@Nullable Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
    
        r0 = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancelImpl$kotlinx_coroutines_core(@org.jetbrains.annotations.Nullable java.lang.Object r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.cancelImpl$kotlinx_coroutines_core(java.lang.Object):boolean");
    }

    public static /* synthetic */ JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        if (str == null) {
            str = jobSupport.cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th, jobSupport);
    }

    @NotNull
    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(@Nullable String message, @Nullable Throwable cause) {
        if (message == null) {
            message = cancellationExceptionMessage();
        }
        return new JobCancellationException(message, cause, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.ParentJob
    @NotNull
    public CancellationException getChildJobCancellationCause() {
        CancellationException rootCause;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof c) {
            rootCause = ((c) state$kotlinx_coroutines_core).getRootCause();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            rootCause = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        } else {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
            }
            rootCause = null;
        }
        CancellationException cancellationException = rootCause instanceof CancellationException ? rootCause : null;
        return cancellationException == null ? new JobCancellationException("Parent job is ".concat(n(state$kotlinx_coroutines_core)), rootCause, this) : cancellationException;
    }

    public final Throwable d(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ParentJob) obj).getChildJobCancellationCause();
    }

    public final NodeList g(Incomplete incomplete) {
        NodeList list = incomplete.getList();
        if (list != null) {
            return list;
        }
        if (incomplete instanceof r) {
            return new NodeList();
        }
        if (incomplete instanceof JobNode) {
            l((JobNode) incomplete);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + incomplete).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public final Object o(Object obj, Object obj2) throws Throwable {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        if (!(obj instanceof Incomplete)) {
            return JobSupportKt.f6143a;
        }
        if (((obj instanceof r) || (obj instanceof JobNode)) && !(obj instanceof kotlinx.coroutines.i) && !(obj2 instanceof CompletedExceptionally)) {
            Incomplete incomplete = (Incomplete) obj;
            Object objBoxIncomplete = JobSupportKt.boxIncomplete(obj2);
            do {
                atomicReferenceFieldUpdater = f6137a;
                if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, objBoxIncomplete)) {
                    onCancelling(null);
                    onCompletionInternal(obj2);
                    c(incomplete, obj2);
                    return obj2;
                }
            } while (atomicReferenceFieldUpdater.get(this) == incomplete);
            return JobSupportKt.f6144b;
        }
        Incomplete incomplete2 = (Incomplete) obj;
        NodeList nodeListG = g(incomplete2);
        if (nodeListG == null) {
            return JobSupportKt.f6144b;
        }
        c cVar = incomplete2 instanceof c ? (c) incomplete2 : null;
        if (cVar == null) {
            cVar = new c(nodeListG, false, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (cVar) {
            if (cVar.isCompleting()) {
                return JobSupportKt.f6143a;
            }
            cVar.setCompleting(true);
            if (cVar != incomplete2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f6137a;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, incomplete2, cVar)) {
                    if (atomicReferenceFieldUpdater2.get(this) != incomplete2) {
                        return JobSupportKt.f6144b;
                    }
                }
            }
            boolean zIsCancelling = cVar.isCancelling();
            CompletedExceptionally completedExceptionally = obj2 instanceof CompletedExceptionally ? (CompletedExceptionally) obj2 : null;
            if (completedExceptionally != null) {
                cVar.addExceptionLocked(completedExceptionally.cause);
            }
            ?? rootCause = zIsCancelling ? 0 : cVar.getRootCause();
            objectRef.element = rootCause;
            Unit unit = Unit.INSTANCE;
            if (rootCause != 0) {
                j(nodeListG, rootCause);
            }
            kotlinx.coroutines.i iVarI = i(nodeListG);
            if (iVarI != null && p(cVar, iVarI, obj2)) {
                return JobSupportKt.COMPLETING_WAITING_CHILDREN;
            }
            nodeListG.close(2);
            kotlinx.coroutines.i iVarI2 = i(nodeListG);
            return (iVarI2 == null || !p(cVar, iVarI2, obj2)) ? e(cVar, obj2) : JobSupportKt.COMPLETING_WAITING_CHILDREN;
        }
    }

    public final boolean p(c cVar, kotlinx.coroutines.i iVar, Object obj) {
        while (JobKt.invokeOnCompletion(iVar.d, false, new b(this, cVar, iVar, obj)) == NonDisposableHandle.INSTANCE) {
            iVar = i(iVar);
            if (iVar == null) {
                return false;
            }
        }
        return true;
    }

    public static kotlinx.coroutines.i i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof kotlinx.coroutines.i) {
                    return (kotlinx.coroutines.i) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/Job;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1, 1}, l = {1003, 1005}, m = "invokeSuspend", n = {"$this$sequence", "this_$iv", "cur$iv"}, s = {"L$0", "L$1", "L$2"})
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1583:1\n273#2,6:1584\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n1005#1:1584,6\n*E\n"})
    public static final class f extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Job>, Continuation<? super Unit>, Object> {
        public LockFreeLinkedListHead c;
        public Object d;
        public int e;
        public /* synthetic */ Object f;

        public f(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            f fVar = JobSupport.this.new f(continuation);
            fVar.f = obj;
            return fVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Job> sequenceScope, Continuation<? super Unit> continuation) {
            return ((f) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
        
            if (r6.yield(r1, r5) == r0) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
        
            if (r4.yield(r6, r5) == r0) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
        
            return r0;
         */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0069 -> B:27:0x007f). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007c -> B:27:0x007f). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.e
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 == r3) goto L24
                if (r1 != r2) goto L1c
                java.lang.Object r1 = r5.d
                kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
                kotlinx.coroutines.internal.LockFreeLinkedListHead r3 = r5.c
                java.lang.Object r4 = r5.f
                kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
                kotlin.ResultKt.throwOnFailure(r6)
                goto L7f
            L1c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L24:
                kotlin.ResultKt.throwOnFailure(r6)
                goto L84
            L28:
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.f
                kotlin.sequences.SequenceScope r6 = (kotlin.sequences.SequenceScope) r6
                kotlinx.coroutines.JobSupport r1 = kotlinx.coroutines.JobSupport.this
                java.lang.Object r1 = r1.getState$kotlinx_coroutines_core()
                boolean r4 = r1 instanceof kotlinx.coroutines.i
                if (r4 == 0) goto L46
                kotlinx.coroutines.i r1 = (kotlinx.coroutines.i) r1
                kotlinx.coroutines.ChildJob r1 = r1.d
                r5.e = r3
                java.lang.Object r6 = r6.yield(r1, r5)
                if (r6 != r0) goto L84
                goto L7e
            L46:
                boolean r3 = r1 instanceof kotlinx.coroutines.Incomplete
                if (r3 == 0) goto L84
                kotlinx.coroutines.Incomplete r1 = (kotlinx.coroutines.Incomplete) r1
                kotlinx.coroutines.NodeList r1 = r1.getList()
                if (r1 == 0) goto L84
                java.lang.Object r3 = r1.getNext()
                java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)
                kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
                r4 = r3
                r3 = r1
                r1 = r4
                r4 = r6
            L61:
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
                if (r6 != 0) goto L84
                boolean r6 = r1 instanceof kotlinx.coroutines.i
                if (r6 == 0) goto L7f
                r6 = r1
                kotlinx.coroutines.i r6 = (kotlinx.coroutines.i) r6
                kotlinx.coroutines.ChildJob r6 = r6.d
                r5.f = r4
                r5.c = r3
                r5.d = r1
                r5.e = r2
                java.lang.Object r6 = r4.yield(r6, r5)
                if (r6 != r0) goto L7f
            L7e:
                return r0
            L7f:
                kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r1.getNextNode()
                goto L61
            L84:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final Sequence<Job> getChildren() {
        return SequencesKt.sequence(new f(null));
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public final ChildHandle attachChild(@NotNull ChildJob child) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        kotlinx.coroutines.i iVar = new kotlinx.coroutines.i(child);
        iVar.setJob(this);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof r) {
                r rVar = (r) state$kotlinx_coroutines_core;
                if (rVar.getIsActive()) {
                    do {
                        atomicReferenceFieldUpdater = f6137a;
                        if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, iVar)) {
                            return iVar;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
                } else {
                    k(rVar);
                }
            } else {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                    Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                    CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core2 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core2 : null;
                    iVar.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
                    return NonDisposableHandle.INSTANCE;
                }
                NodeList list = ((Incomplete) state$kotlinx_coroutines_core).getList();
                if (list != null) {
                    if (!list.addLast(iVar, 7)) {
                        boolean zAddLast = list.addLast(iVar, 3);
                        Object state$kotlinx_coroutines_core3 = getState$kotlinx_coroutines_core();
                        if (state$kotlinx_coroutines_core3 instanceof c) {
                            rootCause = ((c) state$kotlinx_coroutines_core3).getRootCause();
                        } else {
                            CompletedExceptionally completedExceptionally2 = state$kotlinx_coroutines_core3 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core3 : null;
                            if (completedExceptionally2 != null) {
                                rootCause = completedExceptionally2.cause;
                            }
                        }
                        iVar.invoke(rootCause);
                        if (!zAddLast) {
                            return NonDisposableHandle.INSTANCE;
                        }
                    }
                    return iVar;
                }
                Intrinsics.checkNotNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                l((JobNode) state$kotlinx_coroutines_core);
            }
        }
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(@NotNull Throwable exception) throws Throwable {
        throw exception;
    }

    @NotNull
    public String toString() {
        return toDebugString() + '@' + DebugStringsKt.getHexAddress(this);
    }

    @InternalCoroutinesApi
    @NotNull
    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + n(getState$kotlinx_coroutines_core()) + '}';
    }

    @NotNull
    public String nameString$kotlinx_coroutines_core() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    public static String n(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return cVar.isCancelling() ? "Cancelling" : cVar.isCompleting() ? "Completing" : "Active";
        }
        if (!(obj instanceof Incomplete)) {
            return obj instanceof CompletedExceptionally ? "Cancelled" : "Completed";
        }
        if (!((Incomplete) obj).getIsActive()) {
            return "New";
        }
        return "Active";
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\r2\b\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\u0013R\u0011\u0010\"\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\"\u0010\u001cR\u0011\u0010#\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b#\u0010\u001cR\u0014\u0010$\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u001cR\u000b\u0010&\u001a\u00020%8\u0002X\u0082\u0004R\u0013\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0'8\u0002X\u0082\u0004R\u0013\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010'8\u0002X\u0082\u0004¨\u0006*"}, d2 = {"Lkotlinx/coroutines/JobSupport$c;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/Incomplete;", "Lkotlinx/coroutines/NodeList;", "list", "", "isCompleting", "", "rootCause", "<init>", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "proposedException", "", "sealLocked", "(Ljava/lang/Throwable;)Ljava/util/List;", "exception", "", "addExceptionLocked", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "a", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "value", "()Z", "setCompleting", "(Z)V", "getRootCause", "()Ljava/lang/Throwable;", "setRootCause", "isSealed", "isCancelling", "isActive", "Lkotlinx/atomicfu/AtomicBoolean;", "_isCompleting", "Lkotlinx/atomicfu/AtomicRef;", "_rootCause", "_exceptionsHolder", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1583:1\n1#2:1584\n*E\n"})
    public static final class c implements Incomplete {

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f6140b = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final NodeList list;

        @Override // kotlinx.coroutines.Incomplete
        @NotNull
        public NodeList getList() {
            return this.list;
        }

        public c(@NotNull NodeList nodeList, boolean z, @Nullable Throwable th) {
            this.list = nodeList;
            this._isCompleting$volatile = z ? 1 : 0;
            this._rootCause$volatile = th;
        }

        public final boolean isCompleting() {
            return f6140b.get(this) == 1;
        }

        public final void setCompleting(boolean z) {
            f6140b.set(this, z ? 1 : 0);
        }

        @Nullable
        public final Throwable getRootCause() {
            return (Throwable) c.get(this);
        }

        public final void setRootCause(@Nullable Throwable th) {
            c.set(this, th);
        }

        public final boolean isSealed() {
            return d.get(this) == JobSupportKt.d;
        }

        @NotNull
        public final List<Throwable> sealLocked(@Nullable Throwable proposedException) {
            ArrayList arrayList;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != null) {
                if (!(obj instanceof Throwable)) {
                    if (!(obj instanceof ArrayList)) {
                        throw new IllegalStateException(("State is " + obj).toString());
                    }
                    arrayList = (ArrayList) obj;
                } else {
                    ArrayList arrayList2 = new ArrayList(4);
                    arrayList2.add(obj);
                    arrayList = arrayList2;
                }
            } else {
                arrayList = new ArrayList(4);
            }
            Throwable rootCause = getRootCause();
            if (rootCause != null) {
                arrayList.add(0, rootCause);
            }
            if (proposedException != null && !Intrinsics.areEqual(proposedException, rootCause)) {
                arrayList.add(proposedException);
            }
            atomicReferenceFieldUpdater.set(this, JobSupportKt.d);
            return arrayList;
        }

        public final boolean isCancelling() {
            return getRootCause() != null;
        }

        @Override // kotlinx.coroutines.Incomplete
        /* renamed from: isActive */
        public boolean getIsActive() {
            return getRootCause() == null;
        }

        public final void addExceptionLocked(@NotNull Throwable exception) {
            Throwable rootCause = getRootCause();
            if (rootCause == null) {
                setRootCause(exception);
                return;
            }
            if (exception == rootCause) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                atomicReferenceFieldUpdater.set(this, exception);
                return;
            }
            if (!(obj instanceof Throwable)) {
                if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(exception);
                    return;
                } else {
                    throw new IllegalStateException(("State is " + obj).toString());
                }
            }
            if (exception == obj) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(obj);
            arrayList.add(exception);
            atomicReferenceFieldUpdater.set(this, arrayList);
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + isCancelling() + ", completing=" + isCompleting() + ", rootCause=" + getRootCause() + ", exceptions=" + d.get(this) + ", list=" + getList() + ']';
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/JobSupport$b;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/JobSupport;", "parent", "Lkotlinx/coroutines/JobSupport$c;", "state", "Lkotlinx/coroutines/i;", "child", "", "proposedUpdate", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$c;Lkotlinx/coroutines/i;Ljava/lang/Object;)V", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "getOnCancelling", "()Z", "onCancelling", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class b extends JobNode {
        public final JobSupport d;
        public final c e;
        public final kotlinx.coroutines.i f;

        /* renamed from: g, reason: collision with root package name */
        public final Object f6139g;

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        public b(@NotNull JobSupport jobSupport, @NotNull c cVar, @NotNull kotlinx.coroutines.i iVar, @Nullable Object obj) {
            this.d = jobSupport;
            this.e = cVar;
            this.f = iVar;
            this.f6139g = obj;
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(@Nullable Throwable cause) {
            JobSupport.access$continueCompleting(this.d, this.e, this.f, this.f6139g);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/JobSupport$a;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/JobSupport;", "job", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "Lkotlinx/coroutines/Job;", "parent", "", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "", "nameString", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1583:1\n1#2:1584\n*E\n"})
    public static final class a<T> extends CancellableContinuationImpl<T> {
        public final JobSupport f;

        public a(@NotNull Continuation<? super T> continuation, @NotNull JobSupport jobSupport) {
            super(continuation, 1);
            this.f = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        @NotNull
        public Throwable getContinuationCancellationCause(@NotNull Job parent) {
            Throwable rootCause;
            Object state$kotlinx_coroutines_core = this.f.getState$kotlinx_coroutines_core();
            return (!(state$kotlinx_coroutines_core instanceof c) || (rootCause = ((c) state$kotlinx_coroutines_core).getRootCause()) == null) ? state$kotlinx_coroutines_core instanceof CompletedExceptionally ? ((CompletedExceptionally) state$kotlinx_coroutines_core).cause : parent.getCancellationException() : rootCause;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        @NotNull
        public String nameString() {
            return "AwaitContinuation";
        }
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof CompletedExceptionally;
    }

    @Nullable
    public final Throwable getCompletionExceptionOrNull() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
            CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core : null;
            if (completedExceptionally != null) {
                return completedExceptionally.cause;
            }
            return null;
        }
        throw new IllegalStateException("This job has not completed yet");
    }

    @Nullable
    public final Object getCompletedInternal$kotlinx_coroutines_core() throws Throwable {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            throw new IllegalStateException("This job has not completed yet");
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
    }

    @Nullable
    public final Object awaitInternal(@NotNull Continuation<Object> continuation) throws Throwable {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
                }
                throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            }
        } while (m(state$kotlinx_coroutines_core) < 0);
        return a(continuation);
    }

    public final Object a(Continuation continuation) {
        a aVar = new a(IntrinsicsKt.intercepted(continuation), this);
        aVar.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(aVar, x.invokeOnCompletion$default(this, false, new b0(aVar), 1, null));
        Object result = aVar.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @NotNull
    public final SelectClause1<?> getOnAwaitInternal() {
        g gVar = g.h;
        Intrinsics.checkNotNull(gVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(gVar, 3);
        h hVar = h.h;
        Intrinsics.checkNotNull(hVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(hVar, 3), null, 8, null);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class g extends FunctionReferenceImpl implements Function3<JobSupport, SelectInstance<?>, Object, Unit> {
        public static final g h = new g();

        public g() {
            super(3, JobSupport.class, "onAwaitInternalRegFunc", "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
            invoke2(jobSupport, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
            JobSupport.access$onAwaitInternalRegFunc(jobSupport, selectInstance, obj);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class h extends FunctionReferenceImpl implements Function3<JobSupport, Object, Object, Object> {
        public static final h h = new h();

        public h() {
            super(3, JobSupport.class, "onAwaitInternalProcessResFunc", "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(JobSupport jobSupport, Object obj, Object obj2) {
            return JobSupport.access$onAwaitInternalProcessResFunc(jobSupport, obj, obj2);
        }
    }

    public static final void access$onAwaitInternalRegFunc(JobSupport jobSupport, SelectInstance selectInstance, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    state$kotlinx_coroutines_core = JobSupportKt.unboxState(state$kotlinx_coroutines_core);
                }
                selectInstance.selectInRegistrationPhase(state$kotlinx_coroutines_core);
                return;
            }
        } while (jobSupport.m(state$kotlinx_coroutines_core) < 0);
        selectInstance.disposeOnCompletion(x.invokeOnCompletion$default(jobSupport, false, jobSupport.new d(selectInstance), 1, null));
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobSupport$d;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "getOnCancelling", "()Z", "onCancelling", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class d extends JobNode {
        public final SelectInstance d;

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        public d(@NotNull SelectInstance<?> selectInstance) {
            this.d = selectInstance;
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(@Nullable Throwable cause) {
            JobSupport jobSupport = JobSupport.this;
            Object state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                state$kotlinx_coroutines_core = JobSupportKt.unboxState(state$kotlinx_coroutines_core);
            }
            this.d.trySelect(jobSupport, state$kotlinx_coroutines_core);
        }
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int iM;
        do {
            iM = m(getState$kotlinx_coroutines_core());
            if (iM == 0) {
                return false;
            }
        } while (iM != 1);
        return true;
    }

    public static final void access$registerSelectForOnJoin(JobSupport jobSupport, SelectInstance selectInstance, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
                return;
            }
        } while (jobSupport.m(state$kotlinx_coroutines_core) < 0);
        selectInstance.disposeOnCompletion(x.invokeOnCompletion$default(jobSupport, false, jobSupport.new e(selectInstance), 1, null));
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    public final Object join(@NotNull Continuation<? super Unit> continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                JobKt.ensureActive(continuation.getContext());
                return Unit.INSTANCE;
            }
        } while (m(state$kotlinx_coroutines_core) < 0);
        Object objH = h(continuation);
        return objH == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objH : Unit.INSTANCE;
    }

    public final Object h(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, x.invokeOnCompletion$default(this, false, new c0(cancellableContinuationImpl), 1, null));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    public final void removeNode$kotlinx_coroutines_core(@NotNull JobNode node) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof JobNode)) {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((Incomplete) state$kotlinx_coroutines_core).getList() == null) {
                    return;
                }
                node.mo1192remove();
                return;
            }
            if (state$kotlinx_coroutines_core != node) {
                return;
            }
            r rVar = JobSupportKt.f;
            do {
                atomicReferenceFieldUpdater = f6137a;
                if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, rVar)) {
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == state$kotlinx_coroutines_core);
        }
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(@Nullable CancellationException cause) throws Throwable {
        if (cause == null) {
            cause = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cause);
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(@Nullable Object proposedUpdate) throws Throwable {
        Object objO;
        do {
            objO = o(getState$kotlinx_coroutines_core(), proposedUpdate);
            if (objO == JobSupportKt.f6143a) {
                return false;
            }
            if (objO == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
        } while (objO == JobSupportKt.f6144b);
        afterCompletion(objO);
        return true;
    }

    @Nullable
    public final Object makeCompletingOnce$kotlinx_coroutines_core(@Nullable Object proposedUpdate) throws Throwable {
        Object objO;
        do {
            objO = o(getState$kotlinx_coroutines_core(), proposedUpdate);
            if (objO == JobSupportKt.f6143a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + proposedUpdate;
                CompletedExceptionally completedExceptionally = proposedUpdate instanceof CompletedExceptionally ? (CompletedExceptionally) proposedUpdate : null;
                throw new IllegalStateException(str, completedExceptionally != null ? completedExceptionally.cause : null);
            }
        } while (objO == JobSupportKt.f6144b);
        return objO;
    }
}
