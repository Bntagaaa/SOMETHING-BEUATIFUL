package kotlinx.coroutines.internal;

import android.Manifest;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 $*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002%$B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u0015\"\u0004\b\u0001\u0010\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\nR\u0011\u0010\u0019\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\nR\u0011\u0010\u001c\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR%\u0010\u001f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u001e0\u001d8\u0002X\u0082\u0004R\u000b\u0010!\u001a\u00020 8\u0002X\u0082\u0004R\u0013\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\"8\u0002X\u0082\u0004¨\u0006&"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "", "E", "", "capacity", "", "singleConsumer", "<init>", "(IZ)V", "close", "()Z", "element", "addLast", "(Ljava/lang/Object;)I", "removeFirstOrNull", "()Ljava/lang/Object;", "next", "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "isClosed", "isEmpty", "getSize", "()I", "size", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/internal/Core;", "_next", "Lkotlinx/atomicfu/AtomicLong;", "_state", "Lkotlinx/atomicfu/AtomicArray;", "array", "Companion", "Placeholder", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n295#2,3:305\n295#2,3:308\n295#2,3:311\n295#2,3:314\n295#2,3:317\n295#2,3:321\n295#2,3:324\n1#3:320\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n87#1:305,3\n88#1:308,3\n103#1:311,3\n163#1:314,3\n196#1:317,3\n227#1:321,3\n243#1:324,3\n*E\n"})
/* loaded from: classes2.dex */
public final class LockFreeTaskQueueCore<E> {
    public static final int ADD_CLOSED = 2;
    public static final int ADD_FROZEN = 1;
    public static final int ADD_SUCCESS = 0;
    public static final int CAPACITY_BITS = 30;
    public static final long CLOSED_MASK = 2305843009213693952L;
    public static final int CLOSED_SHIFT = 61;
    public static final long FROZEN_MASK = 1152921504606846976L;
    public static final int FROZEN_SHIFT = 60;
    public static final long HEAD_MASK = 1073741823;
    public static final int HEAD_SHIFT = 0;
    public static final int INITIAL_CAPACITY = 8;
    public static final int MAX_CAPACITY_MASK = 1073741823;
    public static final int MIN_ADD_SPIN_CAPACITY = 1024;
    public static final long TAIL_MASK = 1152921503533105152L;
    public static final int TAIL_SHIFT = 30;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final int f6632a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6633b;
    public final int c;
    public final /* synthetic */ AtomicReferenceArray d;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state$volatile");

    @JvmField
    @NotNull
    public static final Symbol REMOVE_FROZEN = new Symbol("REMOVE_FROZEN");

    public LockFreeTaskQueueCore(int i, boolean z) {
        this.f6632a = i;
        this.f6633b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i & i2) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final boolean isEmpty() {
        long j = f.get(this);
        return ((int) (HEAD_MASK & j)) == ((int) ((j & TAIL_MASK) >> 30));
    }

    public final int getSize() {
        long j = f.get(this);
        return 1073741823 & (((int) ((j & TAIL_MASK) >> 30)) - ((int) (HEAD_MASK & j)));
    }

