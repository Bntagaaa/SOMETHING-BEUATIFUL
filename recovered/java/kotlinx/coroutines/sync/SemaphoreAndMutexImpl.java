package kotlinx.coroutines.sync;

import com.airbnb.lottie.BuildConfig;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.g;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0005¢\u0006\u0004\b\u000b\u0010\u000fJ%\u0010\u0013\u001a\u00020\n2\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004R\u000b\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004R\u0011\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004R\u000b\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004R\u000b\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¨\u0006#"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;", "", "", "permits", "acquiredPermits", "<init>", "(II)V", "", "tryAcquire", "()Z", "", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/CancellableContinuation;", "waiter", "(Lkotlinx/coroutines/CancellableContinuation;)V", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "ignoredParam", "onAcquireRegFunction", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", BuildConfig.BUILD_TYPE, "()V", "getAvailablePermits", "()I", "availablePermits", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/sync/f;", "head", "Lkotlinx/atomicfu/AtomicLong;", "deqIdx", "tail", "enqIdx", "Lkotlinx/atomicfu/AtomicInt;", "_availablePermits", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,396:1\n200#1,10:410\n200#1,10:420\n1#2:397\n444#3,12:398\n68#4,3:430\n42#4,8:433\n68#4,3:444\n42#4,8:447\n374#5:441\n374#5:442\n366#5:443\n377#5:455\n366#5:456\n374#5:457\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n*L\n192#1:410,10\n216#1:420,10\n182#1:398,12\n284#1:430,3\n284#1:433,8\n317#1:444,3\n317#1:447,8\n288#1:441\n294#1:442\n308#1:443\n323#1:455\n329#1:456\n332#1:457\n*E\n"})
/* loaded from: classes2.dex */
public class SemaphoreAndMutexImpl {
    public static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater d = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f6714g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final int f6715a;

