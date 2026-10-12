package kotlinx.coroutines.channels;

import com.google.common.primitives.Longs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KFunction;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002{|B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\"\b\u0002\u0010\b\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00028\u0000H\u0090@¢\u0006\u0004\b\u0013\u0010\rJ\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000b\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u0015\u0010\u0010J\u000f\u0010\u0019\u001a\u00020\u0012H\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001c\u0010\u001bJ\u0010\u0010\u001d\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0096@¢\u0006\u0004\b\u001f\u0010\u001eJ\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0004¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020$H\u0000¢\u0006\u0004\b)\u0010'J%\u0010.\u001a\u00020\u00062\n\u0010,\u001a\u0006\u0012\u0002\b\u00030+2\b\u0010\u000b\u001a\u0004\u0018\u00010-H\u0014¢\u0006\u0004\b.\u0010/J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0096\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0006H\u0014¢\u0006\u0004\b3\u0010\u001bJ\u0019\u00106\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104¢\u0006\u0004\b8\u00107J\r\u00108\u001a\u00020\u0006¢\u0006\u0004\b8\u0010\u001bJ\u001d\u00108\u001a\u00020\u00062\u000e\u00105\u001a\n\u0018\u000109j\u0004\u0018\u0001`:¢\u0006\u0004\b8\u0010;J\u0019\u0010=\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104H\u0010¢\u0006\u0004\b<\u00107J!\u0010>\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u0001042\u0006\u00108\u001a\u00020\u0012H\u0014¢\u0006\u0004\b>\u0010?J4\u0010C\u001a\u00020\u00062#\u0010B\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u000104¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(5\u0012\u0004\u0012\u00020\u00060\u0005H\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020\u0012H\u0000¢\u0006\u0004\bE\u0010\u0018J\u000f\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010K\u001a\u00020GH\u0000¢\u0006\u0004\bJ\u0010IJ\r\u0010L\u001a\u00020\u0006¢\u0006\u0004\bL\u0010\u001bR.\u0010\b\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00078\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\b\u0010MR\u0014\u0010P\u001a\u00020$8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0014\u0010R\u001a\u00020$8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010OR,\u0010W\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000S8VX\u0096\u0004¢\u0006\f\u0012\u0004\bV\u0010\u001b\u001a\u0004\bT\u0010UR \u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000X8VX\u0096\u0004¢\u0006\f\u0012\u0004\b[\u0010\u001b\u001a\u0004\bY\u0010ZR&\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000e0X8VX\u0096\u0004¢\u0006\f\u0012\u0004\b^\u0010\u001b\u001a\u0004\b]\u0010ZR\"\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000X8VX\u0096\u0004¢\u0006\f\u0012\u0004\ba\u0010\u001b\u001a\u0004\b`\u0010ZR\u0016\u0010e\u001a\u0004\u0018\u0001048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0014\u0010g\u001a\u0002048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bf\u0010dR\u0014\u0010h\u001a\u00020\u00128TX\u0094\u0004¢\u0006\u0006\u001a\u0004\bh\u0010\u0018R\u001a\u0010i\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\bj\u0010\u001b\u001a\u0004\bi\u0010\u0018R\u001a\u0010k\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\bl\u0010\u001b\u001a\u0004\bk\u0010\u0018R\u001a\u0010m\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\bn\u0010\u001b\u001a\u0004\bm\u0010\u0018R\u000b\u0010p\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010q\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010r\u001a\u00020o8\u0002X\u0082\u0004R\u000b\u0010s\u001a\u00020o8\u0002X\u0082\u0004R\u0017\u0010v\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0017\u0010w\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0017\u0010x\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u0t8\u0002X\u0082\u0004R\u0013\u0010y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0t8\u0002X\u0082\u0004R\u0013\u0010z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0t8\u0002X\u0082\u0004¨\u0006}"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", "E", "Lkotlinx/coroutines/channels/Channel;", "", "capacity", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlin/jvm/functions/Function1;)V", "element", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "", "sendBroadcast$kotlinx_coroutines_core", "sendBroadcast", "trySendDropOldest-JP2dKIU", "trySendDropOldest", "shouldSendSuspend$kotlinx_coroutines_core", "()Z", "shouldSendSuspend", "onReceiveEnqueued", "()V", "onReceiveDequeued", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveCatching-JP2dKIU", "receiveCatching", "tryReceive-PtdJZtk", "()Ljava/lang/Object;", "tryReceive", "", "globalCellIndex", "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer", "(J)V", "globalIndex", "waitExpandBufferCompletion$kotlinx_coroutines_core", "waitExpandBufferCompletion", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "", "registerSelectForSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "()Lkotlinx/coroutines/channels/ChannelIterator;", "onClosedIdempotent", "", "cause", "close", "(Ljava/lang/Throwable;)Z", "cancel", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelImpl$kotlinx_coroutines_core", "cancelImpl", "closeOrCancelImpl", "(Ljava/lang/Throwable;Z)Z", "Lkotlin/ParameterName;", "name", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "hasElements$kotlinx_coroutines_core", "hasElements", "", "toString", "()Ljava/lang/String;", "toStringDebug$kotlinx_coroutines_core", "toStringDebug", "checkSegmentStructureInvariants", "Lkotlin/jvm/functions/Function1;", "getSendersCounter$kotlinx_coroutines_core", "()J", "sendersCounter", "getReceiversCounter$kotlinx_coroutines_core", "receiversCounter", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend$annotations", "onSend", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive$annotations", "onReceive", "getOnReceiveCatching", "getOnReceiveCatching$annotations", "onReceiveCatching", "getOnReceiveOrNull", "getOnReceiveOrNull$annotations", "onReceiveOrNull", "getCloseCause", "()Ljava/lang/Throwable;", "closeCause", "getSendException", "sendException", "isConflatedDropOldest", "isClosedForSend", "isClosedForSend$annotations", "isClosedForReceive", "isClosedForReceive$annotations", "isEmpty", "isEmpty$annotations", "Lkotlinx/atomicfu/AtomicLong;", "sendersAndCloseStatus", "receivers", "bufferEnd", "completedExpandBuffersAndPauseFlag", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/channels/ChannelSegment;", "sendSegment", "receiveSegment", "bufferEndSegment", "_closeCause", "closeHandler", "b", "a", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3116:1\n270#1,6:3119\n277#1,68:3126\n394#1,18:3217\n241#1:3235\n266#1,10:3236\n277#1,48:3247\n415#1:3295\n331#1,14:3296\n419#1,3:3311\n241#1:3324\n266#1,10:3325\n277#1,68:3336\n241#1:3414\n266#1,10:3415\n277#1,68:3426\n241#1:3498\n266#1,10:3499\n277#1,68:3510\n241#1:3579\n266#1,10:3580\n277#1,68:3591\n906#1,52:3661\n984#1,8:3717\n878#1:3725\n902#1,33:3726\n994#1:3759\n936#1,14:3760\n955#1,3:3775\n999#1,6:3778\n906#1,52:3792\n984#1,8:3848\n878#1:3856\n902#1,33:3857\n994#1:3890\n936#1,14:3891\n955#1,3:3906\n999#1,6:3909\n878#1:3924\n902#1,48:3925\n955#1,3:3974\n878#1:3977\n902#1,48:3978\n955#1,3:4027\n241#1:4039\n266#1,10:4040\n277#1,68:4051\n878#1:4120\n902#1,48:4121\n955#1,3:4170\n1#2:3117\n3099#3:3118\n3099#3:3125\n3099#3:3246\n3099#3:3335\n3099#3:3425\n3099#3:3497\n3099#3:3509\n3099#3:3590\n3099#3:3660\n3099#3:3923\n3099#3:4030\n3099#3:4031\n3113#3:4032\n3113#3:4033\n3112#3:4034\n3112#3:4035\n3112#3:4036\n3113#3:4037\n3112#3:4038\n3099#3:4050\n3100#3:4173\n3099#3:4174\n3099#3:4175\n3099#3:4176\n3100#3:4177\n3099#3:4178\n3100#3:4201\n3099#3:4202\n3099#3:4203\n3100#3:4204\n3099#3:4254\n3100#3:4255\n3100#3:4256\n3100#3:4274\n3100#3:4275\n426#4,9:3194\n435#4,2:3211\n444#4,4:3213\n448#4,8:3314\n426#4,9:3405\n435#4,2:3495\n444#4,4:3713\n448#4,8:3784\n444#4,4:3844\n448#4,8:3915\n204#5:3203\n205#5:3206\n204#5:3207\n205#5:3210\n57#6,2:3204\n57#6,2:3208\n57#6,2:3322\n266#7:3310\n266#7:3404\n266#7:3494\n266#7:3578\n266#7:3659\n266#7:4119\n902#8:3774\n902#8:3905\n902#8:3973\n902#8:4026\n902#8:4169\n33#9,11:4179\n33#9,11:4190\n68#10,3:4205\n42#10,8:4208\n68#10,3:4216\n42#10,8:4219\n42#10,8:4227\n68#10,3:4235\n42#10,8:4238\n42#10,8:4246\n774#11:4257\n865#11,2:4258\n2318#11,14:4260\n774#11:4276\n865#11,2:4277\n2318#11,14:4279\n774#11:4293\n865#11,2:4294\n2318#11,14:4296\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n110#1:3119,6\n110#1:3126,68\n151#1:3217,18\n151#1:3235\n151#1:3236,10\n151#1:3247,48\n151#1:3295\n151#1:3296,14\n151#1:3311,3\n191#1:3324\n191#1:3325,10\n191#1:3336,68\n222#1:3414\n222#1:3415,10\n222#1:3426,68\n353#1:3498\n353#1:3499,10\n353#1:3510,68\n411#1:3579\n411#1:3580,10\n411#1:3591,68\n687#1:3661,52\n716#1:3717,8\n716#1:3725\n716#1:3726,33\n716#1:3759\n716#1:3760,14\n716#1:3775,3\n716#1:3778,6\n752#1:3792,52\n768#1:3848,8\n768#1:3856\n768#1:3857,33\n768#1:3890\n768#1:3891,14\n768#1:3906,3\n768#1:3909,6\n801#1:3924\n801#1:3925,48\n801#1:3974,3\n991#1:3977\n991#1:3978,48\n991#1:4027,3\n1484#1:4039\n1484#1:4040,10\n1484#1:4051,68\n1532#1:4120\n1532#1:4121,48\n1532#1:4170,3\n67#1:3118\n110#1:3125\n151#1:3246\n191#1:3335\n222#1:3425\n275#1:3497\n353#1:3509\n411#1:3590\n626#1:3660\n791#1:3923\n1027#1:4030\n1076#1:4031\n1394#1:4032\n1396#1:4033\n1426#1:4034\n1436#1:4035\n1445#1:4036\n1446#1:4037\n1453#1:4038\n1484#1:4050\n1898#1:4173\n1900#1:4174\n1902#1:4175\n1915#1:4176\n1926#1:4177\n1927#1:4178\n2229#1:4201\n2242#1:4202\n2252#1:4203\n2255#1:4204\n2572#1:4254\n2574#1:4255\n2599#1:4256\n2661#1:4274\n2662#1:4275\n131#1:3194,9\n131#1:3211,2\n150#1:3213,4\n150#1:3314,8\n218#1:3405,9\n218#1:3495,2\n715#1:3713,4\n715#1:3784,8\n766#1:3844,4\n766#1:3915,8\n135#1:3203\n135#1:3206\n138#1:3207\n138#1:3210\n135#1:3204,2\n138#1:3208,2\n180#1:3322,2\n151#1:3310\n191#1:3404\n222#1:3494\n353#1:3578\n411#1:3659\n1484#1:4119\n716#1:3774\n768#1:3905\n801#1:3973\n991#1:4026\n1532#1:4169\n2131#1:4179,11\n2186#1:4190,11\n2394#1:4205,3\n2394#1:4208,8\n2449#1:4216,3\n2449#1:4219,8\n2468#1:4227,8\n2498#1:4235,3\n2498#1:4238,8\n2559#1:4246,8\n2608#1:4257\n2608#1:4258,2\n2609#1:4260,14\n2673#1:4276\n2673#1:4277,2\n2674#1:4279,14\n2714#1:4293\n2714#1:4294,2\n2715#1:4296,14\n*E\n"})
/* loaded from: classes2.dex */
public class BufferedChannel<E> implements Channel<E> {
    public static final /* synthetic */ AtomicLongFieldUpdater c = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater d = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6162g = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final int f6163a;

    /* renamed from: b, reason: collision with root package name */
    public final kotlinx.coroutines.g f6164b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;

    @JvmField
    @Nullable
    public final Function1<E, Unit> onUndeliveredElement;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    public static /* synthetic */ void getOnReceive$annotations() {
    }

    public static /* synthetic */ void getOnReceiveCatching$annotations() {
    }

    public static /* synthetic */ void getOnReceiveOrNull$annotations() {
    }

    public static /* synthetic */ void getOnSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForReceive$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isClosedForSend$annotations() {
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void isEmpty$annotations() {
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    public void onClosedIdempotent() {
    }

    public void onReceiveDequeued() {
    }

    public void onReceiveEnqueued() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public Object mo1145receiveCatchingJP2dKIU(@NotNull Continuation<? super ChannelResult<? extends E>> continuation) {
        return l(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BufferedChannel(int i2, @Nullable Function1<? super E, Unit> function1) {
        this.f6163a = i2;
        this.onUndeliveredElement = function1;
        if (i2 < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i2, "Invalid channel capacity: ", ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.access$initialBufferEnd(i2);
        this.completedExpandBuffersAndPauseFlag$volatile = e.get(this);
        ChannelSegment channelSegment = new ChannelSegment(0L, null, this, 3);
        this.sendSegment$volatile = channelSegment;
        this.receiveSegment$volatile = channelSegment;
        if (h()) {
            channelSegment = BufferedChannelKt.f6169a;
            Intrinsics.checkNotNull(channelSegment, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = channelSegment;
        this.f6164b = function1 != 0 ? new kotlinx.coroutines.g(this, 1) : null;
        this._closeCause$volatile = BufferedChannelKt.q;
    }

    public /* synthetic */ BufferedChannel(int i2, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? null : function1);
    }

    public static final Function3 access$bindCancellationFun(BufferedChannel bufferedChannel, final Function1 function1, final Object obj) {
        bufferedChannel.getClass();
        return new Function3() { // from class: kotlinx.coroutines.channels.d
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.c;
                OnUndeliveredElementKt.callUndeliveredElement(function1, obj, (CoroutineContext) obj4);
                return Unit.INSTANCE;
            }
        };
    }

    public static final KFunction access$bindCancellationFun(BufferedChannel bufferedChannel, Function1 function1) {
        bufferedChannel.getClass();
        return new kotlinx.coroutines.channels.f(bufferedChannel);
    }

    public static final KFunction access$bindCancellationFunResult(BufferedChannel bufferedChannel, Function1 function1) {
        bufferedChannel.getClass();
        return new kotlinx.coroutines.channels.g(bufferedChannel);
    }

    public static final ChannelSegment access$findSegmentSend(BufferedChannel bufferedChannel, long j2, ChannelSegment channelSegment) {
        Object objFindSegmentInternal;
        BufferedChannel bufferedChannel2;
        bufferedChannel.getClass();
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j2, function2);
            if (!SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6162g;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(bufferedChannel);
                    if (segment.id >= segmentM1197getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!segmentM1197getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, segment, segmentM1197getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(bufferedChannel) != segment) {
                            if (segmentM1197getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                segmentM1197getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
            bufferedChannel.isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE < bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
                return null;
            }
        } else {
            ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
            long j3 = channelSegment2.id;
            if (j3 <= j2) {
                return channelSegment2;
            }
            long j4 = j3 * BufferedChannelKt.SEGMENT_SIZE;
            while (true) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = c;
                long j5 = atomicLongFieldUpdater.get(bufferedChannel);
                long j6 = 1152921504606846975L & j5;
                if (j6 >= j4) {
                    bufferedChannel2 = bufferedChannel;
                    break;
                }
                bufferedChannel2 = bufferedChannel;
                if (atomicLongFieldUpdater.compareAndSet(bufferedChannel2, j5, BufferedChannelKt.access$constructSendersAndCloseStatus(j6, (int) (j5 >> 60)))) {
                    break;
                }
                bufferedChannel = bufferedChannel2;
            }
            if (channelSegment2.id * BufferedChannelKt.SEGMENT_SIZE < bufferedChannel2.getReceiversCounter$kotlinx_coroutines_core()) {
                channelSegment2.cleanPrev();
            }
        }
        return null;
    }

    public static final void access$onClosedReceiveCatchingOnNoWaiterSuspend(BufferedChannel bufferedChannel, CancellableContinuation cancellableContinuation) {
        bufferedChannel.getClass();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m565constructorimpl(ChannelResult.m1152boximpl(ChannelResult.INSTANCE.m1165closedJP2dKIU(bufferedChannel.getCloseCause()))));
    }

    public static final void access$onClosedReceiveOnNoWaiterSuspend(BufferedChannel bufferedChannel, CancellableContinuation cancellableContinuation) {
        bufferedChannel.getClass();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(bufferedChannel.e())));
    }

    public static final void access$prepareSenderForSuspension(BufferedChannel bufferedChannel, Waiter waiter, ChannelSegment channelSegment, int i2) {
        bufferedChannel.getClass();
        waiter.invokeOnCancellation(channelSegment, i2 + BufferedChannelKt.SEGMENT_SIZE);
    }

    public static final Object access$processResultSelectReceive(BufferedChannel bufferedChannel, Object obj, Object obj2) throws Throwable {
        bufferedChannel.getClass();
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        throw bufferedChannel.e();
    }

    public static final Object access$processResultSelectReceiveCatching(BufferedChannel bufferedChannel, Object obj, Object obj2) {
        bufferedChannel.getClass();
        return ChannelResult.m1152boximpl(obj2 == BufferedChannelKt.getCHANNEL_CLOSED() ? ChannelResult.INSTANCE.m1165closedJP2dKIU(bufferedChannel.getCloseCause()) : ChannelResult.INSTANCE.m1167successJP2dKIU(obj2));
    }

    public static final Object access$processResultSelectReceiveOrNull(BufferedChannel bufferedChannel, Object obj, Object obj2) throws Throwable {
        bufferedChannel.getClass();
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        if (bufferedChannel.getCloseCause() == null) {
            return null;
        }
        throw bufferedChannel.e();
    }

    public static final Object access$processResultSelectSend(BufferedChannel bufferedChannel, Object obj, Object obj2) throws Throwable {
        bufferedChannel.getClass();
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return bufferedChannel;
        }
        throw bufferedChannel.getSendException();
    }

    public static final void access$registerSelectForReceive(BufferedChannel bufferedChannel, SelectInstance selectInstance, Object obj) {
        ChannelSegment channelSegment;
        bufferedChannel.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) h.get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = d.getAndIncrement(bufferedChannel);
            long j2 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = andIncrement / j2;
            int i2 = (int) (andIncrement % j2);
            if (channelSegment2.id != j3) {
                ChannelSegment channelSegmentD = bufferedChannel.d(j3, channelSegment2);
                if (channelSegmentD == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentD;
                }
            } else {
                channelSegment = channelSegment2;
            }
            SelectInstance selectInstance2 = selectInstance;
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object objAccess$updateCellReceive = access$updateCellReceive(bufferedChannel2, channelSegment, i2, andIncrement, selectInstance2);
            channelSegment2 = channelSegment;
            if (objAccess$updateCellReceive != BufferedChannelKt.k) {
                if (objAccess$updateCellReceive != BufferedChannelKt.m) {
                    if (objAccess$updateCellReceive == BufferedChannelKt.l) {
                        throw new IllegalStateException("unexpected");
                    }
                    channelSegment2.cleanPrev();
                    selectInstance2.selectInRegistrationPhase(objAccess$updateCellReceive);
                    return;
                }
                if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                bufferedChannel = bufferedChannel2;
                selectInstance = selectInstance2;
            } else {
                Waiter waiter = selectInstance2 instanceof Waiter ? (Waiter) selectInstance2 : null;
                if (waiter != null) {
                    access$prepareReceiverForSuspension(bufferedChannel2, waiter, channelSegment2, i2);
                    return;
                }
                return;
            }
        }
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    public static final /* synthetic */ Object access$updateCellReceive(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i2, long j2, Object obj) {
        return bufferedChannel.s(channelSegment, i2, obj, j2);
    }

    public static final int access$updateCellSend(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i2, Object obj, long j2, Object obj2, boolean z) {
        bufferedChannel.getClass();
        channelSegment.storeElement$kotlinx_coroutines_core(i2, obj);
        if (z) {
            return bufferedChannel.t(channelSegment, i2, obj, j2, obj2, z);
        }
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i2);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferedChannel.a(j2)) {
                if (channelSegment.casState$kotlinx_coroutines_core(i2, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i2, null, obj2)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            channelSegment.cleanElement$kotlinx_coroutines_core(i2);
            if (bufferedChannel.q(state$kotlinx_coroutines_core, obj)) {
                channelSegment.setState$kotlinx_coroutines_core(i2, BufferedChannelKt.f6171g);
                bufferedChannel.onReceiveDequeued();
                return 0;
            }
            if (channelSegment.getAndSetState$kotlinx_coroutines_core(i2, BufferedChannelKt.i) == BufferedChannelKt.i) {
                return 5;
            }
            channelSegment.onCancelledRequest(i2, true);
            return 5;
        }
        return bufferedChannel.t(channelSegment, i2, obj, j2, obj2, z);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e2) {
        return Channel.DefaultImpls.offer(this, e2);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) Channel.DefaultImpls.poll(this);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object receiveOrNull(@NotNull Continuation<? super E> continuation) {
        return Channel.DefaultImpls.receiveOrNull(this, continuation);
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return c.get(this) & 1152921504606846975L;
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return d.get(this);
    }

    public final boolean a(long j2) {
        return j2 < e.get(this) || j2 < getReceiversCounter$kotlinx_coroutines_core() + ((long) this.f6163a);
    }

    public final boolean h() {
        long j2 = e.get(this);
        return j2 == 0 || j2 == Long.MAX_VALUE;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    public Object send(E e2, @NotNull Continuation<? super Unit> continuation) {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) f6162g.get(this);
        while (true) {
            long andIncrement = c.getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zAccess$isClosedForSend0 = access$isClosedForSend0(this, andIncrement);
            long j3 = BufferedChannelKt.SEGMENT_SIZE;
            long j4 = j2 / j3;
            int i2 = (int) (j2 % j3);
            if (channelSegment2.id != j4) {
                ChannelSegment channelSegmentAccess$findSegmentSend = access$findSegmentSend(this, j4, channelSegment2);
                if (channelSegmentAccess$findSegmentSend != null) {
                    channelSegment = channelSegmentAccess$findSegmentSend;
                } else if (zAccess$isClosedForSend0) {
                    Object objK = k(e2, continuation);
                    if (objK == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objK;
                    }
                }
            } else {
                channelSegment = channelSegment2;
            }
            E e3 = e2;
            int iAccess$updateCellSend = access$updateCellSend(this, channelSegment, i2, e3, j2, null, zAccess$isClosedForSend0);
            if (iAccess$updateCellSend == 0) {
                channelSegment.cleanPrev();
                break;
            }
            if (iAccess$updateCellSend == 1) {
                break;
            }
            if (iAccess$updateCellSend != 2) {
                if (iAccess$updateCellSend == 3) {
                    Object objP = p(channelSegment, i2, e3, j2, continuation);
                    if (objP == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objP;
                    }
                } else if (iAccess$updateCellSend != 4) {
                    if (iAccess$updateCellSend == 5) {
                        channelSegment.cleanPrev();
                    }
                    channelSegment2 = channelSegment;
                    e2 = e3;
                } else {
                    if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    Object objK2 = k(e3, continuation);
                    if (objK2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objK2;
                    }
                }
            } else if (zAccess$isClosedForSend0) {
                channelSegment.onSlotCleaned();
                Object objK3 = k(e3, continuation);
                if (objK3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return objK3;
                }
            }
        }
        return Unit.INSTANCE;
    }

    public static final void access$onClosedSendOnNoWaiterSuspend(BufferedChannel bufferedChannel, Object obj, CancellableContinuation cancellableContinuation) {
        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, obj, cancellableContinuation.getContext());
        }
        Throwable sendException = bufferedChannel.getSendException();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(sendException)));
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: trySend-JP2dKIU */
    public Object mo1142trySendJP2dKIU(E element) {
        ChannelSegment channelSegment;
        if (!(g(c.get(this), false) ? false : !a(r0 & 1152921504606846975L))) {
            Object obj = BufferedChannelKt.h;
            ChannelSegment channelSegment2 = (ChannelSegment) f6162g.get(this);
            while (true) {
                long andIncrement = c.getAndIncrement(this);
                long j2 = andIncrement & 1152921504606846975L;
                boolean zAccess$isClosedForSend0 = access$isClosedForSend0(this, andIncrement);
                long j3 = BufferedChannelKt.SEGMENT_SIZE;
                long j4 = j2 / j3;
                int i2 = (int) (j2 % j3);
                if (channelSegment2.id != j4) {
                    ChannelSegment channelSegmentAccess$findSegmentSend = access$findSegmentSend(this, j4, channelSegment2);
                    if (channelSegmentAccess$findSegmentSend != null) {
                        channelSegment = channelSegmentAccess$findSegmentSend;
                    } else if (zAccess$isClosedForSend0) {
                        return ChannelResult.INSTANCE.m1165closedJP2dKIU(getSendException());
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                int iAccess$updateCellSend = access$updateCellSend(this, channelSegment, i2, element, j2, obj, zAccess$isClosedForSend0);
                ChannelSegment channelSegment3 = channelSegment;
                if (iAccess$updateCellSend == 0) {
                    channelSegment3.cleanPrev();
                    return ChannelResult.INSTANCE.m1167successJP2dKIU(Unit.INSTANCE);
                }
                if (iAccess$updateCellSend == 1) {
                    return ChannelResult.INSTANCE.m1167successJP2dKIU(Unit.INSTANCE);
                }
                if (iAccess$updateCellSend == 2) {
                    if (zAccess$isClosedForSend0) {
                        channelSegment3.onSlotCleaned();
                        return ChannelResult.INSTANCE.m1165closedJP2dKIU(getSendException());
                    }
                    Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                    if (waiter != null) {
                        access$prepareSenderForSuspension(this, waiter, channelSegment3, i2);
                    }
                    channelSegment3.onSlotCleaned();
                    return ChannelResult.INSTANCE.m1166failurePtdJZtk();
                }
                if (iAccess$updateCellSend == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (iAccess$updateCellSend == 4) {
                    if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                        channelSegment3.cleanPrev();
                    }
                    return ChannelResult.INSTANCE.m1165closedJP2dKIU(getSendException());
                }
                if (iAccess$updateCellSend == 5) {
                    channelSegment3.cleanPrev();
                }
                channelSegment2 = channelSegment3;
            }
        } else {
            return ChannelResult.INSTANCE.m1166failurePtdJZtk();
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J$\u0010\f\u001a\u00020\u000b2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\n\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\f\u0010\rR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$b;", "Lkotlinx/coroutines/Waiter;", "Lkotlinx/coroutines/CancellableContinuation;", "", "cont", "<init>", "(Lkotlinx/coroutines/CancellableContinuation;)V", "Lkotlinx/coroutines/internal/Segment;", "segment", "", "index", "", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "b", "Lkotlinx/coroutines/CancellableContinuation;", "getCont", "()Lkotlinx/coroutines/CancellableContinuation;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class b implements Waiter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CancellableContinuationImpl f6167a;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public final CancellableContinuation cont;

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
            this.f6167a.invokeOnCancellation(segment, index);
        }

        public b(@NotNull CancellableContinuation<? super Boolean> cancellableContinuation) {
            Intrinsics.checkNotNull(cancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.f6167a = (CancellableContinuationImpl) cancellableContinuation;
            this.cont = cancellableContinuation;
        }

        @NotNull
        public final CancellableContinuation<Boolean> getCont() {
            return this.cont;
        }
    }

    @NotNull
    /* renamed from: trySendDropOldest-JP2dKIU, reason: not valid java name */
    public final Object m1147trySendDropOldestJP2dKIU(E element) {
        ChannelSegment channelSegmentAccess$findSegmentSend;
        int i2;
        BufferedChannel<E> bufferedChannel;
        Object obj = BufferedChannelKt.BUFFERED;
        ChannelSegment channelSegment = (ChannelSegment) f6162g.get(this);
        while (true) {
            long andIncrement = c.getAndIncrement(this);
            long j2 = 1152921504606846975L & andIncrement;
            boolean zAccess$isClosedForSend0 = access$isClosedForSend0(this, andIncrement);
            int i3 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = j2 / i3;
            int i4 = (int) (j2 % i3);
            if (channelSegment.id != j3) {
                channelSegmentAccess$findSegmentSend = access$findSegmentSend(this, j3, channelSegment);
                if (channelSegmentAccess$findSegmentSend != null) {
                    bufferedChannel = this;
                    i2 = i4;
                } else if (zAccess$isClosedForSend0) {
                    return ChannelResult.INSTANCE.m1165closedJP2dKIU(getSendException());
                }
            } else {
                channelSegmentAccess$findSegmentSend = channelSegment;
                i2 = i4;
                bufferedChannel = this;
            }
            E e2 = element;
            int iAccess$updateCellSend = access$updateCellSend(bufferedChannel, channelSegmentAccess$findSegmentSend, i2, e2, j2, obj, zAccess$isClosedForSend0);
            channelSegment = channelSegmentAccess$findSegmentSend;
            if (iAccess$updateCellSend == 0) {
                channelSegment.cleanPrev();
                return ChannelResult.INSTANCE.m1167successJP2dKIU(Unit.INSTANCE);
            }
            if (iAccess$updateCellSend == 1) {
                return ChannelResult.INSTANCE.m1167successJP2dKIU(Unit.INSTANCE);
            }
            if (iAccess$updateCellSend == 2) {
                if (zAccess$isClosedForSend0) {
                    channelSegment.onSlotCleaned();
                    return ChannelResult.INSTANCE.m1165closedJP2dKIU(getSendException());
                }
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    access$prepareSenderForSuspension(this, waiter, channelSegment, i2);
                }
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.id * i3) + i2);
                return ChannelResult.INSTANCE.m1167successJP2dKIU(Unit.INSTANCE);
            }
            if (iAccess$updateCellSend == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iAccess$updateCellSend == 4) {
                if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return ChannelResult.INSTANCE.m1165closedJP2dKIU(getSendException());
            }
            if (iAccess$updateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            element = e2;
        }
    }

    public final int t(ChannelSegment channelSegment, int i2, Object obj, long j2, Object obj2, boolean z) {
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i2);
            if (state$kotlinx_coroutines_core != null) {
                if (state$kotlinx_coroutines_core != BufferedChannelKt.c) {
                    if (state$kotlinx_coroutines_core != BufferedChannelKt.i) {
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.f) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i2);
                            return 5;
                        }
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            channelSegment.cleanElement$kotlinx_coroutines_core(i2);
                            isClosedForSend();
                            return 4;
                        }
                        channelSegment.cleanElement$kotlinx_coroutines_core(i2);
                        if (state$kotlinx_coroutines_core instanceof s) {
                            state$kotlinx_coroutines_core = ((s) state$kotlinx_coroutines_core).f6227a;
                        }
                        if (q(state$kotlinx_coroutines_core, obj)) {
                            channelSegment.setState$kotlinx_coroutines_core(i2, BufferedChannelKt.f6171g);
                            onReceiveDequeued();
                            return 0;
                        }
                        if (channelSegment.getAndSetState$kotlinx_coroutines_core(i2, BufferedChannelKt.i) != BufferedChannelKt.i) {
                            channelSegment.onCancelledRequest(i2, true);
                        }
                        return 5;
                    }
                    channelSegment.cleanElement$kotlinx_coroutines_core(i2);
                    return 5;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED)) {
                    break;
                }
            } else if (!a(j2) || z) {
                if (z) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i2, null, BufferedChannelKt.h)) {
                        channelSegment.onCancelledRequest(i2, false);
                        return 4;
                    }
                } else {
                    if (obj2 == null) {
                        return 3;
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(i2, null, obj2)) {
                        return 2;
                    }
                }
            } else if (channelSegment.casState$kotlinx_coroutines_core(i2, null, BufferedChannelKt.BUFFERED)) {
                break;
            }
        }
        return 1;
    }

    public boolean shouldSendSuspend$kotlinx_coroutines_core() {
        if (g(c.get(this), false)) {
            return false;
        }
        return !a(r0 & 1152921504606846975L);
    }

    public final boolean q(Object obj, Object obj2) {
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, obj2);
        }
        if (obj instanceof p) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            return BufferedChannelKt.access$tryResume0(((p) obj).f6224a, ChannelResult.m1152boximpl(ChannelResult.INSTANCE.m1167successJP2dKIU(obj2)), this.onUndeliveredElement != null ? new kotlinx.coroutines.channels.g(this) : null);
        }
        if (obj instanceof a) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).tryResumeHasNext(obj2);
        }
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            return BufferedChannelKt.access$tryResume0((CancellableContinuation) obj, obj2, this.onUndeliveredElement != null ? new kotlinx.coroutines.channels.f(this) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object receive(@NotNull Continuation<? super E> continuation) throws Throwable {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) h.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = d.getAndIncrement(this);
            long j2 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = andIncrement / j2;
            int i2 = (int) (andIncrement % j2);
            if (channelSegment2.id != j3) {
                ChannelSegment channelSegmentD = d(j3, channelSegment2);
                if (channelSegmentD == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentD;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object objAccess$updateCellReceive = access$updateCellReceive(this, channelSegment, i2, andIncrement, null);
            if (objAccess$updateCellReceive != BufferedChannelKt.k) {
                if (objAccess$updateCellReceive != BufferedChannelKt.m) {
                    if (objAccess$updateCellReceive == BufferedChannelKt.l) {
                        return n(channelSegment, i2, andIncrement, continuation);
                    }
                    channelSegment.cleanPrev();
                    return objAccess$updateCellReceive;
                }
                if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                channelSegment2 = channelSegment;
            } else {
                throw new IllegalStateException("unexpected");
            }
        }
        throw StackTraceRecoveryKt.recoverStackTrace(e());
    }

    public static final void access$prepareReceiverForSuspension(BufferedChannel bufferedChannel, Waiter waiter, ChannelSegment channelSegment, int i2) {
        bufferedChannel.onReceiveEnqueued();
        waiter.invokeOnCancellation(channelSegment, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object l(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.Continuation r14) {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.h
            if (r0 == 0) goto L14
            r0 = r14
            kotlinx.coroutines.channels.h r0 = (kotlinx.coroutines.channels.h) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            kotlinx.coroutines.channels.h r0 = new kotlinx.coroutines.channels.h
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.d
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.f
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.channels.ChannelResult r14 = (kotlinx.coroutines.channels.ChannelResult) r14
            java.lang.Object r13 = r14.getHolder()
            return r13
        L31:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L39:
            kotlin.ResultKt.throwOnFailure(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = access$getReceiveSegment$volatile$FU()
            java.lang.Object r14 = r14.get(r13)
            kotlinx.coroutines.channels.ChannelSegment r14 = (kotlinx.coroutines.channels.ChannelSegment) r14
        L46:
            boolean r1 = r13.isClosedForReceive()
            if (r1 == 0) goto L57
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Throwable r13 = r13.getCloseCause()
            java.lang.Object r13 = r14.m1165closedJP2dKIU(r13)
            return r13
        L57:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getReceivers$volatile$FU()
            long r4 = r1.getAndIncrement(r13)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r7 = (long) r1
            long r9 = r4 / r7
            long r7 = r4 % r7
            int r3 = (int) r7
            long r7 = r14.id
            int r1 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r1 == 0) goto L76
            kotlinx.coroutines.channels.ChannelSegment r1 = access$findSegmentReceive(r13, r9, r14)
            if (r1 != 0) goto L74
            goto L46
        L74:
            r8 = r1
            goto L77
        L76:
            r8 = r14
        L77:
            r12 = 0
            r7 = r13
            r9 = r3
            r10 = r4
            java.lang.Object r13 = access$updateCellReceive(r7, r8, r9, r10, r12)
            r1 = r7
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND$p()
            if (r13 == r14) goto Lb5
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$getFAILED$p()
            if (r13 != r14) goto L9a
            long r13 = r1.getSendersCounter$kotlinx_coroutines_core()
            int r3 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r3 >= 0) goto L97
            r8.cleanPrev()
        L97:
            r13 = r1
            r14 = r8
            goto L46
        L9a:
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND_NO_WAITER$p()
            if (r13 != r14) goto Lab
            r6.f = r2
            r2 = r8
            java.lang.Object r13 = r1.m(r2, r3, r4, r6)
            if (r13 != r0) goto Laa
            return r0
        Laa:
            return r13
        Lab:
            r8.cleanPrev()
            kotlinx.coroutines.channels.ChannelResult$Companion r14 = kotlinx.coroutines.channels.ChannelResult.INSTANCE
            java.lang.Object r13 = r14.m1167successJP2dKIU(r13)
            return r13
        Lb5:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.l(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(kotlinx.coroutines.channels.ChannelSegment r16, int r17, long r18, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public Object mo1146tryReceivePtdJZtk() {
        ChannelSegment channelSegmentD;
        long j2 = d.get(this);
        long j3 = c.get(this);
        if (g(j3, true)) {
            return ChannelResult.INSTANCE.m1165closedJP2dKIU(getCloseCause());
        }
        if (j2 < (j3 & 1152921504606846975L)) {
            Object obj = BufferedChannelKt.i;
            ChannelSegment channelSegment = (ChannelSegment) h.get(this);
            while (!isClosedForReceive()) {
                long andIncrement = d.getAndIncrement(this);
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                long j4 = andIncrement / i2;
                int i3 = (int) (andIncrement % i2);
                if (channelSegment.id != j4) {
                    channelSegmentD = d(j4, channelSegment);
                    if (channelSegmentD == null) {
                        continue;
                    }
                } else {
                    channelSegmentD = channelSegment;
                }
                Object objAccess$updateCellReceive = access$updateCellReceive(this, channelSegmentD, i3, andIncrement, obj);
                if (objAccess$updateCellReceive != BufferedChannelKt.k) {
                    if (objAccess$updateCellReceive != BufferedChannelKt.m) {
                        if (objAccess$updateCellReceive == BufferedChannelKt.l) {
                            throw new IllegalStateException("unexpected");
                        }
                        channelSegmentD.cleanPrev();
                        return ChannelResult.INSTANCE.m1167successJP2dKIU(objAccess$updateCellReceive);
                    }
                    if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegmentD.cleanPrev();
                    }
                    channelSegment = channelSegmentD;
                } else {
                    Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                    if (waiter != null) {
                        access$prepareReceiverForSuspension(this, waiter, channelSegmentD, i3);
                    }
                    waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                    channelSegmentD.onSlotCleaned();
                    return ChannelResult.INSTANCE.m1166failurePtdJZtk();
                }
            }
            return ChannelResult.INSTANCE.m1165closedJP2dKIU(getCloseCause());
        }
        return ChannelResult.INSTANCE.m1166failurePtdJZtk();
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long globalCellIndex) {
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        ChannelSegment channelSegment = (ChannelSegment) h.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = d;
            long j2 = atomicLongFieldUpdater.get(this);
            if (globalCellIndex < Math.max(this.f6163a + j2, e.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j2, 1 + j2)) {
                int i2 = BufferedChannelKt.SEGMENT_SIZE;
                long j3 = j2 / i2;
                int i3 = (int) (j2 % i2);
                if (channelSegment.id != j3) {
                    ChannelSegment channelSegmentD = d(j3, channelSegment);
                    if (channelSegmentD == null) {
                        continue;
                    } else {
                        channelSegment = channelSegmentD;
                    }
                }
                ChannelSegment channelSegment2 = channelSegment;
                Object objS = s(channelSegment2, i3, null, j2);
                if (objS != BufferedChannelKt.m) {
                    channelSegment2.cleanPrev();
                    Function1<E, Unit> function1 = this.onUndeliveredElement;
                    if (function1 != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, objS, null, 2, null)) != null) {
                        throw undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
                    }
                } else if (j2 < getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                channelSegment = channelSegment2;
            }
        }
    }

    public final Object s(ChannelSegment channelSegment, int i2, Object obj, long j2) {
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i2);
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        if (state$kotlinx_coroutines_core == null) {
            if (j2 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.l;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, obj)) {
                    c();
                    return BufferedChannelKt.k;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED && channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, BufferedChannelKt.f6171g)) {
            c();
            return channelSegment.retrieveElement$kotlinx_coroutines_core(i2);
        }
        while (true) {
            Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i2);
            if (state$kotlinx_coroutines_core2 == null || state$kotlinx_coroutines_core2 == BufferedChannelKt.c) {
                if (j2 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, BufferedChannelKt.f)) {
                        c();
                        return BufferedChannelKt.m;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.l;
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, obj)) {
                        c();
                        return BufferedChannelKt.k;
                    }
                }
            } else if (state$kotlinx_coroutines_core2 == BufferedChannelKt.BUFFERED) {
                if (channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, BufferedChannelKt.f6171g)) {
                    c();
                    return channelSegment.retrieveElement$kotlinx_coroutines_core(i2);
                }
            } else {
                if (state$kotlinx_coroutines_core2 != BufferedChannelKt.h && state$kotlinx_coroutines_core2 != BufferedChannelKt.f) {
                    if (state$kotlinx_coroutines_core2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
                        if (state$kotlinx_coroutines_core2 != BufferedChannelKt.e && channelSegment.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, BufferedChannelKt.d)) {
                            boolean z = state$kotlinx_coroutines_core2 instanceof s;
                            if (z) {
                                state$kotlinx_coroutines_core2 = ((s) state$kotlinx_coroutines_core2).f6227a;
                            }
                            if (r(state$kotlinx_coroutines_core2, channelSegment, i2)) {
                                channelSegment.setState$kotlinx_coroutines_core(i2, BufferedChannelKt.f6171g);
                                c();
                                return channelSegment.retrieveElement$kotlinx_coroutines_core(i2);
                            }
                            channelSegment.setState$kotlinx_coroutines_core(i2, BufferedChannelKt.h);
                            channelSegment.onCancelledRequest(i2, false);
                            if (z) {
                                c();
                            }
                            return BufferedChannelKt.m;
                        }
                    } else {
                        c();
                        return BufferedChannelKt.m;
                    }
                }
                return BufferedChannelKt.m;
            }
        }
    }

    public final boolean r(Object obj, ChannelSegment channelSegment, int i2) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            Unit unit = Unit.INSTANCE;
            ChannelSegment channelSegment2 = BufferedChannelKt.f6169a;
            Object objTryResume = cancellableContinuation.tryResume(unit, null, null);
            if (objTryResume == null) {
                return false;
            }
            cancellableContinuation.completeResume(objTryResume);
            return true;
        }
        if (obj instanceof SelectInstance) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult trySelectDetailedResultTrySelectDetailed = ((SelectImplementation) obj).trySelectDetailed(this, Unit.INSTANCE);
            if (trySelectDetailedResultTrySelectDetailed == TrySelectDetailedResult.REREGISTER) {
                channelSegment.cleanElement$kotlinx_coroutines_core(i2);
            }
            return trySelectDetailedResultTrySelectDetailed == TrySelectDetailedResult.SUCCESSFUL;
        }
        if (!(obj instanceof b)) {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        CancellableContinuation<Boolean> cont = ((b) obj).getCont();
        Boolean bool = Boolean.TRUE;
        ChannelSegment channelSegment3 = BufferedChannelKt.f6169a;
        Object objTryResume2 = cont.tryResume(bool, null, null);
        if (objTryResume2 == null) {
            return false;
        }
        cont.completeResume(objTryResume2);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01b0, code lost:
    
        f(r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b3, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.c():void");
    }

    public static void f(BufferedChannel bufferedChannel) {
        bufferedChannel.getClass();
        AtomicLongFieldUpdater atomicLongFieldUpdater = f;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & Longs.MAX_POWER_OF_TWO) != 0) {
            while ((atomicLongFieldUpdater.get(bufferedChannel) & Longs.MAX_POWER_OF_TWO) != 0) {
            }
        }
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long globalIndex) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        AtomicLongFieldUpdater atomicLongFieldUpdater2;
        BufferedChannel<E> bufferedChannel = this;
        if (bufferedChannel.h()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = e;
            if (atomicLongFieldUpdater.get(bufferedChannel) > globalIndex) {
                break;
            } else {
                bufferedChannel = this;
            }
        }
        int i2 = BufferedChannelKt.f6170b;
        int i3 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = f;
            if (i3 < i2) {
                long j2 = atomicLongFieldUpdater.get(bufferedChannel);
                if (j2 == (DurationKt.MAX_MILLIS & atomicLongFieldUpdater3.get(bufferedChannel)) && j2 == atomicLongFieldUpdater.get(bufferedChannel)) {
                    return;
                } else {
                    i3++;
                }
            } else {
                while (true) {
                    long j3 = atomicLongFieldUpdater3.get(bufferedChannel);
                    if (atomicLongFieldUpdater3.compareAndSet(bufferedChannel, j3, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j3 & DurationKt.MAX_MILLIS, true))) {
                        break;
                    } else {
                        bufferedChannel = this;
                    }
                }
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(bufferedChannel);
                    atomicLongFieldUpdater2 = f;
                    long j5 = atomicLongFieldUpdater2.get(bufferedChannel);
                    long j6 = j5 & DurationKt.MAX_MILLIS;
                    boolean z = (Longs.MAX_POWER_OF_TWO & j5) != 0;
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(bufferedChannel)) {
                        break;
                    }
                    if (z) {
                        bufferedChannel = this;
                    } else {
                        bufferedChannel = this;
                        atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j5, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j6, true));
                    }
                }
                while (true) {
                    long j7 = atomicLongFieldUpdater2.get(bufferedChannel);
                    if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j7, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j7 & DurationKt.MAX_MILLIS, false))) {
                        return;
                    } else {
                        bufferedChannel = this;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    public SelectClause2<E, BufferedChannel<E>> getOnSend() {
        i iVar = i.h;
        Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(iVar, 3);
        j jVar = j.h;
        Intrinsics.checkNotNull(jVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jVar, 3), null, 8, null);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class i extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, Unit> {
        public static final i h = new i();

        public i() {
            super(3, BufferedChannel.class, "registerSelectForSend", "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            invoke2(bufferedChannel, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            bufferedChannel.registerSelectForSend(selectInstance, obj);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class j extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final j h = new j();

        public j() {
            super(3, BufferedChannel.class, "processResultSelectSend", "processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return BufferedChannel.access$processResultSelectSend(bufferedChannel, obj, obj2);
        }
    }

    public final void j(SelectInstance selectInstance, Object obj) {
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, obj, selectInstance.getContext());
        }
        selectInstance.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceive() {
        c cVar = c.h;
        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(cVar, 3);
        d dVar = d.h;
        Intrinsics.checkNotNull(dVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(dVar, 3), this.f6164b);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, Unit> {
        public static final c h = new c();

        public c() {
            super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            invoke2(bufferedChannel, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            BufferedChannel.access$registerSelectForReceive(bufferedChannel, selectInstance, obj);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class d extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final d h = new d();

        public d() {
            super(3, BufferedChannel.class, "processResultSelectReceive", "processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return BufferedChannel.access$processResultSelectReceive(bufferedChannel, obj, obj2);
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<ChannelResult<E>> getOnReceiveCatching() {
        e eVar = e.h;
        Intrinsics.checkNotNull(eVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(eVar, 3);
        f fVar = f.h;
        Intrinsics.checkNotNull(fVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(fVar, 3), this.f6164b);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class e extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, Unit> {
        public static final e h = new e();

        public e() {
            super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            invoke2(bufferedChannel, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            BufferedChannel.access$registerSelectForReceive(bufferedChannel, selectInstance, obj);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class f extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final f h = new f();

        public f() {
            super(3, BufferedChannel.class, "processResultSelectReceiveCatching", "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return BufferedChannel.access$processResultSelectReceiveCatching(bufferedChannel, obj, obj2);
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public SelectClause1<E> getOnReceiveOrNull() {
        g gVar = g.h;
        Intrinsics.checkNotNull(gVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(gVar, 3);
        h hVar = h.h;
        Intrinsics.checkNotNull(hVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(hVar, 3), this.f6164b);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class g extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, Unit> {
        public static final g h = new g();

        public g() {
            super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            invoke2(bufferedChannel, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            BufferedChannel.access$registerSelectForReceive(bufferedChannel, selectInstance, obj);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class h extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final h h = new h();

        public h() {
            super(3, BufferedChannel.class, "processResultSelectReceiveOrNull", "processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return BufferedChannel.access$processResultSelectReceiveOrNull(bufferedChannel, obj, obj2);
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return new a();
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0096B¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\r\u001a\u00020\f2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$a;", "Lkotlinx/coroutines/channels/ChannelIterator;", "Lkotlinx/coroutines/Waiter;", "<init>", "(Lkotlinx/coroutines/channels/BufferedChannel;)V", "", "hasNext", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Segment;", "segment", "", "index", "", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "next", "()Ljava/lang/Object;", "element", "tryResumeHasNext", "(Ljava/lang/Object;)Z", "tryResumeHasNextOnClosedChannel", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3116:1\n906#2,52:3117\n984#2,8:3173\n878#2:3181\n902#2,33:3182\n994#2:3215\n936#2,14:3216\n955#2,3:3231\n999#2,6:3234\n444#3,4:3169\n448#3,8:3240\n902#4:3230\n57#5,2:3248\n57#5,2:3251\n1#6:3250\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1619#1:3117,52\n1657#1:3173,8\n1657#1:3181\n1657#1:3182,33\n1657#1:3215\n1657#1:3216,14\n1657#1:3231,3\n1657#1:3234,6\n1655#1:3169,4\n1655#1:3240,8\n1657#1:3230\n1693#1:3248,2\n1741#1:3251,2\n*E\n"})
    public final class a implements ChannelIterator<E>, Waiter {

        /* renamed from: a, reason: collision with root package name */
        public Object f6165a = BufferedChannelKt.n;

        /* renamed from: b, reason: collision with root package name */
        public CancellableContinuationImpl f6166b;

        public a() {
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        public /* synthetic */ Object next(Continuation continuation) {
            return ChannelIterator.DefaultImpls.next(this, continuation);
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Nullable
        public Object hasNext(@NotNull Continuation<? super Boolean> continuation) throws Throwable {
            ChannelSegment channelSegmentD;
            Boolean boolBoxBoolean;
            boolean z = true;
            if (this.f6165a == BufferedChannelKt.n || this.f6165a == BufferedChannelKt.getCHANNEL_CLOSED()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.h;
                BufferedChannel bufferedChannel = BufferedChannel.this;
                ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                while (true) {
                    if (bufferedChannel.isClosedForReceive()) {
                        this.f6165a = BufferedChannelKt.getCHANNEL_CLOSED();
                        Throwable closeCause = bufferedChannel.getCloseCause();
                        if (closeCause != null) {
                            throw StackTraceRecoveryKt.recoverStackTrace(closeCause);
                        }
                        z = false;
                    } else {
                        long andIncrement = BufferedChannel.d.getAndIncrement(bufferedChannel);
                        int i = BufferedChannelKt.SEGMENT_SIZE;
                        long j = andIncrement / i;
                        int i2 = (int) (andIncrement % i);
                        if (channelSegment.id != j) {
                            channelSegmentD = bufferedChannel.d(j, channelSegment);
                            if (channelSegmentD == null) {
                                continue;
                            }
                        } else {
                            channelSegmentD = channelSegment;
                        }
                        Object objAccess$updateCellReceive = BufferedChannel.access$updateCellReceive(bufferedChannel, channelSegmentD, i2, andIncrement, null);
                        if (objAccess$updateCellReceive != BufferedChannelKt.k) {
                            if (objAccess$updateCellReceive == BufferedChannelKt.m) {
                                if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                    channelSegmentD.cleanPrev();
                                }
                                channelSegment = channelSegmentD;
                            } else {
                                if (objAccess$updateCellReceive == BufferedChannelKt.l) {
                                    BufferedChannel bufferedChannel2 = BufferedChannel.this;
                                    CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
                                    try {
                                        this.f6166b = orCreateCancellableContinuation;
                                        Object objAccess$updateCellReceive2 = BufferedChannel.access$updateCellReceive(bufferedChannel2, channelSegmentD, i2, andIncrement, this);
                                        if (objAccess$updateCellReceive2 != BufferedChannelKt.k) {
                                            Function3 function3Access$bindCancellationFun = null;
                                            if (objAccess$updateCellReceive2 == BufferedChannelKt.m) {
                                                if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                                    channelSegmentD.cleanPrev();
                                                }
                                                ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.h.get(bufferedChannel2);
                                                while (true) {
                                                    if (bufferedChannel2.isClosedForReceive()) {
                                                        access$onClosedHasNextNoWaiterSuspend(this);
                                                        break;
                                                    }
                                                    long andIncrement2 = BufferedChannel.d.getAndIncrement(bufferedChannel2);
                                                    long j2 = BufferedChannelKt.SEGMENT_SIZE;
                                                    long j3 = andIncrement2 / j2;
                                                    int i3 = (int) (andIncrement2 % j2);
                                                    if (channelSegment2.id != j3) {
                                                        ChannelSegment channelSegmentD2 = bufferedChannel2.d(j3, channelSegment2);
                                                        if (channelSegmentD2 != null) {
                                                            channelSegment2 = channelSegmentD2;
                                                        }
                                                    }
                                                    Object objAccess$updateCellReceive3 = BufferedChannel.access$updateCellReceive(bufferedChannel2, channelSegment2, i3, andIncrement2, this);
                                                    if (objAccess$updateCellReceive3 != BufferedChannelKt.k) {
                                                        if (objAccess$updateCellReceive3 == BufferedChannelKt.m) {
                                                            if (andIncrement2 < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                                                channelSegment2.cleanPrev();
                                                            }
                                                        } else {
                                                            if (objAccess$updateCellReceive3 == BufferedChannelKt.l) {
                                                                throw new IllegalStateException("unexpected");
                                                            }
                                                            channelSegment2.cleanPrev();
                                                            this.f6165a = objAccess$updateCellReceive3;
                                                            this.f6166b = null;
                                                            boolBoxBoolean = Boxing.boxBoolean(true);
                                                            Function1<E, Unit> function1 = bufferedChannel2.onUndeliveredElement;
                                                            if (function1 != null) {
                                                                function3Access$bindCancellationFun = BufferedChannel.access$bindCancellationFun(bufferedChannel2, function1, objAccess$updateCellReceive3);
                                                            }
                                                        }
                                                    } else {
                                                        BufferedChannel.access$prepareReceiverForSuspension(bufferedChannel2, this, channelSegment2, i3);
                                                        break;
                                                    }
                                                }
                                            } else {
                                                channelSegmentD.cleanPrev();
                                                this.f6165a = objAccess$updateCellReceive2;
                                                this.f6166b = null;
                                                boolBoxBoolean = Boxing.boxBoolean(true);
                                                Function1<E, Unit> function12 = bufferedChannel2.onUndeliveredElement;
                                                if (function12 != null) {
                                                    function3Access$bindCancellationFun = BufferedChannel.access$bindCancellationFun(bufferedChannel2, function12, objAccess$updateCellReceive2);
                                                }
                                            }
                                            orCreateCancellableContinuation.resume((CancellableContinuationImpl) boolBoxBoolean, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) function3Access$bindCancellationFun);
                                        } else {
                                            BufferedChannel.access$prepareReceiverForSuspension(bufferedChannel2, this, channelSegmentD, i2);
                                        }
                                        Object result = orCreateCancellableContinuation.getResult();
                                        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                            DebugProbesKt.probeCoroutineSuspended(continuation);
                                        }
                                        return result;
                                    } catch (Throwable th) {
                                        orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                        throw th;
                                    }
                                }
                                channelSegmentD.cleanPrev();
                                this.f6165a = objAccess$updateCellReceive;
                            }
                        } else {
                            throw new IllegalStateException("unreachable");
                        }
                    }
                }
            }
            return Boxing.boxBoolean(z);
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f6166b;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(segment, index);
            }
        }

        public static final void access$onClosedHasNextNoWaiterSuspend(a aVar) {
            CancellableContinuationImpl cancellableContinuationImpl = aVar.f6166b;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            aVar.f6166b = null;
            aVar.f6165a = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(closeCause)));
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() throws Throwable {
            E e = (E) this.f6165a;
            if (e != BufferedChannelKt.n) {
                this.f6165a = BufferedChannelKt.n;
                if (e != BufferedChannelKt.getCHANNEL_CLOSED()) {
                    return e;
                }
                throw StackTraceRecoveryKt.recoverStackTrace(BufferedChannel.this.e());
            }
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }

        public final boolean tryResumeHasNext(E element) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f6166b;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.f6166b = null;
            this.f6165a = element;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
            return BufferedChannelKt.access$tryResume0(cancellableContinuationImpl, bool, function1 != null ? BufferedChannel.access$bindCancellationFun(bufferedChannel, function1, element) : null);
        }

        public final void tryResumeHasNextOnClosedChannel() {
            CancellableContinuationImpl cancellableContinuationImpl = this.f6166b;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.f6166b = null;
            this.f6165a = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable closeCause = BufferedChannel.this.getCloseCause();
            if (closeCause == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(closeCause)));
            }
        }
    }

    @Nullable
    public final Throwable getCloseCause() {
        return (Throwable) j.get(this);
    }

    @NotNull
    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedSendChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE) : closeCause;
    }

    public final Throwable e() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE) : closeCause;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable cause) {
        return closeOrCancelImpl(cause, false);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final boolean cancel(@Nullable Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel() {
        cancelImpl$kotlinx_coroutines_core(null);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel(@Nullable CancellationException cause) {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
        if (cause == null) {
            cause = new CancellationException("Channel was cancelled");
        }
        return closeOrCancelImpl(cause, true);
    }

    public boolean closeOrCancelImpl(@Nullable Throwable cause, boolean cancel) {
        BufferedChannel<E> bufferedChannel;
        boolean z;
        long j2;
        long jAccess$constructSendersAndCloseStatus;
        Object obj;
        long j3;
        long j4;
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        if (!cancel) {
            bufferedChannel = this;
            break;
        }
        do {
            j4 = atomicLongFieldUpdater.get(this);
            if (((int) (j4 >> 60)) != 0) {
                bufferedChannel = this;
                break;
            }
            bufferedChannel = this;
        } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j4, BufferedChannelKt.access$constructSendersAndCloseStatus(j4 & 1152921504606846975L, 1)));
        Symbol symbol = BufferedChannelKt.q;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, symbol, cause)) {
                z = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != symbol) {
                z = false;
                break;
            }
        }
        if (!cancel) {
            do {
                j2 = atomicLongFieldUpdater.get(this);
                int i2 = (int) (j2 >> 60);
                if (i2 == 0) {
                    jAccess$constructSendersAndCloseStatus = BufferedChannelKt.access$constructSendersAndCloseStatus(j2 & 1152921504606846975L, 2);
                } else {
                    if (i2 != 1) {
                        break;
                    }
                    jAccess$constructSendersAndCloseStatus = BufferedChannelKt.access$constructSendersAndCloseStatus(j2 & 1152921504606846975L, 3);
                }
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, jAccess$constructSendersAndCloseStatus));
        } else {
            do {
                j3 = atomicLongFieldUpdater.get(this);
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j3, BufferedChannelKt.access$constructSendersAndCloseStatus(j3 & 1152921504606846975L, 3)));
        }
        isClosedForSend();
        onClosedIdempotent();
        if (z) {
            loop3: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = k;
                obj = atomicReferenceFieldUpdater2.get(this);
                Symbol symbol2 = obj == null ? BufferedChannelKt.o : BufferedChannelKt.p;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, symbol2)) {
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        break;
                    }
                }
            }
            if (obj != null) {
                ((Function1) obj).invoke(getCloseCause());
                return z;
            }
        }
        return z;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(@NotNull Function1<? super Throwable, Unit> handler) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = k;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, handler)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == BufferedChannelKt.o) {
                Symbol symbol = BufferedChannelKt.o;
                Symbol symbol2 = BufferedChannelKt.p;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, symbol, symbol2)) {
                    if (atomicReferenceFieldUpdater.get(this) != symbol) {
                        break;
                    }
                }
                handler.invoke(getCloseCause());
                return;
            }
            if (obj == BufferedChannelKt.p) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ce, code lost:
    
        r12 = (kotlinx.coroutines.channels.ChannelSegment) r12.getPrev();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.g(long, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
    
        r1 = (kotlinx.coroutines.channels.ChannelSegment) r1.getPrev();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.ChannelSegment b(long r13) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.b(long):kotlinx.coroutines.channels.ChannelSegment");
    }

    public final void o(Waiter waiter, boolean z) {
        if (waiter instanceof b) {
            CancellableContinuation<Boolean> cont = ((b) waiter).getCont();
            Result.Companion companion = Result.INSTANCE;
            cont.resumeWith(Result.m565constructorimpl(Boolean.FALSE));
            return;
        }
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(z ? e() : getSendException())));
        } else if (waiter instanceof p) {
            CancellableContinuationImpl cancellableContinuationImpl = ((p) waiter).f6224a;
            Result.Companion companion3 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(ChannelResult.m1152boximpl(ChannelResult.INSTANCE.m1165closedJP2dKIU(getCloseCause()))));
        } else if (waiter instanceof a) {
            ((a) waiter).tryResumeHasNextOnClosedChannel();
        } else if (waiter instanceof SelectInstance) {
            ((SelectInstance) waiter).trySelect(this, BufferedChannelKt.getCHANNEL_CLOSED());
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return g(c.get(this), false);
    }

    public static final boolean access$isClosedForSend0(BufferedChannel bufferedChannel, long j2) {
        return bufferedChannel.g(j2, false);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        return g(c.get(this), true);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        if (isClosedForReceive() || hasElements$kotlinx_coroutines_core()) {
            return false;
        }
        return !isClosedForReceive();
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            ChannelSegment channelSegmentD = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            if (getSendersCounter$kotlinx_coroutines_core() <= receiversCounter$kotlinx_coroutines_core) {
                return false;
            }
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = receiversCounter$kotlinx_coroutines_core / i2;
            if (channelSegmentD.id == j2 || (channelSegmentD = d(j2, channelSegmentD)) != null) {
                channelSegmentD.cleanPrev();
                int i3 = (int) (receiversCounter$kotlinx_coroutines_core % i2);
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegmentD.getState$kotlinx_coroutines_core(i3);
                    if (state$kotlinx_coroutines_core == null || state$kotlinx_coroutines_core == BufferedChannelKt.c) {
                        if (channelSegmentD.casState$kotlinx_coroutines_core(i3, state$kotlinx_coroutines_core, BufferedChannelKt.f)) {
                            c();
                            break;
                        }
                    } else {
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                            return true;
                        }
                        if (state$kotlinx_coroutines_core != BufferedChannelKt.h && state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED() && state$kotlinx_coroutines_core != BufferedChannelKt.f6171g && state$kotlinx_coroutines_core != BufferedChannelKt.f) {
                            if (state$kotlinx_coroutines_core == BufferedChannelKt.e) {
                                return true;
                            }
                            if (state$kotlinx_coroutines_core != BufferedChannelKt.d && receiversCounter$kotlinx_coroutines_core == getReceiversCounter$kotlinx_coroutines_core()) {
                                return true;
                            }
                        }
                    }
                }
                d.compareAndSet(this, receiversCounter$kotlinx_coroutines_core, receiversCounter$kotlinx_coroutines_core + 1);
            } else if (((ChannelSegment) atomicReferenceFieldUpdater.get(this)).id < j2) {
                return false;
            }
        }
    }

    public final ChannelSegment d(long j2, ChannelSegment channelSegment) {
        Object objFindSegmentInternal;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j3;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j2, function2);
            if (!SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= segmentM1197getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!segmentM1197getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, segmentM1197getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(this) != segment) {
                            if (segmentM1197getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                segmentM1197getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
            isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE < getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment.cleanPrev();
            }
            return null;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
        if (!h() && j2 <= e.get(this) / BufferedChannelKt.SEGMENT_SIZE) {
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = i;
                Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                if (segment2.id >= channelSegment2.id || !channelSegment2.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, segment2, channelSegment2)) {
                    if (atomicReferenceFieldUpdater2.get(this) != segment2) {
                        if (channelSegment2.decPointers$kotlinx_coroutines_core()) {
                            channelSegment2.remove();
                        }
                    }
                }
                if (segment2.decPointers$kotlinx_coroutines_core()) {
                    segment2.remove();
                }
            }
        }
        long j4 = channelSegment2.id;
        if (j4 <= j2) {
            return channelSegment2;
        }
        long j5 = j4 * BufferedChannelKt.SEGMENT_SIZE;
        do {
            atomicLongFieldUpdater = d;
            j3 = atomicLongFieldUpdater.get(this);
            if (j3 >= j5) {
                break;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j3, j5));
        if (channelSegment2.id * BufferedChannelKt.SEGMENT_SIZE < getSendersCounter$kotlinx_coroutines_core()) {
            channelSegment2.cleanPrev();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0011, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(long r6, kotlinx.coroutines.channels.ChannelSegment r8) {
        /*
            r5 = this;
        L0:
            long r0 = r8.id
            int r2 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r2 >= 0) goto L11
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r0 = r8.getNext()
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r8 = r0
            goto L0
        L11:
            boolean r6 = r8.isRemoved()
            if (r6 == 0) goto L22
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r6 = r8.getNext()
            kotlinx.coroutines.channels.ChannelSegment r6 = (kotlinx.coroutines.channels.ChannelSegment) r6
            if (r6 != 0) goto L20
            goto L22
        L20:
            r8 = r6
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = kotlinx.coroutines.channels.BufferedChannel.i
            java.lang.Object r7 = r6.get(r5)
            kotlinx.coroutines.internal.Segment r7 = (kotlinx.coroutines.internal.Segment) r7
            long r0 = r7.id
            long r2 = r8.id
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 < 0) goto L33
            goto L49
        L33:
            boolean r0 = r8.tryIncPointers$kotlinx_coroutines_core()
            if (r0 != 0) goto L3a
            goto L11
        L3a:
            boolean r0 = r6.compareAndSet(r5, r7, r8)
            if (r0 == 0) goto L4a
            boolean r6 = r7.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L49
            r7.remove()
        L49:
            return
        L4a:
            java.lang.Object r0 = r6.get(r5)
            if (r0 == r7) goto L3a
            boolean r6 = r8.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L22
            r8.remove()
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.i(long, kotlinx.coroutines.channels.ChannelSegment):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ce, code lost:
    
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Multi-variable type inference failed */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String toStringDebug$kotlinx_coroutines_core() {
        String strValueOf;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder("S=");
        sb2.append(getSendersCounter$kotlinx_coroutines_core());
        sb2.append(",R=");
        sb2.append(getReceiversCounter$kotlinx_coroutines_core());
        sb2.append(",B=");
        sb2.append(e.get(this));
        sb2.append(",B'=");
        sb2.append(f.get(this));
        sb2.append(",C=");
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        sb2.append((int) (atomicLongFieldUpdater.get(this) >> 60));
        sb2.append(',');
        sb.append(sb2.toString());
        int i2 = (int) (atomicLongFieldUpdater.get(this) >> 60);
        if (i2 == 1) {
            sb.append("CANCELLATION_STARTED,");
        } else if (i2 == 2) {
            sb.append("CLOSED,");
        } else if (i2 == 3) {
            sb.append("CANCELLED,");
        }
        StringBuilder sb3 = new StringBuilder("SEND_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6162g;
        sb3.append(DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater.get(this)));
        sb3.append(",RCV_SEGM=");
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
        sb3.append(DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater2.get(this)));
        sb.append(sb3.toString());
        boolean zH = h();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = i;
        if (!zH) {
            sb.append(",EB_SEGM=" + DebugStringsKt.getHexAddress(atomicReferenceFieldUpdater3.get(this)));
        }
        sb.append("  ");
        List listListOf = CollectionsKt.listOf((Object[]) new ChannelSegment[]{atomicReferenceFieldUpdater2.get(this), atomicReferenceFieldUpdater.get(this), atomicReferenceFieldUpdater3.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((ChannelSegment) obj) != BufferedChannelKt.f6169a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((ChannelSegment) next).id;
            do {
                Object next2 = it.next();
                long j3 = ((ChannelSegment) next2).id;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        ChannelSegment channelSegment = (ChannelSegment) next;
        do {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(DebugStringsKt.getHexAddress(channelSegment));
            sb4.append("=[");
            sb4.append(channelSegment.isRemoved() ? "*" : "");
            sb4.append(channelSegment.id);
            sb4.append(",prev=");
            ChannelSegment channelSegment2 = (ChannelSegment) channelSegment.getPrev();
            sb4.append(channelSegment2 != null ? DebugStringsKt.getHexAddress(channelSegment2) : null);
            sb4.append(',');
            sb.append(sb4.toString());
            int i3 = BufferedChannelKt.SEGMENT_SIZE;
            for (int i4 = 0; i4 < i3; i4++) {
                Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i4);
                Object element$kotlinx_coroutines_core = channelSegment.getElement$kotlinx_coroutines_core(i4);
                if (state$kotlinx_coroutines_core instanceof CancellableContinuation) {
                    strValueOf = "cont";
                } else if (state$kotlinx_coroutines_core instanceof SelectInstance) {
                    strValueOf = "select";
                } else if (state$kotlinx_coroutines_core instanceof p) {
                    strValueOf = "receiveCatching";
                } else if (state$kotlinx_coroutines_core instanceof b) {
                    strValueOf = "send(broadcast)";
                } else if (state$kotlinx_coroutines_core instanceof s) {
                    strValueOf = "EB(" + state$kotlinx_coroutines_core + ')';
                } else {
                    strValueOf = String.valueOf(state$kotlinx_coroutines_core);
                }
                sb.append("[" + i4 + "]=(" + strValueOf + ',' + element$kotlinx_coroutines_core + "),");
            }
            StringBuilder sb5 = new StringBuilder("next=");
            ChannelSegment channelSegment3 = (ChannelSegment) channelSegment.getNext();
            sb5.append(channelSegment3 != null ? DebugStringsKt.getHexAddress(channelSegment3) : null);
            sb5.append("]  ");
            sb.append(sb5.toString());
            channelSegment = (ChannelSegment) channelSegment.getNext();
        } while (channelSegment != null);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void checkSegmentStructureInvariants() {
        boolean zH = h();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = i;
        if (zH) {
            if (atomicReferenceFieldUpdater2.get(this) != BufferedChannelKt.f6169a) {
                throw new IllegalStateException(("bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: " + this).toString());
            }
        } else if (((ChannelSegment) atomicReferenceFieldUpdater.get(this)).id > ((ChannelSegment) atomicReferenceFieldUpdater2.get(this)).id) {
            throw new IllegalStateException(("bufferEndSegment should not have lower id than receiveSegment.\nChannel state: " + this).toString());
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f6162g;
        List listListOf = CollectionsKt.listOf((Object[]) new ChannelSegment[]{atomicReferenceFieldUpdater.get(this), atomicReferenceFieldUpdater3.get(this), atomicReferenceFieldUpdater2.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((ChannelSegment) obj) != BufferedChannelKt.f6169a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((ChannelSegment) next).id;
            do {
                Object next2 = it.next();
                long j3 = ((ChannelSegment) next2).id;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        ChannelSegment channelSegment = (ChannelSegment) next;
        if (channelSegment.getPrev() != 0) {
            throw new IllegalStateException(("All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: " + this).toString());
        }
        while (channelSegment.getNext() != 0) {
            S next3 = channelSegment.getNext();
            Intrinsics.checkNotNull(next3);
            if (((ChannelSegment) next3).getPrev() != 0) {
                S next4 = channelSegment.getNext();
                Intrinsics.checkNotNull(next4);
                if (((ChannelSegment) next4).getPrev() != channelSegment) {
                    throw new IllegalStateException(("The `segment.next.prev === segment` invariant is violated.\nChannel state: " + this).toString());
                }
            }
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i4);
                if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED) && !(state$kotlinx_coroutines_core instanceof Waiter)) {
                    if (!Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.i) && !Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.h) && !Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.getCHANNEL_CLOSED())) {
                        if (Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.f) || Intrinsics.areEqual(state$kotlinx_coroutines_core, BufferedChannelKt.f6171g)) {
                            if (channelSegment.getElement$kotlinx_coroutines_core(i4) != null) {
                                throw new IllegalStateException("Check failed.");
                            }
                        } else {
                            throw new IllegalStateException(("Unexpected segment cell state: " + state$kotlinx_coroutines_core + ".\nChannel state: " + this).toString());
                        }
                    } else {
                        if (channelSegment.getElement$kotlinx_coroutines_core(i4) != null) {
                            throw new IllegalStateException("Check failed.");
                        }
                        i3++;
                    }
                }
            }
            if (i3 == BufferedChannelKt.SEGMENT_SIZE && channelSegment != atomicReferenceFieldUpdater.get(this) && channelSegment != atomicReferenceFieldUpdater3.get(this) && channelSegment != atomicReferenceFieldUpdater2.get(this)) {
                throw new IllegalStateException(("Logically removed segment is reachable.\nChannel state: " + this).toString());
            }
            S next5 = channelSegment.getNext();
            Intrinsics.checkNotNull(next5);
            channelSegment = (ChannelSegment) next5;
        }
    }

    /* renamed from: access$onCancellationChannelResultImplDoNotCall-5_sEAP8, reason: not valid java name */
    public static final void m1143access$onCancellationChannelResultImplDoNotCall5_sEAP8(BufferedChannel bufferedChannel, Throwable th, Object obj, CoroutineContext coroutineContext) {
        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
        Intrinsics.checkNotNull(function1);
        Object objM1157getOrNullimpl = ChannelResult.m1157getOrNullimpl(obj);
        Intrinsics.checkNotNull(objM1157getOrNullimpl);
        OnUndeliveredElementKt.callUndeliveredElement(function1, objM1157getOrNullimpl, coroutineContext);
    }

    public static final void access$onCancellationImplDoNotCall(BufferedChannel bufferedChannel, Throwable th, Object obj, CoroutineContext coroutineContext) {
        Function1<E, Unit> function1 = bufferedChannel.onUndeliveredElement;
        Intrinsics.checkNotNull(function1);
        OnUndeliveredElementKt.callUndeliveredElement(function1, obj, coroutineContext);
    }

    public final Object k(Object obj, Continuation continuation) {
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1<E, Unit> function1 = this.onUndeliveredElement;
        if (function1 != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, obj, null, 2, null)) != null) {
            ExceptionsKt.addSuppressed(undeliveredElementExceptionCallUndeliveredElementCatchingException$default, getSendException());
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(undeliveredElementExceptionCallUndeliveredElementCatchingException$default)));
        } else {
            Throwable sendException = getSendException();
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(sendException)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x010b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p(kotlinx.coroutines.channels.ChannelSegment r17, int r18, java.lang.Object r19, long r20, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.p(kotlinx.coroutines.channels.ChannelSegment, int, java.lang.Object, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009b, code lost:
    
        r1 = kotlin.Result.INSTANCE;
        r0.resumeWith(kotlin.Result.m565constructorimpl(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(true)));
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object sendBroadcast$kotlinx_coroutines_core(E r15, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Boolean> r16) {
        /*
            r14 = this;
            kotlinx.coroutines.CancellableContinuationImpl r0 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r16)
            r2 = 1
            r0.<init>(r1, r2)
            r0.initCancellability()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r1 = r14.onUndeliveredElement
            if (r1 != 0) goto Lbb
            kotlinx.coroutines.channels.BufferedChannel$b r9 = new kotlinx.coroutines.channels.BufferedChannel$b
            r9.<init>(r0)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = access$getSendSegment$volatile$FU()
            java.lang.Object r1 = r1.get(r14)
            kotlinx.coroutines.channels.ChannelSegment r1 = (kotlinx.coroutines.channels.ChannelSegment) r1
        L20:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = access$getSendersAndCloseStatus$volatile$FU()
            long r3 = r3.getAndIncrement(r14)
            r5 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r7 = r3 & r5
            boolean r10 = access$isClosedForSend0(r14, r3)
            int r3 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r3 = (long) r3
            long r5 = r7 / r3
            long r3 = r7 % r3
            int r4 = (int) r3
            long r11 = r1.id
            r13 = 0
            int r3 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
            if (r3 == 0) goto L5e
            kotlinx.coroutines.channels.ChannelSegment r3 = access$findSegmentSend(r14, r5, r1)
            if (r3 != 0) goto L59
            if (r10 == 0) goto L20
        L4a:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r13)
            java.lang.Object r1 = kotlin.Result.m565constructorimpl(r1)
            r0.resumeWith(r1)
            goto Lad
        L59:
            r5 = r4
            r4 = r3
            r6 = r15
            r3 = r14
            goto L62
        L5e:
            r5 = r4
            r4 = r1
            r3 = r14
            r6 = r15
        L62:
            int r1 = access$updateCellSend(r3, r4, r5, r6, r7, r9, r10)
            r3 = r4
            if (r1 == 0) goto La9
            if (r1 == r2) goto L9b
            r6 = 2
            if (r1 == r6) goto L91
            r5 = 3
            if (r1 == r5) goto L89
            r5 = 4
            if (r1 == r5) goto L7d
            r5 = 5
            if (r1 == r5) goto L78
            goto L7b
        L78:
            r3.cleanPrev()
        L7b:
            r1 = r3
            goto L20
        L7d:
            long r1 = r14.getReceiversCounter$kotlinx_coroutines_core()
            int r5 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r5 >= 0) goto L4a
            r3.cleanPrev()
            goto L4a
        L89:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "unexpected"
            r0.<init>(r1)
            throw r0
        L91:
            if (r10 == 0) goto L97
            r3.onSlotCleaned()
            goto L4a
        L97:
            access$prepareSenderForSuspension(r14, r9, r3, r5)
            goto Lad
        L9b:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            java.lang.Object r1 = kotlin.Result.m565constructorimpl(r1)
            r0.resumeWith(r1)
            goto Lad
        La9:
            r3.cleanPrev()
            goto L9b
        Lad:
            java.lang.Object r0 = r0.getResult()
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r1) goto Lba
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r16)
        Lba:
            return r0
        Lbb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.sendBroadcast$kotlinx_coroutines_core(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object n(ChannelSegment channelSegment, int i2, long j2, Continuation continuation) {
        ChannelSegment channelSegment2;
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            Object objAccess$updateCellReceive = access$updateCellReceive(this, channelSegment, i2, j2, orCreateCancellableContinuation);
            if (objAccess$updateCellReceive != BufferedChannelKt.k) {
                if (objAccess$updateCellReceive == BufferedChannelKt.m) {
                    if (j2 < getSendersCounter$kotlinx_coroutines_core()) {
                        channelSegment.cleanPrev();
                    }
                    ChannelSegment channelSegment3 = (ChannelSegment) h.get(this);
                    while (true) {
                        if (isClosedForReceive()) {
                            access$onClosedReceiveOnNoWaiterSuspend(this, orCreateCancellableContinuation);
                            break;
                        }
                        long andIncrement = d.getAndIncrement(this);
                        long j3 = BufferedChannelKt.SEGMENT_SIZE;
                        long j4 = andIncrement / j3;
                        int i3 = (int) (andIncrement % j3);
                        if (channelSegment3.id != j4) {
                            ChannelSegment channelSegmentD = d(j4, channelSegment3);
                            if (channelSegmentD != null) {
                                channelSegment2 = channelSegmentD;
                            }
                        } else {
                            channelSegment2 = channelSegment3;
                        }
                        Object objAccess$updateCellReceive2 = access$updateCellReceive(this, channelSegment2, i3, andIncrement, orCreateCancellableContinuation);
                        ChannelSegment channelSegment4 = channelSegment2;
                        if (objAccess$updateCellReceive2 == BufferedChannelKt.k) {
                            CancellableContinuationImpl cancellableContinuationImpl = orCreateCancellableContinuation != null ? orCreateCancellableContinuation : null;
                            if (cancellableContinuationImpl != null) {
                                access$prepareReceiverForSuspension(this, cancellableContinuationImpl, channelSegment4, i3);
                            }
                        } else if (objAccess$updateCellReceive2 == BufferedChannelKt.m) {
                            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment4.cleanPrev();
                            }
                            channelSegment3 = channelSegment4;
                        } else {
                            if (objAccess$updateCellReceive2 == BufferedChannelKt.l) {
                                throw new IllegalStateException("unexpected");
                            }
                            channelSegment4.cleanPrev();
                            Function1<E, Unit> function1 = this.onUndeliveredElement;
                            orCreateCancellableContinuation.resume((CancellableContinuationImpl) objAccess$updateCellReceive2, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) (function1 != null ? access$bindCancellationFun(this, function1) : null));
                        }
                    }
                } else {
                    channelSegment.cleanPrev();
                    Function1<E, Unit> function12 = this.onUndeliveredElement;
                    orCreateCancellableContinuation.resume((CancellableContinuationImpl) objAccess$updateCellReceive, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) (function12 != null ? access$bindCancellationFun(this, function12) : null));
                }
            } else {
                access$prepareReceiverForSuspension(this, orCreateCancellableContinuation, channelSegment, i2);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    public void registerSelectForSend(@NotNull SelectInstance<?> select, @Nullable Object element) {
        ChannelSegment channelSegment;
        ChannelSegment channelSegment2 = (ChannelSegment) f6162g.get(this);
        while (true) {
            long andIncrement = c.getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zAccess$isClosedForSend0 = access$isClosedForSend0(this, andIncrement);
            int i2 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = j2 / i2;
            int i3 = (int) (j2 % i2);
            if (channelSegment2.id != j3) {
                ChannelSegment channelSegmentAccess$findSegmentSend = access$findSegmentSend(this, j3, channelSegment2);
                if (channelSegmentAccess$findSegmentSend != null) {
                    channelSegment = channelSegmentAccess$findSegmentSend;
                } else if (zAccess$isClosedForSend0) {
                    j(select, element);
                    return;
                }
            } else {
                channelSegment = channelSegment2;
            }
            SelectInstance<?> selectInstance = select;
            Object obj = element;
            int iAccess$updateCellSend = access$updateCellSend(this, channelSegment, i3, obj, j2, selectInstance, zAccess$isClosedForSend0);
            channelSegment2 = channelSegment;
            if (iAccess$updateCellSend == 0) {
                channelSegment2.cleanPrev();
                selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
                return;
            }
            if (iAccess$updateCellSend == 1) {
                selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
                return;
            }
            if (iAccess$updateCellSend == 2) {
                if (zAccess$isClosedForSend0) {
                    channelSegment2.onSlotCleaned();
                    j(selectInstance, obj);
                    return;
                } else {
                    Waiter waiter = selectInstance instanceof Waiter ? (Waiter) selectInstance : null;
                    if (waiter != null) {
                        access$prepareSenderForSuspension(this, waiter, channelSegment2, i3);
                        return;
                    }
                    return;
                }
            }
            if (iAccess$updateCellSend == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iAccess$updateCellSend == 4) {
                if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                j(selectInstance, obj);
                return;
            } else {
                if (iAccess$updateCellSend == 5) {
                    channelSegment2.cleanPrev();
                }
                element = obj;
                select = selectInstance;
            }
        }
    }
}
