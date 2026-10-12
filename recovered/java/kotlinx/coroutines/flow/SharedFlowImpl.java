package kotlinx.coroutines.flow;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u00019B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u0011\u001a\u00020\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0096@¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001d\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010#\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010 0\u001f2\u0006\u0010\u001e\u001a\u00020\u001aH\u0000¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020\u0003H\u0014¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001f2\u0006\u0010&\u001a\u00020\u0007H\u0014¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0017H\u0016¢\u0006\u0004\b)\u0010*J-\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000.2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b/\u00100R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00028\u0000018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u001a\u00108\u001a\u00028\u00008DX\u0084\u0004¢\u0006\f\u0012\u0004\b7\u0010*\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", "T", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/SharedFlowSlot;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "", "replay", "bufferCapacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "value", "", "tryEmit", "(Ljava/lang/Object;)Z", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "updateNewCollectorIndexLocked$kotlinx_coroutines_core", "()J", "updateNewCollectorIndexLocked", "oldIndex", "", "Lkotlin/coroutines/Continuation;", "updateCollectorIndexLocked$kotlinx_coroutines_core", "(J)[Lkotlin/coroutines/Continuation;", "updateCollectorIndexLocked", "createSlot", "()Lkotlinx/coroutines/flow/SharedFlowSlot;", "size", "createSlotArray", "(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;", "resetReplayCache", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/flow/Flow;", "fuse", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;", "", "getReplayCache", "()Ljava/util/List;", "replayCache", "getLastReplayedLocked", "()Ljava/lang/Object;", "getLastReplayedLocked$annotations", "lastReplayedLocked", "a", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,746:1\n29#2:747\n29#2:750\n29#2:769\n29#2:773\n29#2:782\n29#2:793\n29#2:804\n16#3:748\n16#3:751\n16#3:770\n16#3:774\n16#3:783\n16#3:794\n16#3:805\n375#4:749\n1#5:752\n91#6,2:753\n93#6,2:756\n95#6:759\n91#6,2:775\n93#6,2:778\n95#6:781\n91#6,2:797\n93#6,2:800\n95#6:803\n13402#7:755\n13403#7:758\n13402#7:777\n13403#7:780\n13402#7:799\n13403#7:802\n426#8,9:760\n435#8,2:771\n426#8,9:784\n435#8,2:795\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n366#1:747\n406#1:750\n500#1:769\n521#1:773\n641#1:782\n676#1:793\n704#1:804\n366#1:748\n406#1:751\n500#1:770\n521#1:774\n641#1:783\n676#1:794\n704#1:805\n388#1:749\n468#1:753,2\n468#1:756,2\n468#1:759\n544#1:775,2\n544#1:778,2\n544#1:781\n691#1:797,2\n691#1:800,2\n691#1:803\n468#1:755\n468#1:758\n544#1:777\n544#1:780\n691#1:799\n691#1:802\n498#1:760,9\n498#1:771,2\n675#1:784,9\n675#1:795,2\n*E\n"})
/* loaded from: classes2.dex */
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final BufferOverflow f6487g;
    public Object[] h;
    public long i;
    public long j;
    public int k;
    public int l;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ void getLastReplayedLocked$annotations() {
    }

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    @Nullable
    public Object collect(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<?> continuation) {
        return c(this, flowCollector, continuation);
    }

    public SharedFlowImpl(int i, int i2, @NotNull BufferOverflow bufferOverflow) {
        this.e = i;
        this.f = i2;
        this.f6487g = bufferOverflow;
    }

    public final long h() {
        return Math.min(this.j, this.i);
    }

    public static final int access$getTotalSize(SharedFlowImpl sharedFlowImpl) {
        return sharedFlowImpl.k + sharedFlowImpl.l;
    }

    public final void f(Object obj) {
        int i = this.k + this.l;
        Object[] objArrI = this.h;
        if (objArrI == null) {
            objArrI = i(null, 0, 2);
        } else if (i >= objArrI.length) {
            objArrI = i(objArrI, i, objArrI.length * 2);
        }
        SharedFlowKt.access$setBufferAt(objArrI, h() + i, obj);
    }

    public final T getLastReplayedLocked() {
        Object[] objArr = this.h;
        Intrinsics.checkNotNull(objArr);
        return (T) SharedFlowKt.access$getBufferAt(objArr, (this.i + ((int) ((h() + this.k) - this.i))) - 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007b, code lost:
    
        if (((kotlinx.coroutines.flow.SubscribedFlowCollector) r9).onSubscription(r0) == r1) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object c(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.FlowCollector r9, kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.c(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean tryEmit(T value) {
        int i;
        boolean z;
        Continuation<Unit>[] continuationArrG = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (j(value)) {
                continuationArrG = g(continuationArrG);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation<Unit> continuation : continuationArrG) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
            }
        }
        return z;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    @Nullable
    public Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
        Object objE;
        return (!tryEmit(t) && (objE = e(t, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objE : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j(java.lang.Object r13) {
        /*
            r12 = this;
            int r1 = r12.getNCollectors()
            int r2 = r12.e
            r9 = 1
            if (r1 != 0) goto L25
            if (r2 != 0) goto Ld
            goto L86
        Ld:
            r12.f(r13)
            int r1 = r12.k
            int r1 = r1 + r9
            r12.k = r1
            if (r1 <= r2) goto L1a
            r12.d()
        L1a:
            long r1 = r12.h()
            int r3 = r12.k
            long r3 = (long) r3
            long r1 = r1 + r3
            r12.j = r1
            return r9
        L25:
            int r1 = r12.k
            int r3 = r12.f
            if (r1 < r3) goto L4e
            long r4 = r12.j
            long r6 = r12.i
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 > 0) goto L4e
            int[] r1 = kotlinx.coroutines.flow.SharedFlowImpl.WhenMappings.$EnumSwitchMapping$0
            kotlinx.coroutines.channels.BufferOverflow r4 = r12.f6487g
            int r4 = r4.ordinal()
            r1 = r1[r4]
            if (r1 == r9) goto L4c
            r4 = 2
            if (r1 == r4) goto L86
            r4 = 3
            if (r1 != r4) goto L46
            goto L4e
        L46:
            kotlin.NoWhenBranchMatchedException r1 = new kotlin.NoWhenBranchMatchedException
            r1.<init>()
            throw r1
        L4c:
            r1 = 0
            return r1
        L4e:
            r12.f(r13)
            int r1 = r12.k
            int r1 = r1 + r9
            r12.k = r1
            if (r1 <= r3) goto L5b
            r12.d()
        L5b:
            long r3 = r12.h()
            int r1 = r12.k
            long r5 = (long) r1
            long r3 = r3 + r5
            long r5 = r12.i
            long r3 = r3 - r5
            int r1 = (int) r3
            if (r1 <= r2) goto L86
            r1 = 1
            long r1 = r1 + r5
            long r3 = r12.j
            long r5 = r12.h()
            int r7 = r12.k
            long r7 = (long) r7
            long r5 = r5 + r7
            long r7 = r12.h()
            int r10 = r12.k
            long r10 = (long) r10
            long r7 = r7 + r10
            int r10 = r12.l
            long r10 = (long) r10
            long r7 = r7 + r10
            r0 = r12
            r0.m(r1, r3, r5, r7)
        L86:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.j(java.lang.Object):boolean");
    }

    public final void d() {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Object[] objArr = this.h;
        Intrinsics.checkNotNull(objArr);
        SharedFlowKt.access$setBufferAt(objArr, h(), null);
        this.k--;
        long jH = h() + 1;
        if (this.i < jH) {
            this.i = jH;
        }
        if (this.j < jH) {
            if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j = sharedFlowSlot.index;
                        if (j >= 0 && j < jH) {
                            sharedFlowSlot.index = jH;
                        }
                    }
                }
            }
            this.j = jH;
        }
    }

    public final Object[] i(Object[] objArr, int i, int i2) {
        if (i2 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i2];
        this.h = objArr2;
        if (objArr != null) {
            long jH = h();
            for (int i3 = 0; i3 < i; i3++) {
                long j = i3 + jH;
                SharedFlowKt.access$setBufferAt(objArr2, j, SharedFlowKt.access$getBufferAt(objArr, j));
            }
        }
        return objArr2;
    }

    public final long updateNewCollectorIndexLocked$kotlinx_coroutines_core() {
        long j = this.i;
        if (j < this.j) {
            this.j = j;
        }
        return j;
    }

    @NotNull
    public final Continuation<Unit>[] updateCollectorIndexLocked$kotlinx_coroutines_core(long oldIndex) {
        int iMin;
        long j;
        long j2;
        long j3;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        if (oldIndex > this.j) {
            return AbstractSharedFlowKt.EMPTY_RESUMES;
        }
        long jH = h();
        long j4 = this.k + jH;
        int i = this.f;
        if (i == 0 && this.l > 0) {
            j4++;
        }
        int i2 = 0;
        if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                if (abstractSharedFlowSlot != null) {
                    long j5 = ((SharedFlowSlot) abstractSharedFlowSlot).index;
                    if (j5 >= 0 && j5 < j4) {
                        j4 = j5;
                    }
                }
            }
        }
        if (j4 <= this.j) {
            return AbstractSharedFlowKt.EMPTY_RESUMES;
        }
        long jH2 = h() + this.k;
        if (getNCollectors() > 0) {
            iMin = Math.min(this.l, i - ((int) (jH2 - j4)));
        } else {
            iMin = this.l;
        }
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        long j6 = this.l + jH2;
        if (iMin > 0) {
            continuationArr = new Continuation[iMin];
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            j3 = 1;
            long j7 = jH2;
            while (true) {
                if (jH2 >= j6) {
                    j = jH;
                    j2 = j4;
                    jH2 = j7;
                    break;
                }
                j = jH;
                Object objAccess$getBufferAt = SharedFlowKt.access$getBufferAt(objArr, jH2);
                Symbol symbol = SharedFlowKt.NO_VALUE;
                j2 = j4;
                if (objAccess$getBufferAt != symbol) {
                    Intrinsics.checkNotNull(objAccess$getBufferAt, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objAccess$getBufferAt;
                    int i3 = i2 + 1;
                    continuationArr[i2] = aVar.d;
                    SharedFlowKt.access$setBufferAt(objArr, jH2, symbol);
                    SharedFlowKt.access$setBufferAt(objArr, j7, aVar.c);
                    long j8 = j7 + 1;
                    if (i3 >= iMin) {
                        jH2 = j8;
                        break;
                    }
                    j7 = j8;
                    i2 = i3;
                }
                jH2++;
                jH = j;
                j4 = j2;
            }
        } else {
            j = jH;
            j2 = j4;
            j3 = 1;
        }
        int i4 = (int) (jH2 - j);
        long j9 = getNCollectors() == 0 ? jH2 : j2;
        long jMax = Math.max(this.i, jH2 - Math.min(this.e, i4));
        if (i == 0 && jMax < j6) {
            Object[] objArr2 = this.h;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(SharedFlowKt.access$getBufferAt(objArr2, jMax), SharedFlowKt.NO_VALUE)) {
                jH2 += j3;
                jMax += j3;
            }
        }
        m(jMax, j9, jH2, j6);
        b();
        return continuationArr.length == 0 ? continuationArr : g(continuationArr);
    }

    public final void m(long j, long j2, long j3, long j4) {
        long jMin = Math.min(j2, j);
        for (long jH = h(); jH < jMin; jH++) {
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            SharedFlowKt.access$setBufferAt(objArr, jH, null);
        }
        this.i = j;
        this.j = j2;
        this.k = (int) (j3 - jMin);
        this.l = (int) (j4 - j3);
    }

    public final void b() {
        if (this.f != 0 || this.l > 1) {
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            while (this.l > 0 && SharedFlowKt.access$getBufferAt(objArr, (h() + (this.k + this.l)) - 1) == SharedFlowKt.NO_VALUE) {
                this.l--;
                SharedFlowKt.access$setBufferAt(objArr, h() + this.k + this.l, null);
            }
        }
    }

    public final Object l(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation<Unit>[] continuationArrUpdateCollectorIndexLocked$kotlinx_coroutines_core = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            try {
                long jK = k(sharedFlowSlot);
                if (jK < 0) {
                    obj = SharedFlowKt.NO_VALUE;
                } else {
                    long j = sharedFlowSlot.index;
                    Object[] objArr = this.h;
                    Intrinsics.checkNotNull(objArr);
                    Object objAccess$getBufferAt = SharedFlowKt.access$getBufferAt(objArr, jK);
                    if (objAccess$getBufferAt instanceof a) {
                        objAccess$getBufferAt = ((a) objAccess$getBufferAt).c;
                    }
                    sharedFlowSlot.index = jK + 1;
                    Object obj2 = objAccess$getBufferAt;
                    continuationArrUpdateCollectorIndexLocked$kotlinx_coroutines_core = updateCollectorIndexLocked$kotlinx_coroutines_core(j);
                    obj = obj2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation<Unit> continuation : continuationArrUpdateCollectorIndexLocked$kotlinx_coroutines_core) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
            }
        }
        return obj;
    }

    public final long k(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.index;
        if (j < h() + this.k) {
            return j;
        }
        if (this.f <= 0 && j <= h() && this.l != 0) {
            return j;
        }
        return -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object, java.lang.Object[]] */
    public final Continuation[] g(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        Continuation<? super Unit> continuation;
        int length = continuationArr.length;
        if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
            int length2 = abstractSharedFlowSlotArr.length;
            int i = 0;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                if (abstractSharedFlowSlot != null && (continuation = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).cont) != null && k(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        ?? CopyOf = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(CopyOf, "copyOf(...)");
                        continuationArr = CopyOf;
                    }
                    continuationArr[length] = continuation;
                    sharedFlowSlot.cont = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    public SharedFlowSlot createSlot() {
        return new SharedFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    public SharedFlowSlot[] createSlotArray(int size) {
        return new SharedFlowSlot[size];
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    @NotNull
    public Flow<T> fuse(@NotNull CoroutineContext context, int capacity, @NotNull BufferOverflow onBufferOverflow) {
        return SharedFlowKt.fuseSharedFlow(this, context, capacity, onBufferOverflow);
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B3\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl$a;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "flow", "", "index", "", "value", "Lkotlin/coroutines/Continuation;", "", "cont", "<init>", "(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V", "dispose", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a implements DisposableHandle {

        /* renamed from: a, reason: collision with root package name */
        public final SharedFlowImpl f6488a;

        /* renamed from: b, reason: collision with root package name */
        public final long f6489b;
        public final Object c;
        public final Continuation d;

        public a(@NotNull SharedFlowImpl<?> sharedFlowImpl, long j, @Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
            this.f6488a = sharedFlowImpl;
            this.f6489b = j;
            this.c = obj;
            this.d = continuation;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            SharedFlowImpl.access$cancelEmitter(this.f6488a, this);
        }
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    @NotNull
    public List<T> getReplayCache() {
        synchronized (this) {
            int iH = (int) ((h() + this.k) - this.i);
            if (iH == 0) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(iH);
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            for (int i = 0; i < iH; i++) {
                arrayList.add(SharedFlowKt.access$getBufferAt(objArr, this.i + i));
            }
            return arrayList;
        }
    }

    public final Object e(Object obj, Continuation continuation) throws Throwable {
        Throwable th;
        Continuation<Unit>[] continuationArrG;
        a aVar;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Continuation<Unit>[] continuationArrG2 = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            try {
                if (j(obj)) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
                        continuationArrG = g(continuationArrG2);
                        aVar = null;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } else {
                    try {
                        aVar = new a(this, h() + access$getTotalSize(this), obj, cancellableContinuationImpl);
                        f(aVar);
                        this.l++;
                        if (this.f == 0) {
                            continuationArrG2 = g(continuationArrG2);
                        }
                        continuationArrG = continuationArrG2;
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        throw th;
                    }
                }
                if (aVar != null) {
                    CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, aVar);
                }
                for (Continuation<Unit> continuation2 : continuationArrG) {
                    if (continuation2 != null) {
                        Result.Companion companion2 = Result.INSTANCE;
                        continuation2.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
                    }
                }
                Object result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static final void access$cancelEmitter(SharedFlowImpl sharedFlowImpl, a aVar) {
        synchronized (sharedFlowImpl) {
            if (aVar.f6489b < sharedFlowImpl.h()) {
                return;
            }
            Object[] objArr = sharedFlowImpl.h;
            Intrinsics.checkNotNull(objArr);
            if (SharedFlowKt.access$getBufferAt(objArr, aVar.f6489b) != aVar) {
                return;
            }
            SharedFlowKt.access$setBufferAt(objArr, aVar.f6489b, SharedFlowKt.NO_VALUE);
            sharedFlowImpl.b();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Object a(SharedFlowSlot sharedFlowSlot, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (k(sharedFlowSlot) >= 0) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
                } else {
                    sharedFlowSlot.cont = cancellableContinuationImpl;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void resetReplayCache() throws Throwable {
        synchronized (this) {
            try {
                try {
                    m(h() + this.k, this.j, h() + this.k, h() + this.k + this.l);
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