    /* renamed from: b, reason: collision with root package name */
    public final g f6716b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreAndMutexImpl(int i, int i2) {
        this.f6715a = i;
        if (i <= 0) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "Semaphore should have at least 1 permit, but had ").toString());
        }
        if (i2 < 0 || i2 > i) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "The number of acquired permits should be in 0..").toString());
        }
        f fVar = new f(0L, null, 2);
        this.head$volatile = fVar;
        this.tail$volatile = fVar;
        this._availablePermits$volatile = i - i2;
        this.f6716b = new g(this, 3);
    }

    public final int getAvailablePermits() {
        return Math.max(f6714g.get(this), 0);
    }

    public final boolean tryAcquire() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6714g;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.f6715a;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    return true;
                }
            }
        }
    }

    @Nullable
    public final Object acquire(@NotNull Continuation<? super Unit> continuation) {
        int andDecrement;
        do {
            andDecrement = f6714g.getAndDecrement(this);
        } while (andDecrement > this.f6715a);
        if (andDecrement > 0) {
            return Unit.INSTANCE;
        }
        Object objA = a(continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public final void acquire(@NotNull CancellableContinuation<? super Unit> waiter) {
        while (true) {
            int andDecrement = f6714g.getAndDecrement(this);
            if (andDecrement <= this.f6715a) {
                if (andDecrement <= 0) {
                    Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
                    if (b((Waiter) waiter)) {
                        return;
                    }
                } else {
                    waiter.resume((CancellableContinuation<? super Unit>) Unit.INSTANCE, (Function3<? super Throwable, ? super CancellableContinuation<? super Unit>, ? super CoroutineContext, Unit>) this.f6716b);
                    return;
                }
            }
        }
    }

    public final void onAcquireRegFunction(@NotNull SelectInstance<?> select, @Nullable Object ignoredParam) {
        while (true) {
            int andDecrement = f6714g.getAndDecrement(this);
            if (andDecrement <= this.f6715a) {
                if (andDecrement <= 0) {
                    Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
                    if (b((Waiter) select)) {
                        return;
                    }
                } else {
                    select.selectInRegistrationPhase(Unit.INSTANCE);
                    return;
                }
            }
        }
    }

    public final void release() {
        int i;
        Object objFindSegmentInternal;
        boolean zTrySelect;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6714g;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.f6715a;
            if (andIncrement >= i2) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i2).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
            f fVar = (f) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = d.getAndIncrement(this);
            long j = andIncrement2 / SemaphoreKt.f;
            d dVar = d.h;
            while (true) {
                objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(fVar, j, dVar);
                if (SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                    break;
                }
                Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= segmentM1197getSegmentimpl.id) {
                        break;
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
            }
            f fVar2 = (f) SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
            fVar2.cleanPrev();
            zTrySelect = false;
            if (fVar2.id <= j) {
                int i3 = (int) (andIncrement2 % SemaphoreKt.f);
                Object andSet = fVar2.getD().getAndSet(i3, SemaphoreKt.f6718b);
                if (andSet == null) {
                    int i4 = SemaphoreKt.f6717a;
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (fVar2.getD().get(i3) == SemaphoreKt.c) {
                            zTrySelect = true;
                            break;
                        }
                    }
                    Symbol symbol = SemaphoreKt.f6718b;
                    Symbol symbol2 = SemaphoreKt.d;
                    AtomicReferenceArray d2 = fVar2.getD();
                    while (true) {
                        if (!d2.compareAndSet(i3, symbol, symbol2)) {
                            if (d2.get(i3) != symbol) {
                                break;
                            }
                        } else {
                            zTrySelect = true;
                            break;
                        }
                    }
                    zTrySelect = !zTrySelect;
                } else if (andSet != SemaphoreKt.e) {
                    if (andSet instanceof CancellableContinuation) {
                        Intrinsics.checkNotNull(andSet, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                        CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                        Object objTryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, this.f6716b);
                        if (objTryResume != null) {
                            cancellableContinuation.completeResume(objTryResume);
                            zTrySelect = true;
                            break;
                            break;
                        }
                    } else {
                        if (!(andSet instanceof SelectInstance)) {
                            throw new IllegalStateException(("unexpected: " + andSet).toString());
                        }
                        zTrySelect = ((SelectInstance) andSet).trySelect(this, Unit.INSTANCE);
                    }
                }
            }
        } while (!zTrySelect);
    }

    public final boolean b(Waiter waiter) {
        Object objFindSegmentInternal;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
        f fVar = (f) atomicReferenceFieldUpdater.get(this);
        long andIncrement = f.getAndIncrement(this);
        c cVar = c.h;
        long j = andIncrement / SemaphoreKt.f;
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(fVar, j, cVar);
            if (!SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
                while (true) {
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
        f fVar2 = (f) SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
        int i = (int) (andIncrement % SemaphoreKt.f);
        AtomicReferenceArray d2 = fVar2.getD();
        while (!d2.compareAndSet(i, null, waiter)) {
            if (d2.get(i) != null) {
                Symbol symbol = SemaphoreKt.f6718b;
                Symbol symbol2 = SemaphoreKt.c;
                AtomicReferenceArray d3 = fVar2.getD();
                while (!d3.compareAndSet(i, symbol, symbol2)) {
                    if (d3.get(i) != symbol) {
                        return false;
                    }
                }
                if (waiter instanceof CancellableContinuation) {
                    Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                    ((CancellableContinuation) waiter).resume((CancellableContinuation) Unit.INSTANCE, (Function3<? super Throwable, ? super CancellableContinuation, ? super CoroutineContext, Unit>) this.f6716b);
                    return true;
                }
                if (waiter instanceof SelectInstance) {
                    ((SelectInstance) waiter).selectInRegistrationPhase(Unit.INSTANCE);
                    return true;
                }
                throw new IllegalStateException(("unexpected: " + waiter).toString());
            }
        }
        waiter.invokeOnCancellation(fVar2, i);
        return true;
    }

    public final Object a(Continuation continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            if (!b(orCreateCancellableContinuation)) {
                acquire((CancellableContinuation<? super Unit>) orCreateCancellableContinuation);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }
}