    public final boolean close() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        do {
            atomicLongFieldUpdater = f;
            j = atomicLongFieldUpdater.get(this);
            if ((j & CLOSED_MASK) != 0) {
                return true;
            }
            if ((FROZEN_MASK & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, CLOSED_MASK | j));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int addLast(@org.jetbrains.annotations.NotNull E r13) {
        /*
            r12 = this;
        L0:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.f
            long r3 = r0.get(r12)
            r1 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r1 = r1 & r3
            r7 = 0
            int r5 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r5 == 0) goto L16
            kotlinx.coroutines.internal.LockFreeTaskQueueCore$Companion r13 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.INSTANCE
            int r13 = r13.addFailReason(r3)
            return r13
        L16:
            r1 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r1 = r1 & r3
            int r2 = (int) r1
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r5 = r5 & r3
            r1 = 30
            long r5 = r5 >> r1
            int r9 = (int) r5
            int r1 = r9 + 2
            int r10 = r12.c
            r1 = r1 & r10
            r5 = r2 & r10
            r6 = 1
            if (r1 != r5) goto L30
            return r6
        L30:
            boolean r1 = r12.f6633b
            r5 = 1073741823(0x3fffffff, float:1.9999999)
            java.util.concurrent.atomic.AtomicReferenceArray r11 = r12.d
            if (r1 != 0) goto L4f
            r1 = r9 & r10
            java.lang.Object r1 = r11.get(r1)
            if (r1 == 0) goto L4f
            r0 = 1024(0x400, float:1.435E-42)
            int r1 = r12.f6632a
            if (r1 < r0) goto L4e
            int r9 = r9 - r2
            r0 = r9 & r5
            int r1 = r1 >> 1
            if (r0 <= r1) goto L0
        L4e:
            return r6
        L4f:
            int r1 = r9 + 1
            r1 = r1 & r5
            kotlinx.coroutines.internal.LockFreeTaskQueueCore$Companion r2 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.INSTANCE
            long r5 = r2.updateTail(r3, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.f
            r2 = r12
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            if (r1 == 0) goto L0
            r1 = r9 & r10
            r11.set(r1, r13)
            r1 = r12
        L67:
            long r2 = r0.get(r1)
            r4 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r2 = r2 & r4
            int r4 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r4 == 0) goto L90
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r1 = r1.next()
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r1.d
            int r3 = r1.c
            r3 = r3 & r9
            java.lang.Object r4 = r2.get(r3)
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore.Placeholder
            if (r5 == 0) goto L8d
            kotlinx.coroutines.internal.LockFreeTaskQueueCore$Placeholder r4 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore.Placeholder) r4
            int r4 = r4.index
            if (r4 != r9) goto L8d
            r2.set(r3, r13)
            goto L8e
        L8d:
            r1 = 0
        L8e:
            if (r1 != 0) goto L67
        L90:
            r13 = 0
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeTaskQueueCore.addLast(java.lang.Object):int");
    }

    @Nullable
    public final Object removeFirstOrNull() {
        Object obj;
        boolean z;
        int i;
        do {
            do {
                long j = f.get(this);
                if ((j & FROZEN_MASK) != 0) {
                    return REMOVE_FROZEN;
                }
                int i2 = (int) (j & HEAD_MASK);
                int i3 = (int) ((TAIL_MASK & j) >> 30);
                int i4 = this.c;
                if ((i3 & i4) == (i2 & i4)) {
                    return null;
                }
                AtomicReferenceArray atomicReferenceArray = this.d;
                obj = atomicReferenceArray.get(i2 & i4);
                z = this.f6633b;
                if (obj != null) {
                    if (obj instanceof Placeholder) {
                        return null;
                    }
                    i = (i2 + 1) & MAX_CAPACITY_MASK;
                    if (f.compareAndSet(this, j, INSTANCE.updateHead(j, i))) {
                        atomicReferenceArray.set(i2 & i4, null);
                        return obj;
                    }
                }
            } while (!z);
            return null;
        } while (!z);
        LockFreeTaskQueueCore<E> next = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j2 = atomicLongFieldUpdater.get(next);
            int i5 = (int) (j2 & HEAD_MASK);
            if ((j2 & FROZEN_MASK) != 0) {
                next = next.next();
            } else if (atomicLongFieldUpdater.compareAndSet(next, j2, INSTANCE.updateHead(j2, i))) {
                next.d.set(i5 & next.c, null);
                next = null;
            } else {
                continue;
            }
            if (next == null) {
                return obj;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final LockFreeTaskQueueCore<E> next() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore;
        while (true) {
            atomicLongFieldUpdater = f;
            j = atomicLongFieldUpdater.get(this);
            if ((j & FROZEN_MASK) != 0) {
                lockFreeTaskQueueCore = this;
                break;
            }
            long j2 = j | FROZEN_MASK;
            lockFreeTaskQueueCore = this;
            if (atomicLongFieldUpdater.compareAndSet(lockFreeTaskQueueCore, j, j2)) {
                j = j2;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore2 = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            if (lockFreeTaskQueueCore2 != null) {
                return lockFreeTaskQueueCore2;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCore3 = new LockFreeTaskQueueCore(lockFreeTaskQueueCore.f6632a * 2, lockFreeTaskQueueCore.f6633b);
            int i = (int) (HEAD_MASK & j);
            int i2 = (int) ((TAIL_MASK & j) >> 30);
            while (true) {
                int i3 = lockFreeTaskQueueCore.c;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object placeholder = lockFreeTaskQueueCore.d.get(i4);
                if (placeholder == null) {
                    placeholder = new Placeholder(i);
                }
                lockFreeTaskQueueCore3.d.set(lockFreeTaskQueueCore3.c & i, placeholder);
                i++;
            }
            atomicLongFieldUpdater.set(lockFreeTaskQueueCore3, INSTANCE.wo(j, FROZEN_MASK));
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, lockFreeTaskQueueCore3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    @NotNull
    public final <R> List<R> map(@NotNull Function1<? super E, ? extends R> transform) {
        ArrayList arrayList = new ArrayList(this.f6632a);
        long j = f.get(this);
        int i = (int) (HEAD_MASK & j);
        int i2 = (int) ((j & TAIL_MASK) >> 30);
        while (true) {
            int i3 = this.c;
            if ((i & i3) == (i2 & i3)) {
                return arrayList;
            }
            Manifest.permission_group permission_groupVar = (Object) this.d.get(i3 & i);
            if (permission_groupVar != null && !(permission_groupVar instanceof Placeholder)) {
                arrayList.add(transform.invoke(permission_groupVar));
            }
            i++;
        }
    }

    public final boolean isClosed() {
        return (f.get(this) & CLOSED_MASK) != 0;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;", "", "index", "", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Placeholder {

        @JvmField
        public final int index;

        public Placeholder(int i) {
            this.index = i;
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0086\u0004J\u0012\u0010\u0019\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0005J\u0012\u0010\u001b\u001a\u00020\n*\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0005JP\u0010\u001d\u001a\u0002H\u001e\"\u0004\b\u0001\u0010\u001e*\u00020\n26\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b($\u0012\u0004\u0012\u0002H\u001e0 H\u0086\b¢\u0006\u0002\u0010%J\n\u0010&\u001a\u00020\u0005*\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;", "", "<init>", "()V", "INITIAL_CAPACITY", "", "CAPACITY_BITS", "MAX_CAPACITY_MASK", "HEAD_SHIFT", "HEAD_MASK", "", "TAIL_SHIFT", "TAIL_MASK", "FROZEN_SHIFT", "FROZEN_MASK", "CLOSED_SHIFT", "CLOSED_MASK", "MIN_ADD_SPIN_CAPACITY", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/Symbol;", "ADD_SUCCESS", "ADD_FROZEN", "ADD_CLOSED", "wo", "other", "updateHead", "newHead", "updateTail", "newTail", "withState", "T", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "tail", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "addFailReason", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int addFailReason(long j) {
            return (j & LockFreeTaskQueueCore.CLOSED_MASK) != 0 ? 2 : 1;
        }

        public final long wo(long j, long j2) {
            return j & (~j2);
        }

        private Companion() {
        }

        public final long updateHead(long j, int i) {
            return wo(j, LockFreeTaskQueueCore.HEAD_MASK) | i;
        }

        public final long updateTail(long j, int i) {
            return wo(j, LockFreeTaskQueueCore.TAIL_MASK) | (i << 30);
        }

        public final <T> T withState(long j, @NotNull Function2<? super Integer, ? super Integer, ? extends T> function2) {
            return function2.invoke(Integer.valueOf((int) (LockFreeTaskQueueCore.HEAD_MASK & j)), Integer.valueOf((int) ((j & LockFreeTaskQueueCore.TAIL_MASK) >> 30)));
        }
    }
}
