package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\fj\u0002`\r2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0014\u0010\u0006J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0015\u0010\u0006J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001e8\u0002X\u0082\u0004R\u000b\u0010!\u001a\u00020 8\u0002X\u0082\u0004R\u000b\u0010\"\u001a\u00020 8\u0002X\u0082\u0004R\u000b\u0010#\u001a\u00020 8\u0002X\u0082\u0004¨\u0006$"}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "", "<init>", "()V", "Lkotlinx/coroutines/scheduling/Task;", "poll", "()Lkotlinx/coroutines/scheduling/Task;", "task", "", "fair", "add", "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTaskRef", "", "trySteal", "(ILkotlin/jvm/internal/Ref$ObjectRef;)J", "pollBlocking", "pollCpu", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "", "offloadAllWorkTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V", "getSize$kotlinx_coroutines_core", "()I", "size", "Lkotlinx/atomicfu/AtomicRef;", "lastScheduledTask", "Lkotlinx/atomicfu/AtomicInt;", "producerIndex", "consumerIndex", "blockingTasksInBuffer", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,251:1\n77#2:252\n77#2:253\n77#2:254\n77#2:257\n77#2:258\n1#3:255\n21#4:256\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n91#1:252\n158#1:253\n181#1:254\n201#1:257\n245#1:258\n201#1:256\n*E\n"})
/* loaded from: classes2.dex */
public final class WorkQueue {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6679b = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f6680a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    public final Task a(Task task) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = c;
        if (atomicIntegerFieldUpdater.get(this) - d.get(this) == 127) {
            return task;
        }
        if (task.taskContext) {
            e.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & WorkQueueKt.MASK;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f6680a;
            if (atomicReferenceArray.get(i) != null) {
                Thread.yield();
            } else {
                atomicReferenceArray.lazySet(i, task);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
        }
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = f6679b.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = c;
        return obj != null ? (atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this)) + 1 : atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this);
    }

    @Nullable
    public final Task poll() {
        Task task = (Task) f6679b.getAndSet(this, null);
        return task == null ? b() : task;
    }

    public static /* synthetic */ Task add$default(WorkQueue workQueue, Task task, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return workQueue.add(task, z);
    }

    @Nullable
    public final Task add(@NotNull Task task, boolean fair) {
        if (fair) {
            return a(task);
        }
        Task task2 = (Task) f6679b.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return a(task2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [kotlinx.coroutines.scheduling.Task] */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlinx.coroutines.scheduling.Task] */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.Task] */
    public final long trySteal(int stealingMode, @NotNull Ref.ObjectRef<Task> stolenTaskRef) {
        T tD;
        if (stealingMode == 3) {
            tD = b();
        } else {
            int i = d.get(this);
            int i2 = c.get(this);
            boolean z = stealingMode == 1;
            while (i != i2 && (!z || e.get(this) != 0)) {
                int i3 = i + 1;
                tD = d(i, z);
                if (tD != 0) {
                    break;
                }
                i = i3;
            }
            tD = 0;
        }
        if (tD != 0) {
            stolenTaskRef.element = tD;
            return -1L;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6679b;
            ?? r5 = (Task) atomicReferenceFieldUpdater.get(this);
            if (r5 == 0) {
                return -2L;
            }
            if (((r5.taskContext ? 1 : 2) & stealingMode) == 0) {
                return -2L;
            }
            long jNanoTime = TasksKt.schedulerTimeSource.nanoTime() - r5.submissionTime;
            long j = TasksKt.WORK_STEALING_TIME_RESOLUTION_NS;
            if (jNanoTime < j) {
                return j - jNanoTime;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, r5, null)) {
                if (atomicReferenceFieldUpdater.get(this) != r5) {
                    break;
                }
            }
            stolenTaskRef.element = r5;
            return -1L;
        }
    }

    @Nullable
    public final Task pollBlocking() {
        return c(true);
    }

    @Nullable
    public final Task pollCpu() {
        return c(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        r0 = kotlinx.coroutines.scheduling.WorkQueue.d.get(r4);
        r1 = kotlinx.coroutines.scheduling.WorkQueue.c.get(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        if (r0 == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r5 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        if (kotlinx.coroutines.scheduling.WorkQueue.e.get(r4) != 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        r1 = r1 - 1;
        r3 = d(r1, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        if (r3 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.scheduling.Task c(boolean r5) {
        /*
            r4 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.scheduling.WorkQueue.f6679b
            java.lang.Object r1 = r0.get(r4)
            kotlinx.coroutines.scheduling.Task r1 = (kotlinx.coroutines.scheduling.Task) r1
            r2 = 0
            if (r1 != 0) goto Lc
            goto L1e
        Lc:
            boolean r3 = r1.taskContext
            if (r3 != r5) goto L1e
        L10:
            boolean r3 = r0.compareAndSet(r4, r1, r2)
            if (r3 == 0) goto L17
            return r1
        L17:
            java.lang.Object r3 = r0.get(r4)
            if (r3 == r1) goto L10
            goto L0
        L1e:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.WorkQueue.d
            int r0 = r0.get(r4)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = kotlinx.coroutines.scheduling.WorkQueue.c
            int r1 = r1.get(r4)
        L2a:
            if (r0 == r1) goto L40
            if (r5 == 0) goto L37
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r3 = kotlinx.coroutines.scheduling.WorkQueue.e
            int r3 = r3.get(r4)
            if (r3 != 0) goto L37
            goto L40
        L37:
            int r1 = r1 + (-1)
            kotlinx.coroutines.scheduling.Task r3 = r4.d(r1, r5)
            if (r3 == 0) goto L2a
            return r3
        L40:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.WorkQueue.c(boolean):kotlinx.coroutines.scheduling.Task");
    }

    public final Task d(int i, boolean z) {
        int i2 = i & WorkQueueKt.MASK;
        AtomicReferenceArray atomicReferenceArray = this.f6680a;
        Task task = (Task) atomicReferenceArray.get(i2);
        if (task != null && task.taskContext == z) {
            while (!atomicReferenceArray.compareAndSet(i2, task, null)) {
                if (atomicReferenceArray.get(i2) != task) {
                }
            }
            if (z) {
                e.decrementAndGet(this);
            }
            return task;
        }
        return null;
    }

    public final void offloadAllWorkTo(@NotNull GlobalQueue globalQueue) {
        Task task = (Task) f6679b.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        while (true) {
            Task taskB = b();
            if (taskB == null) {
                return;
            } else {
                globalQueue.addLast(taskB);
            }
        }
    }

    public final Task b() {
        Task task;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - c.get(this) == 0) {
                return null;
            }
            int i2 = i & WorkQueueKt.MASK;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (task = (Task) this.f6680a.getAndSet(i2, null)) != null) {
                if (task.taskContext) {
                    e.decrementAndGet(this);
                }
                return task;
            }
        }
    }
}
