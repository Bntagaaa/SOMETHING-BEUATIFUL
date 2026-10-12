package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u00002\u00020\u00012\u00020\u0002:\u0004./01B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J%\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00072\n\u0010\u000f\u001a\u00060\rj\u0002`\u000eH\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\n\u0010\u000f\u001a\u00060\rj\u0002`\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00052\n\u0010\u0019\u001a\u00060\rj\u0002`\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0004¢\u0006\u0004\b!\u0010\u0004R\u0014\u0010#\u001a\u00020\"8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020\u00078TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u0014R\u0013\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0'8\u0002X\u0082\u0004R\u0013\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010*0'8\u0002X\u0082\u0004R\u000b\u0010-\u001a\u00020,8\u0002X\u0082\u0004¨\u00062"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/Delay;", "<init>", "()V", "", "shutdown", "", "timeMillis", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/DisposableHandle;", "scheduleInvokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "processNextEvent", "()J", "Lkotlin/coroutines/CoroutineContext;", "context", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "task", "enqueue", "(Ljava/lang/Runnable;)V", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "schedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "resetAll", "", "isEmpty", "()Z", "getNextTime", "nextTime", "Lkotlinx/atomicfu/AtomicRef;", "", "_queue", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "_delayed", "Lkotlinx/atomicfu/AtomicBoolean;", "_isCompleted", "DelayedTask", "a", "b", "DelayedTaskQueue", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 3 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n53#2:548\n51#3:549\n52#3,7:552\n29#4:550\n16#5:551\n1#6:559\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n263#1:548\n336#1:549\n336#1:552,7\n336#1:550\n336#1:551\n*E\n"})
/* loaded from: classes2.dex */
public abstract class EventLoopImplBase extends EventLoopImplPlatform implements Delay {
    public static final /* synthetic */ AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    public static final boolean access$isCompleted(EventLoopImplBase eventLoopImplBase) {
        eventLoopImplBase.getClass();
        return f.get(eventLoopImplBase) == 1;
    }

    @Override // kotlinx.coroutines.Delay
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object delay(long j, @NotNull Continuation<? super Unit> continuation) {
        return Delay.DefaultImpls.delay(this, j, continuation);
    }

    @NotNull
    public DisposableHandle invokeOnTimeout(long j, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return Delay.DefaultImpls.invokeOnTimeout(this, j, runnable, coroutineContext);
    }

    public final void schedule(long now, @NotNull DelayedTask delayedTask) {
        int iScheduleTask;
        boolean z = f.get(this) == 1;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
        if (z) {
            iScheduleTask = 1;
        } else {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
            if (delayedTaskQueue == null) {
                DelayedTaskQueue delayedTaskQueue2 = new DelayedTaskQueue(now);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, delayedTaskQueue2) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj = atomicReferenceFieldUpdater.get(this);
                Intrinsics.checkNotNull(obj);
                delayedTaskQueue = (DelayedTaskQueue) obj;
            }
            iScheduleTask = delayedTask.scheduleTask(now, delayedTaskQueue, this);
        }
        if (iScheduleTask == 0) {
            DelayedTaskQueue delayedTaskQueue3 = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
            if ((delayedTaskQueue3 != null ? delayedTaskQueue3.peek() : null) == delayedTask) {
                unpark();
                return;
            }
            return;
        }
        if (iScheduleTask == 1) {
            reschedule(now, delayedTask);
        } else if (iScheduleTask != 2) {
            throw new IllegalStateException("unexpected result");
        }
    }

    @Override // kotlinx.coroutines.EventLoop
    public boolean isEmpty() {
        if (!isUnconfinedQueueEmpty()) {
            return false;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) e.get(this);
        if (delayedTaskQueue != null && !delayedTaskQueue.isEmpty()) {
            return false;
        }
        Object obj = d.get(this);
        if (obj == null) {
            return true;
        }
        return obj instanceof LockFreeTaskQueueCore ? ((LockFreeTaskQueueCore) obj).isEmpty() : obj == EventLoop_commonKt.f6133b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (((kotlinx.coroutines.internal.LockFreeTaskQueueCore) r0).isEmpty() == false) goto L15;
     */
    @Override // kotlinx.coroutines.EventLoop
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getNextTime() {
        /*
            r5 = this;
            long r0 = super.getNextTime()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto Lb
            goto L27
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase.d
            java.lang.Object r0 = r0.get(r5)
            if (r0 == 0) goto L28
            boolean r1 = r0 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r1 == 0) goto L20
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r0 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L28
            goto L27
        L20:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.EventLoop_commonKt.access$getCLOSED_EMPTY$p()
            if (r0 != r1) goto L27
            goto L52
        L27:
            return r2
        L28:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase.e
            java.lang.Object r0 = r0.get(r5)
            kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTaskQueue) r0
            if (r0 == 0) goto L52
            kotlinx.coroutines.internal.ThreadSafeHeapNode r0 = r0.peek()
            kotlinx.coroutines.EventLoopImplBase$DelayedTask r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTask) r0
            if (r0 != 0) goto L3b
            goto L52
        L3b:
            long r0 = r0.nanoTime
            kotlinx.coroutines.AbstractTimeSource r2 = kotlinx.coroutines.AbstractTimeSourceKt.access$getTimeSource$p()
            if (r2 == 0) goto L48
            long r2 = r2.nanoTime()
            goto L4c
        L48:
            long r2 = java.lang.System.nanoTime()
        L4c:
            long r0 = r0 - r2
            long r0 = kotlin.ranges.RangesKt.a(r0)
            return r0
        L52:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.getNextTime():long");
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        DelayedTask delayedTaskRemoveFirstOrNull;
        ThreadLocalEventLoop.INSTANCE.resetEventLoop$kotlinx_coroutines_core();
        f.set(this, 1);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                Symbol symbol = EventLoop_commonKt.f6133b;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                break loop0;
            }
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                if (obj != EventLoop_commonKt.f6133b) {
                    LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    lockFreeTaskQueueCore.addLast((Runnable) obj);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                break;
            }
            ((LockFreeTaskQueueCore) obj).close();
            break;
        }
        while (processNextEvent() <= 0) {
        }
        AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
        long jNanoTime = abstractTimeSource != null ? abstractTimeSource.nanoTime() : System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) e.get(this);
            if (delayedTaskQueue == null || (delayedTaskRemoveFirstOrNull = delayedTaskQueue.removeFirstOrNull()) == null) {
                return;
            } else {
                reschedule(jNanoTime, delayedTaskRemoveFirstOrNull);
            }
        }
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: scheduleResumeAfterDelay */
    public void mo1204scheduleResumeAfterDelay(long timeMillis, @NotNull CancellableContinuation<? super Unit> continuation) {
        long jDelayToNanos = EventLoop_commonKt.delayToNanos(timeMillis);
        if (jDelayToNanos < DurationKt.MAX_MILLIS) {
            AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
            long jNanoTime = abstractTimeSource != null ? abstractTimeSource.nanoTime() : System.nanoTime();
            a aVar = new a(jDelayToNanos + jNanoTime, continuation);
            schedule(jNanoTime, aVar);
            CancellableContinuationKt.disposeOnCancellation(continuation, aVar);
        }
    }

    @NotNull
    public final DisposableHandle scheduleInvokeOnTimeout(long timeMillis, @NotNull Runnable block) {
        long jDelayToNanos = EventLoop_commonKt.delayToNanos(timeMillis);
        if (jDelayToNanos < DurationKt.MAX_MILLIS) {
            AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
            long jNanoTime = abstractTimeSource != null ? abstractTimeSource.nanoTime() : System.nanoTime();
            b bVar = new b(jDelayToNanos + jNanoTime, block);
            schedule(jNanoTime, bVar);
            return bVar;
        }
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.EventLoop
    public long processNextEvent() {
        Runnable runnable;
        if (processUnconfinedEvent()) {
            return 0L;
        }
        a();
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            Object obj = atomicReferenceFieldUpdater.get(this);
            runnable = null;
            if (obj == null) {
                break;
            }
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                if (obj != EventLoop_commonKt.f6133b) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    runnable = (Runnable) obj;
                    break loop0;
                }
                break;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
            Object objRemoveFirstOrNull = lockFreeTaskQueueCore.removeFirstOrNull();
            if (objRemoveFirstOrNull != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                runnable = (Runnable) objRemoveFirstOrNull;
                break;
            }
            LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, next) && atomicReferenceFieldUpdater.get(this) == obj) {
            }
        }
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        return getNextTime();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: dispatch */
    public final void mo1203dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        enqueue(block);
    }

    public void enqueue(@NotNull Runnable task) {
        a();
        if (b(task)) {
            unpark();
        } else {
            DefaultExecutor.INSTANCE.enqueue(task);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(java.lang.Runnable r7) {
        /*
            r6 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase.d
            java.lang.Object r1 = r0.get(r6)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = kotlinx.coroutines.EventLoopImplBase.f
            int r2 = r2.get(r6)
            r3 = 0
            r4 = 1
            if (r2 != r4) goto L12
            r2 = 1
            goto L13
        L12:
            r2 = 0
        L13:
            if (r2 == 0) goto L16
            goto L57
        L16:
            if (r1 != 0) goto L27
        L18:
            r1 = 0
            boolean r1 = r0.compareAndSet(r6, r1, r7)
            if (r1 == 0) goto L20
            goto L73
        L20:
            java.lang.Object r1 = r0.get(r6)
            if (r1 == 0) goto L18
            goto L0
        L27:
            boolean r2 = r1 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r2 == 0) goto L51
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)
            r2 = r1
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r2 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r2
            int r5 = r2.addLast(r7)
            if (r5 == 0) goto L73
            if (r5 == r4) goto L3f
            r0 = 2
            if (r5 == r0) goto L57
            goto L0
        L3f:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r2 = r2.next()
        L43:
            boolean r3 = r0.compareAndSet(r6, r1, r2)
            if (r3 == 0) goto L4a
            goto L0
        L4a:
            java.lang.Object r3 = r0.get(r6)
            if (r3 == r1) goto L43
            goto L0
        L51:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.EventLoop_commonKt.access$getCLOSED_EMPTY$p()
            if (r1 != r2) goto L58
        L57:
            return r3
        L58:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r2 = new kotlinx.coroutines.internal.LockFreeTaskQueueCore
            r3 = 8
            r2.<init>(r3, r4)
            java.lang.String r3 = "null cannot be cast to non-null type java.lang.Runnable"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            r3 = r1
            java.lang.Runnable r3 = (java.lang.Runnable) r3
            r2.addLast(r3)
            r2.addLast(r7)
        L6d:
            boolean r3 = r0.compareAndSet(r6, r1, r2)
            if (r3 == 0) goto L74
        L73:
            return r4
        L74:
            java.lang.Object r3 = r0.get(r6)
            if (r3 == r1) goto L6d
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.b(java.lang.Runnable):boolean");
    }

    public final void a() {
        DelayedTask delayedTaskRemoveAtImpl;
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) e.get(this);
        if (delayedTaskQueue == null || delayedTaskQueue.isEmpty()) {
            return;
        }
        AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
        long jNanoTime = abstractTimeSource != null ? abstractTimeSource.nanoTime() : System.nanoTime();
        do {
            synchronized (delayedTaskQueue) {
                try {
                    DelayedTask delayedTaskFirstImpl = delayedTaskQueue.firstImpl();
                    if (delayedTaskFirstImpl != null) {
                        DelayedTask delayedTask = delayedTaskFirstImpl;
                        delayedTaskRemoveAtImpl = delayedTask.timeToExecute(jNanoTime) ? b(delayedTask) : false ? delayedTaskQueue.removeAtImpl(0) : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (delayedTaskRemoveAtImpl != null);
    }

    public final void resetAll() {
        d.set(this, null);
        e.set(this, null);
    }

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u00052\u00060\u0006j\u0002`\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010 R\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010)\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R0\u00100\u001a\b\u0012\u0002\b\u0003\u0018\u00010*2\f\u0010+\u001a\b\u0012\u0002\b\u0003\u0018\u00010*8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00061"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", "nanoTime", "<init>", "(J)V", "other", "", "compareTo", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "now", "", "timeToExecute", "(J)Z", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "delayed", "Lkotlinx/coroutines/EventLoopImplBase;", "eventLoop", "scheduleTask", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I", "", "dispose", "()V", "", "toString", "()Ljava/lang/String;", "J", "_heap", "Ljava/lang/Object;", "a", "I", "getIndex", "()I", "setIndex", "(I)V", "index", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "value", "getHeap", "()Lkotlinx/coroutines/internal/ThreadSafeHeap;", "setHeap", "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V", "heap", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,547:1\n29#2:548\n29#2:551\n29#2:560\n16#3:549\n16#3:552\n16#3:561\n63#4:550\n64#4,7:553\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n441#1:548\n443#1:551\n483#1:560\n441#1:549\n443#1:552\n483#1:561\n443#1:550\n443#1:553,7\n*E\n"})
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, DisposableHandle, ThreadSafeHeapNode {

        @Nullable
        private volatile Object _heap;

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public int index = -1;

        @JvmField
        public long nanoTime;

        public DelayedTask(long j) {
            this.nanoTime = j;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        @Nullable
        public ThreadSafeHeap<?> getHeap() {
            Object obj = this._heap;
            if (obj instanceof ThreadSafeHeap) {
                return (ThreadSafeHeap) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public void setHeap(@Nullable ThreadSafeHeap<?> threadSafeHeap) {
            if (this._heap == EventLoop_commonKt.f6132a) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this._heap = threadSafeHeap;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public int getIndex() {
            return this.index;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public void setIndex(int i) {
            this.index = i;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull DelayedTask other) {
            long j = this.nanoTime - other.nanoTime;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        public final boolean timeToExecute(long now) {
            return now - this.nanoTime >= 0;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + ']';
        }

        public final int scheduleTask(long now, @NotNull DelayedTaskQueue delayed, @NotNull EventLoopImplBase eventLoop) {
            synchronized (this) {
                if (this._heap == EventLoop_commonKt.f6132a) {
                    return 2;
                }
                synchronized (delayed) {
                    try {
                        DelayedTask delayedTaskFirstImpl = delayed.firstImpl();
                        if (EventLoopImplBase.access$isCompleted(eventLoop)) {
                            return 1;
                        }
                        if (delayedTaskFirstImpl == null) {
                            delayed.timeNow = now;
                        } else {
                            long j = delayedTaskFirstImpl.nanoTime;
                            if (j - now < 0) {
                                now = j;
                            }
                            if (now - delayed.timeNow > 0) {
                                delayed.timeNow = now;
                            }
                        }
                        long j2 = this.nanoTime;
                        long j3 = delayed.timeNow;
                        if (j2 - j3 < 0) {
                            this.nanoTime = j3;
                        }
                        delayed.addImpl(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    if (obj == EventLoop_commonKt.f6132a) {
                        return;
                    }
                    DelayedTaskQueue delayedTaskQueue = obj instanceof DelayedTaskQueue ? (DelayedTaskQueue) obj : null;
                    if (delayedTaskQueue != null) {
                        delayedTaskQueue.remove(this);
                    }
                    this._heap = EventLoop_commonKt.f6132a;
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$a;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "", "nanoTime", "Lkotlinx/coroutines/CancellableContinuation;", "", "cont", "<init>", "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V", "run", "()V", "", "toString", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"})
    public final class a extends DelayedTask {

        /* renamed from: b, reason: collision with root package name */
        public final CancellableContinuation f6130b;

        public a(long j, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
            super(j);
            this.f6130b = cancellableContinuation;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6130b.resumeUndispatched(EventLoopImplBase.this, Unit.INSTANCE);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        @NotNull
        public String toString() {
            return super.toString() + this.f6130b;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$b;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "", "nanoTime", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "<init>", "(JLjava/lang/Runnable;)V", "", "run", "()V", "", "toString", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class b extends DelayedTask {

        /* renamed from: b, reason: collision with root package name */
        public final Runnable f6131b;

        public b(long j, @NotNull Runnable runnable) {
            super(j);
            this.f6131b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6131b.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        @NotNull
        public String toString() {
            return super.toString() + this.f6131b;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "timeNow", "", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DelayedTaskQueue extends ThreadSafeHeap<DelayedTask> {

        @JvmField
        public long timeNow;

        public DelayedTaskQueue(long j) {
            this.timeNow = j;
        }
    }
}
