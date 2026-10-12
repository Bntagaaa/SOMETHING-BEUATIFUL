package kotlinx.coroutines.scheduling;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.AbstractTimeSource;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0003CDEB+\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\fR\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\n\u0010\r\u001a\u00060\fR\u00020\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0006H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001c\u001a\u00020\u00102\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J1\u0010'\u001a\u00020\u00102\n\u0010#\u001a\u00060\u0019j\u0002`\u001a2\f\b\u0002\u0010%\u001a\u00060\u0013j\u0002`$2\b\b\u0002\u0010&\u001a\u00020\u0013¢\u0006\u0004\b'\u0010(J%\u0010*\u001a\u00020)2\n\u0010#\u001a\u00060\u0019j\u0002`\u001a2\n\u0010%\u001a\u00060\u0013j\u0002`$¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0010¢\u0006\u0004\b,\u0010\u001fJ\u000f\u0010-\u001a\u00020\bH\u0016¢\u0006\u0004\b-\u0010.J\u0015\u00100\u001a\u00020\u00102\u0006\u0010/\u001a\u00020)¢\u0006\u0004\b0\u00101R\u0014\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u00102R\u0014\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u00102R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u00103R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u00104R\u0014\u00106\u001a\u0002058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u00108\u001a\u0002058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u00107R\u001e\u0010:\u001a\f\u0012\b\u0012\u00060\fR\u00020\u0000098\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0011\u0010<\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b<\u0010=R\u000b\u0010?\u001a\u00020>8\u0002X\u0082\u0004R\u000b\u0010@\u001a\u00020>8\u0002X\u0082\u0004R\u000b\u0010B\u001a\u00020A8\u0002X\u0082\u0004¨\u0006F"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "", "corePoolSize", "maxPoolSize", "", "idleWorkerKeepAliveNs", "", "schedulerName", "<init>", "(IIJLjava/lang/String;)V", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "worker", "oldIndex", "newIndex", "", "parkedWorkersStackTopUpdate", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V", "", "parkedWorkersStackPush", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z", "state", "availableCpuPermits", "(J)I", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "command", "execute", "(Ljava/lang/Runnable;)V", "close", "()V", "timeout", "shutdown", "(J)V", "block", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "fair", "dispatch", "(Ljava/lang/Runnable;ZZ)V", "Lkotlinx/coroutines/scheduling/Task;", "createTask", "(Ljava/lang/Runnable;Z)Lkotlinx/coroutines/scheduling/Task;", "signalCpuWork", "toString", "()Ljava/lang/String;", "task", "runSafely", "(Lkotlinx/coroutines/scheduling/Task;)V", "I", "J", "Ljava/lang/String;", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalBlockingQueue", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "workers", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "isTerminated", "()Z", "Lkotlinx/atomicfu/AtomicLong;", "parkedWorkersStack", "controlState", "Lkotlinx/atomicfu/AtomicBoolean;", "_isTerminated", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1041:1\n286#1:1044\n284#1:1045\n284#1:1046\n286#1:1047\n281#1:1050\n282#1,5:1051\n292#1:1057\n284#1:1058\n285#1:1059\n284#1:1062\n285#1:1063\n281#1:1064\n289#1:1065\n284#1:1066\n284#1:1069\n285#1:1070\n286#1:1071\n77#2:1042\n77#2:1056\n77#2:1067\n1#3:1043\n29#4:1048\n29#4:1060\n16#5:1049\n16#5:1061\n619#6:1068\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n282#1:1044\n289#1:1045\n290#1:1046\n299#1:1047\n348#1:1050\n377#1:1051,5\n400#1:1057\n444#1:1058\n445#1:1059\n481#1:1062\n482#1:1063\n488#1:1064\n497#1:1065\n497#1:1066\n578#1:1069\n579#1:1070\n580#1:1071\n120#1:1042\n397#1:1056\n514#1:1067\n348#1:1048\n477#1:1060\n348#1:1049\n477#1:1061\n521#1:1068\n*E\n"})
/* loaded from: classes2.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final int MAX_SUPPORTED_POOL_SIZE = 2097150;
    public static final int MIN_SUPPORTED_POOL_SIZE = 1;
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;

    @JvmField
    public final int corePoolSize;

    @JvmField
    @NotNull
    public final GlobalQueue globalBlockingQueue;

    @JvmField
    @NotNull
    public final GlobalQueue globalCpuQueue;

    @JvmField
    public final long idleWorkerKeepAliveNs;

    @JvmField
    public final int maxPoolSize;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    @JvmField
    @NotNull
    public final String schedulerName;

    @JvmField
    @NotNull
    public final ResizableAtomicArray<Worker> workers;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f6670a = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f6671b = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    @JvmField
    @NotNull
    public static final Symbol NOT_IN_STACK = new Symbol("NOT_IN_STACK");

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final int availableCpuPermits(long state) {
        return (int) ((state & 9223367638808264704L) >> 42);
    }

    public CoroutineScheduler(int i, int i2, long j, @NotNull String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (i < 1) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i, "Core pool size ", " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(_COROUTINE.a.c(i2, i, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(_COROUTINE.a.e(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.globalCpuQueue = new GlobalQueue();
        this.globalBlockingQueue = new GlobalQueue();
        this.workers = new ResizableAtomicArray<>((i + 1) * 2);
        this.controlState$volatile = i << 42;
    }

    public /* synthetic */ CoroutineScheduler(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? TasksKt.IDLE_WORKER_KEEP_ALIVE_NS : j, (i3 & 8) != 0 ? TasksKt.DEFAULT_SCHEDULER_NAME : str);
    }

    public final void parkedWorkersStackTopUpdate(@NotNull Worker worker, int oldIndex, int newIndex) {
        while (true) {
            long j = f6670a.get(this);
            int indexInArray = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (indexInArray == oldIndex) {
                if (newIndex == 0) {
                    Object nextParkedWorker = worker.getNextParkedWorker();
                    while (true) {
                        if (nextParkedWorker == NOT_IN_STACK) {
                            indexInArray = -1;
                            break;
                        }
                        if (nextParkedWorker == null) {
                            indexInArray = 0;
                            break;
                        }
                        Worker worker2 = (Worker) nextParkedWorker;
                        indexInArray = worker2.getIndexInArray();
                        if (indexInArray != 0) {
                            break;
                        } else {
                            nextParkedWorker = worker2.getNextParkedWorker();
                        }
                    }
                } else {
                    indexInArray = newIndex;
                }
            }
            if (indexInArray >= 0) {
                if (f6670a.compareAndSet(this, j, j2 | indexInArray)) {
                    return;
                }
            }
        }
    }

    public final boolean parkedWorkersStackPush(@NotNull Worker worker) {
        long j;
        int indexInArray;
        if (worker.getNextParkedWorker() != NOT_IN_STACK) {
            return false;
        }
        do {
            j = f6670a.get(this);
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.workers.get((int) (2097151 & j)));
        } while (!f6670a.compareAndSet(this, j, ((2097152 + j) & (-2097152)) | indexInArray));
        return true;
    }

    public final boolean c() {
        Symbol symbol;
        int indexInArray;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f6670a;
            long j = atomicLongFieldUpdater.get(this);
            Worker worker = this.workers.get((int) (2097151 & j));
            if (worker == null) {
                worker = null;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object nextParkedWorker = worker.getNextParkedWorker();
                while (true) {
                    symbol = NOT_IN_STACK;
                    if (nextParkedWorker == symbol) {
                        indexInArray = -1;
                        break;
                    }
                    if (nextParkedWorker == null) {
                        indexInArray = 0;
                        break;
                    }
                    Worker worker2 = (Worker) nextParkedWorker;
                    indexInArray = worker2.getIndexInArray();
                    if (indexInArray != 0) {
                        break;
                    }
                    nextParkedWorker = worker2.getNextParkedWorker();
                }
                if (indexInArray >= 0 && atomicLongFieldUpdater.compareAndSet(this, j, j2 | indexInArray)) {
                    worker.setNextParkedWorker(symbol);
                }
            }
            if (worker == null) {
                return false;
            }
            if (Worker.f.compareAndSet(worker, -1, 0)) {
                LockSupport.unpark(worker);
                return true;
            }
        }
    }

    public final boolean isTerminated() {
        return c.get(this) == 1;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable command) {
        dispatch$default(this, command, false, false, 6, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        shutdown(10000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void shutdown(long r9) throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.c
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof kotlinx.coroutines.scheduling.CoroutineScheduler.Worker
            r3 = 0
            if (r1 == 0) goto L17
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r0 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r0
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 == 0) goto L25
            kotlinx.coroutines.scheduling.CoroutineScheduler r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.access$getThis$0$p(r0)
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r8)
            if (r1 == 0) goto L25
            r3 = r0
        L25:
            kotlinx.coroutines.internal.ResizableAtomicArray<kotlinx.coroutines.scheduling.CoroutineScheduler$Worker> r0 = r8.workers
            monitor-enter(r0)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getControlState$volatile$FU()     // Catch: java.lang.Throwable -> L9f
            long r4 = r1.get(r8)     // Catch: java.lang.Throwable -> L9f
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r1 = (int) r4
            monitor-exit(r0)
            if (r2 > r1) goto L61
            r0 = 1
        L39:
            kotlinx.coroutines.internal.ResizableAtomicArray<kotlinx.coroutines.scheduling.CoroutineScheduler$Worker> r4 = r8.workers
            java.lang.Object r4 = r4.get(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r4 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r4
            if (r4 == r3) goto L5c
        L46:
            java.lang.Thread$State r5 = r4.getState()
            java.lang.Thread$State r6 = java.lang.Thread.State.TERMINATED
            if (r5 == r6) goto L55
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r4.join(r9)
            goto L46
        L55:
            kotlinx.coroutines.scheduling.WorkQueue r4 = r4.localQueue
            kotlinx.coroutines.scheduling.GlobalQueue r5 = r8.globalBlockingQueue
            r4.offloadAllWorkTo(r5)
        L5c:
            if (r0 == r1) goto L61
            int r0 = r0 + 1
            goto L39
        L61:
            kotlinx.coroutines.scheduling.GlobalQueue r9 = r8.globalBlockingQueue
            r9.close()
            kotlinx.coroutines.scheduling.GlobalQueue r9 = r8.globalCpuQueue
            r9.close()
        L6b:
            if (r3 == 0) goto L73
            kotlinx.coroutines.scheduling.Task r9 = r3.findTask(r2)
            if (r9 != 0) goto L9b
        L73:
            kotlinx.coroutines.scheduling.GlobalQueue r9 = r8.globalCpuQueue
            java.lang.Object r9 = r9.removeFirstOrNull()
            kotlinx.coroutines.scheduling.Task r9 = (kotlinx.coroutines.scheduling.Task) r9
            if (r9 != 0) goto L9b
            kotlinx.coroutines.scheduling.GlobalQueue r9 = r8.globalBlockingQueue
            java.lang.Object r9 = r9.removeFirstOrNull()
            kotlinx.coroutines.scheduling.Task r9 = (kotlinx.coroutines.scheduling.Task) r9
            if (r9 != 0) goto L9b
            if (r3 == 0) goto L8e
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r9 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.TERMINATED
            r3.tryReleaseCpu(r9)
        L8e:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r9 = kotlinx.coroutines.scheduling.CoroutineScheduler.f6670a
            r0 = 0
            r9.set(r8, r0)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r9 = kotlinx.coroutines.scheduling.CoroutineScheduler.f6671b
            r9.set(r8, r0)
            return
        L9b:
            r8.runSafely(r9)
            goto L6b
        L9f:
            r9 = move-exception
            monitor-exit(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.shutdown(long):void");
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        coroutineScheduler.dispatch(runnable, z, z2);
    }

    public final void dispatch(@NotNull Runnable block, boolean taskContext, boolean fair) {
        WorkerState workerState;
        AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
        if (abstractTimeSource != null) {
            abstractTimeSource.trackTask();
        }
        Task taskCreateTask = createTask(block, taskContext);
        boolean z = taskCreateTask.taskContext;
        long jAddAndGet = z ? f6671b.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = null;
        Worker worker2 = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker2 != null && Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            worker = worker2;
        }
        if (worker != null && (workerState = worker.state) != WorkerState.TERMINATED && (taskCreateTask.taskContext || workerState != WorkerState.BLOCKING)) {
            worker.mayHaveLocalTasks = true;
            taskCreateTask = worker.localQueue.add(taskCreateTask, fair);
        }
        if (taskCreateTask != null) {
            if (!(taskCreateTask.taskContext ? this.globalBlockingQueue.addLast(taskCreateTask) : this.globalCpuQueue.addLast(taskCreateTask))) {
                throw new RejectedExecutionException(_COROUTINE.a.m(new StringBuilder(), this.schedulerName, " was terminated"));
            }
        }
        if (!z) {
            signalCpuWork();
        } else {
            if (c() || b(jAddAndGet)) {
                return;
            }
            c();
        }
    }

    @NotNull
    public final Task createTask(@NotNull Runnable block, boolean taskContext) {
        long jNanoTime = TasksKt.schedulerTimeSource.nanoTime();
        if (block instanceof Task) {
            Task task = (Task) block;
            task.submissionTime = jNanoTime;
            task.taskContext = taskContext;
            return task;
        }
        return TasksKt.asTask(block, jNanoTime, taskContext);
    }

    public final void signalCpuWork() {
        if (c() || b(f6671b.get(this))) {
            return;
        }
        c();
    }

    public final boolean b(long j) {
        if (RangesKt.coerceAtLeast(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0) < this.corePoolSize) {
            int iA = a();
            if (iA == 1 && this.corePoolSize > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    public final int a() {
        synchronized (this.workers) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f6671b;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int iCoerceAtLeast = RangesKt.coerceAtLeast(i - ((int) ((j & 4398044413952L) >> 21)), 0);
                if (iCoerceAtLeast >= this.corePoolSize) {
                    return 0;
                }
                if (i >= this.maxPoolSize) {
                    return 0;
                }
                int i2 = ((int) (f6671b.get(this) & 2097151)) + 1;
                if (i2 <= 0 || this.workers.get(i2) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(i2);
                this.workers.setSynchronized(i2, worker);
                if (i2 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i3 = iCoerceAtLeast + 1;
                worker.start();
                return i3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iCurrentLength = this.workers.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < iCurrentLength; i6++) {
            Worker worker = this.workers.get(i6);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 == 1) {
                    i3++;
                } else if (i7 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(size$kotlinx_coroutines_core);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i7 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(size$kotlinx_coroutines_core);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i7 == 4) {
                    i4++;
                    if (size$kotlinx_coroutines_core > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(size$kotlinx_coroutines_core);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (i7 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i5++;
                }
            }
        }
        long j = f6671b.get(this);
        return this.schedulerName + '@' + DebugStringsKt.getHexAddress(this) + "[Pool Size {core = " + this.corePoolSize + ", max = " + this.maxPoolSize + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.globalCpuQueue.getSize() + ", global blocking queue size = " + this.globalBlockingQueue.getSize() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.corePoolSize - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }

    public final void runSafely(@NotNull Task task) {
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                AbstractTimeSource abstractTimeSource = AbstractTimeSourceKt.f6106a;
                if (abstractTimeSource != null) {
                    abstractTimeSource.unTrackTask();
                }
            } finally {
                AbstractTimeSource abstractTimeSource2 = AbstractTimeSourceKt.f6106a;
                if (abstractTimeSource2 != null) {
                    abstractTimeSource2.unTrackTask();
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0018\u0010\u0019R*\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010\u0016\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010,R\u0012\u00100\u001a\u00020-8Æ\u0002¢\u0006\u0006\u001a\u0004\b.\u0010/R\b\u00102\u001a\u0002018\u0006¨\u00063"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "", "index", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "", "run", "()V", "", "runSingleTask", "()J", "isIo", "()Z", "upperBound", "nextInt", "(I)I", "mayHaveLocalTasks", "Lkotlinx/coroutines/scheduling/Task;", "findTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "Lkotlinx/coroutines/scheduling/WorkQueue;", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1041:1\n298#2,2:1042\n286#2:1044\n300#2,4:1045\n305#2:1049\n295#2,2:1050\n295#2,2:1055\n281#2:1059\n290#2:1060\n284#2:1061\n281#2:1062\n1#3:1052\n77#4:1053\n77#4:1054\n29#5:1057\n16#6:1058\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n684#1:1042,2\n684#1:1044\n684#1:1045,4\n699#1:1049\n773#1:1050,2\n821#1:1055,2\n872#1:1059\n898#1:1060\n898#1:1061\n971#1:1062\n812#1:1053\n815#1:1054\n868#1:1057\n868#1:1058\n*E\n"})
    public final class Worker extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");

        /* renamed from: a, reason: collision with root package name */
        public final Ref.ObjectRef f6672a;

        /* renamed from: b, reason: collision with root package name */
        public long f6673b;
        public long c;
        public int d;
        private volatile int indexInArray;

        @JvmField
        @NotNull
        public final WorkQueue localQueue;

        @JvmField
        public boolean mayHaveLocalTasks;

        @Nullable
        private volatile Object nextParkedWorker;

        @JvmField
        @NotNull
        public WorkerState state;
        private volatile /* synthetic */ int workerCtl$volatile;

        public final /* synthetic */ int getWorkerCtl$volatile() {
            return this.workerCtl$volatile;
        }

        public final /* synthetic */ void setWorkerCtl$volatile(int i) {
            this.workerCtl$volatile = i;
        }

        public Worker(int i) {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.localQueue = new WorkQueue();
            this.f6672a = new Ref.ObjectRef();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            int iNanoTime = (int) System.nanoTime();
            this.d = iNanoTime == 0 ? 42 : iNanoTime;
            setIndexInArray(i);
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final void setIndexInArray(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.schedulerName);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        @NotNull
        public final CoroutineScheduler getScheduler() {
            return CoroutineScheduler.this;
        }

        @Nullable
        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final void setNextParkedWorker(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        @Nullable
        public final Task findTask(boolean mayHaveLocalTasks) {
            Task taskA;
            Task taskA2;
            CoroutineScheduler coroutineScheduler;
            long j;
            WorkerState workerState = this.state;
            WorkerState workerState2 = WorkerState.CPU_ACQUIRED;
            CoroutineScheduler coroutineScheduler2 = CoroutineScheduler.this;
            if (workerState != workerState2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.f6671b;
                do {
                    coroutineScheduler = CoroutineScheduler.this;
                    j = atomicLongFieldUpdater.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        Task taskPollBlocking = this.localQueue.pollBlocking();
                        if (taskPollBlocking != null) {
                            return taskPollBlocking;
                        }
                        Task taskRemoveFirstOrNull = coroutineScheduler2.globalBlockingQueue.removeFirstOrNull();
                        return taskRemoveFirstOrNull == null ? b(1) : taskRemoveFirstOrNull;
                    }
                } while (!CoroutineScheduler.f6671b.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
                this.state = WorkerState.CPU_ACQUIRED;
            }
            if (mayHaveLocalTasks) {
                boolean z = nextInt(coroutineScheduler2.corePoolSize * 2) == 0;
                if (z && (taskA2 = a()) != null) {
                    return taskA2;
                }
                Task taskPoll = this.localQueue.poll();
                if (taskPoll != null) {
                    return taskPoll;
                }
                if (!z && (taskA = a()) != null) {
                    return taskA;
                }
            } else {
                Task taskA3 = a();
                if (taskA3 != null) {
                    return taskA3;
                }
            }
            return b(3);
        }

        public final boolean tryReleaseCpu(@NotNull WorkerState newState) {
            WorkerState workerState = this.state;
            boolean z = workerState == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.f6671b.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:94:0x0002, code lost:
        
            continue;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.run():void");
        }

        public final long runSingleTask() {
            Task taskB;
            boolean z = this.state == WorkerState.CPU_ACQUIRED;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            if (!z) {
                Task taskPollBlocking = this.localQueue.pollBlocking();
                taskB = (taskPollBlocking == null && (taskPollBlocking = coroutineScheduler.globalBlockingQueue.removeFirstOrNull()) == null) ? b(1) : taskPollBlocking;
            } else {
                taskB = this.localQueue.pollCpu();
                if (taskB == null && (taskB = coroutineScheduler.globalBlockingQueue.removeFirstOrNull()) == null) {
                    taskB = b(2);
                }
            }
            if (taskB == null) {
                long j = this.c;
                if (j == 0) {
                    return -1L;
                }
                return j;
            }
            coroutineScheduler.runSafely(taskB);
            if (!z) {
                CoroutineScheduler.f6671b.addAndGet(coroutineScheduler, -2097152L);
            }
            return 0L;
        }

        public final boolean isIo() {
            return this.state == WorkerState.BLOCKING;
        }

        public final int nextInt(int upperBound) {
            int i = this.d;
            int i2 = i ^ (i << 13);
            int i3 = i2 ^ (i2 >> 17);
            int i4 = i3 ^ (i3 << 5);
            this.d = i4;
            int i5 = upperBound - 1;
            return (i5 & upperBound) == 0 ? i4 & i5 : (i4 & Integer.MAX_VALUE) % upperBound;
        }

        public final Task a() {
            int iNextInt = nextInt(2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            if (iNextInt == 0) {
                Task taskRemoveFirstOrNull = coroutineScheduler.globalCpuQueue.removeFirstOrNull();
                return taskRemoveFirstOrNull != null ? taskRemoveFirstOrNull : coroutineScheduler.globalBlockingQueue.removeFirstOrNull();
            }
            Task taskRemoveFirstOrNull2 = coroutineScheduler.globalBlockingQueue.removeFirstOrNull();
            return taskRemoveFirstOrNull2 != null ? taskRemoveFirstOrNull2 : coroutineScheduler.globalCpuQueue.removeFirstOrNull();
        }

        public final Task b(int i) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.f6671b;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            int i2 = (int) (atomicLongFieldUpdater.get(coroutineScheduler) & 2097151);
            if (i2 < 2) {
                return null;
            }
            int iNextInt = nextInt(i2);
            long jMin = Long.MAX_VALUE;
            for (int i3 = 0; i3 < i2; i3++) {
                iNextInt++;
                if (iNextInt > i2) {
                    iNextInt = 1;
                }
                Worker worker = coroutineScheduler.workers.get(iNextInt);
                if (worker != null && worker != this) {
                    WorkQueue workQueue = worker.localQueue;
                    Ref.ObjectRef<Task> objectRef = this.f6672a;
                    long jTrySteal = workQueue.trySteal(i, objectRef);
                    if (jTrySteal == -1) {
                        Task task = objectRef.element;
                        objectRef.element = null;
                        return task;
                    }
                    if (jTrySteal > 0) {
                        jMin = Math.min(jMin, jTrySteal);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.c = jMin;
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class WorkerState {
        public static final WorkerState BLOCKING;
        public static final WorkerState CPU_ACQUIRED;
        public static final WorkerState DORMANT;
        public static final WorkerState PARKING;
        public static final WorkerState TERMINATED;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ WorkerState[] f6674a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ EnumEntries f6675b;

        @NotNull
        public static EnumEntries<WorkerState> getEntries() {
            return f6675b;
        }

        static {
            WorkerState workerState = new WorkerState("CPU_ACQUIRED", 0);
            CPU_ACQUIRED = workerState;
            WorkerState workerState2 = new WorkerState("BLOCKING", 1);
            BLOCKING = workerState2;
            WorkerState workerState3 = new WorkerState("PARKING", 2);
            PARKING = workerState3;
            WorkerState workerState4 = new WorkerState("DORMANT", 3);
            DORMANT = workerState4;
            WorkerState workerState5 = new WorkerState("TERMINATED", 4);
            TERMINATED = workerState5;
            WorkerState[] workerStateArr = {workerState, workerState2, workerState3, workerState4, workerState5};
            f6674a = workerStateArr;
            f6675b = EnumEntriesKt.enumEntries(workerStateArr);
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) f6674a.clone();
        }
    }
}
