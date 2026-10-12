package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J2\u0010\u000e\u001a\u0004\u0018\u00018\u00002!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0011J&\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\bH\u0086\b¢\u0006\u0004\b\u0013\u0010\u000fJ\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017J.\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028\u00002\u0014\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\f0\bH\u0086\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00018\u0000H\u0001¢\u0006\u0004\b\u001d\u0010\u0011J\u0017\u0010 \u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u001eH\u0001¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0001¢\u0006\u0004\b\"\u0010\u0017R$\u0010'\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u001e8F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0011\u0010(\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u000b\u0010+\u001a\u00020*8\u0002X\u0082\u0004¨\u0006,"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "T", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "<init>", "()V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "value", "", "predicate", "find", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", "removeFirstIf", "node", "", "addLast", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "firstImpl", "", "index", "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "addImpl", "getSize", "()I", "setSize", "(I)V", "size", "isEmpty", "()Z", "Lkotlinx/atomicfu/AtomicInt;", "_size", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n29#2:160\n29#2:162\n29#2:164\n29#2:166\n29#2:168\n29#2:170\n29#2:172\n16#3:161\n16#3:163\n16#3:165\n16#3:167\n16#3:169\n16#3:171\n16#3:173\n1#4:174\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n33#1:160\n41#1:162\n43#1:164\n51#1:166\n60#1:168\n63#1:170\n72#1:172\n33#1:161\n41#1:163\n43#1:165\n51#1:167\n60#1:169\n63#1:171\n72#1:173\n*E\n"})
/* loaded from: classes2.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f6646b = AtomicIntegerFieldUpdater.newUpdater(ThreadSafeHeap.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: a, reason: collision with root package name */
    public ThreadSafeHeapNode[] f6647a;

    public final int getSize() {
        return f6646b.get(this);
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    @PublishedApi
    @Nullable
    public final T firstImpl() {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f6647a;
        if (threadSafeHeapNodeArr != null) {
            return (T) threadSafeHeapNodeArr[0];
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[SYNTHETIC] */
    @kotlin.PublishedApi
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T removeAtImpl(int r8) {
        /*
            r7 = this;
            kotlinx.coroutines.internal.ThreadSafeHeapNode[] r0 = r7.f6647a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r1 = r7.getSize()
            r2 = -1
            int r1 = r1 + r2
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r3 = kotlinx.coroutines.internal.ThreadSafeHeap.f6646b
            r3.set(r7, r1)
            int r1 = r7.getSize()
            if (r8 >= r1) goto L80
            int r1 = r7.getSize()
            r7.b(r8, r1)
            int r1 = r8 + (-1)
            int r1 = r1 / 2
            if (r8 <= 0) goto L3c
            r3 = r0[r8]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r0[r1]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L3c
            r7.b(r8, r1)
            r7.a(r1)
            goto L80
        L3c:
            int r1 = r8 * 2
            int r3 = r1 + 1
            int r4 = r7.getSize()
            if (r3 < r4) goto L47
            goto L80
        L47:
            kotlinx.coroutines.internal.ThreadSafeHeapNode[] r4 = r7.f6647a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            int r1 = r1 + 2
            int r5 = r7.getSize()
            if (r1 >= r5) goto L67
            r5 = r4[r1]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            java.lang.Comparable r5 = (java.lang.Comparable) r5
            r6 = r4[r3]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            int r5 = r5.compareTo(r6)
            if (r5 >= 0) goto L67
            goto L68
        L67:
            r1 = r3
        L68:
            r3 = r4[r8]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r4[r1]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            int r3 = r3.compareTo(r4)
            if (r3 > 0) goto L7b
            goto L80
        L7b:
            r7.b(r8, r1)
            r8 = r1
            goto L3c
        L80:
            int r8 = r7.getSize()
            r8 = r0[r8]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            r1 = 0
            r8.setHeap(r1)
            r8.setIndex(r2)
            int r2 = r7.getSize()
            r0[r2] = r1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.ThreadSafeHeap.removeAtImpl(int):kotlinx.coroutines.internal.ThreadSafeHeapNode");
    }

    @PublishedApi
    public final void addImpl(@NotNull T node) {
        node.setHeap(this);
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f6647a;
        if (threadSafeHeapNodeArr == null) {
            threadSafeHeapNodeArr = new ThreadSafeHeapNode[4];
            this.f6647a = threadSafeHeapNodeArr;
        } else if (getSize() >= threadSafeHeapNodeArr.length) {
            Object[] objArrCopyOf = Arrays.copyOf(threadSafeHeapNodeArr, getSize() * 2);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
            threadSafeHeapNodeArr = (ThreadSafeHeapNode[]) objArrCopyOf;
            this.f6647a = threadSafeHeapNodeArr;
        }
        int size = getSize();
        f6646b.set(this, size + 1);
        threadSafeHeapNodeArr[size] = node;
        node.setIndex(size);
        a(size);
    }

    public final void a(int i) {
        while (i > 0) {
            ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f6647a;
            Intrinsics.checkNotNull(threadSafeHeapNodeArr);
            int i2 = (i - 1) / 2;
            ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
            Intrinsics.checkNotNull(threadSafeHeapNode);
            ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
            Intrinsics.checkNotNull(threadSafeHeapNode2);
            if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                return;
            }
            b(i, i2);
            i = i2;
        }
    }

    public final void b(int i, int i2) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f6647a;
        Intrinsics.checkNotNull(threadSafeHeapNodeArr);
        ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
        Intrinsics.checkNotNull(threadSafeHeapNode);
        ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
        Intrinsics.checkNotNull(threadSafeHeapNode2);
        threadSafeHeapNodeArr[i] = threadSafeHeapNode;
        threadSafeHeapNodeArr[i2] = threadSafeHeapNode2;
        threadSafeHeapNode.setIndex(i);
        threadSafeHeapNode2.setIndex(i2);
    }

    @Nullable
    public final T find(@NotNull Function1<? super T, Boolean> predicate) {
        ThreadSafeHeapNode threadSafeHeapNode;
        synchronized (this) {
            try {
                int size = getSize();
                int i = 0;
                while (true) {
                    threadSafeHeapNode = null;
                    if (i >= size) {
                        break;
                    }
                    ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.f6647a;
                    if (threadSafeHeapNodeArr != null) {
                        threadSafeHeapNode = threadSafeHeapNodeArr[i];
                    }
                    Intrinsics.checkNotNull(threadSafeHeapNode);
                    if (predicate.invoke(threadSafeHeapNode).booleanValue()) {
                        break;
                    }
                    i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return threadSafeHeapNode;
    }

    @Nullable
    public final T peek() {
        T t;
        synchronized (this) {
            t = (T) firstImpl();
        }
        return t;
    }

    @Nullable
    public final T removeFirstOrNull() {
        T t;
        synchronized (this) {
            t = getSize() > 0 ? (T) removeAtImpl(0) : null;
        }
        return t;
    }

    @Nullable
    public final T removeFirstIf(@NotNull Function1<? super T, Boolean> predicate) {
        synchronized (this) {
            try {
                ThreadSafeHeapNode threadSafeHeapNodeFirstImpl = firstImpl();
                T t = null;
                if (threadSafeHeapNodeFirstImpl == null) {
                    InlineMarker.finallyStart(2);
                    InlineMarker.finallyEnd(2);
                    return null;
                }
                if (predicate.invoke(threadSafeHeapNodeFirstImpl).booleanValue()) {
                    t = (T) removeAtImpl(0);
                }
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return t;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
    }

    public final void addLast(@NotNull T node) {
        synchronized (this) {
            addImpl(node);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean addLastIf(@NotNull T node, @NotNull Function1<? super T, Boolean> cond) {
        boolean z;
        synchronized (this) {
            try {
                if (cond.invoke(firstImpl()).booleanValue()) {
                    addImpl(node);
                    z = true;
                } else {
                    z = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return z;
    }

    public final boolean remove(@NotNull T node) {
        boolean z;
        synchronized (this) {
            if (node.getHeap() == null) {
                z = false;
            } else {
                removeAtImpl(node.getIndex());
                z = true;
            }
        }
        return z;
    }
}
