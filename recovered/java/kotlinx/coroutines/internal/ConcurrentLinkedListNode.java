package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\t\u001a\u0004\u0018\u00018\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\b¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0011R\u0013\u0010\u0017\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0018\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0013R\u0013\u0010\u0003\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0013R\u0013\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001b8\u0002X\u0082\u0004R\u0013\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001b8\u0002X\u0082\u0004¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "", "prev", "<init>", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V", "Lkotlin/Function0;", "", "onClosedAction", "nextOrIfClosed", "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "value", "", "trySetNext", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z", "", "cleanPrev", "()V", "markAsClosed", "()Z", "remove", "getNext", "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "next", "isTail", "getPrev", "isRemoved", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n103#1,7:266\n1#2:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n111#1:266,7\n*E\n"})
/* loaded from: classes2.dex */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6614a = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6615b = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public abstract boolean isRemoved();

    public ConcurrentLinkedListNode(@Nullable N n) {
        this._prev$volatile = n;
    }

    public static final Object access$getNextOrClosed(ConcurrentLinkedListNode concurrentLinkedListNode) {
        concurrentLinkedListNode.getClass();
        return f6614a.get(concurrentLinkedListNode);
    }

    @Nullable
    public final N nextOrIfClosed(@NotNull Function0 onClosedAction) {
        Object objAccess$getNextOrClosed = access$getNextOrClosed(this);
        if (objAccess$getNextOrClosed == ConcurrentLinkedListKt.f6613a) {
            onClosedAction.invoke();
            throw new KotlinNothingValueException();
        }
        return (N) objAccess$getNextOrClosed;
    }

    public final boolean trySetNext(@NotNull N value) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = f6614a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, value)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return false;
    }

    public final boolean isTail() {
        return getNext() == null;
    }

    @Nullable
    public final N getPrev() {
        return (N) f6615b.get(this);
    }

    public final void cleanPrev() {
        f6615b.set(this, null);
    }

    public final boolean markAsClosed() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Symbol symbol = ConcurrentLinkedListKt.f6613a;
        do {
            atomicReferenceFieldUpdater = f6614a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, symbol)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return false;
    }

    public final void remove() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ConcurrentLinkedListNode next;
        if (isTail()) {
            return;
        }
        while (true) {
            ConcurrentLinkedListNode prev = getPrev();
            while (true) {
                atomicReferenceFieldUpdater = f6615b;
                if (prev == null || !prev.isRemoved()) {
                    break;
                } else {
                    prev = (ConcurrentLinkedListNode) atomicReferenceFieldUpdater.get(prev);
                }
            }
            ConcurrentLinkedListNode next2 = getNext();
            Intrinsics.checkNotNull(next2);
            while (next2.isRemoved() && (next = next2.getNext()) != null) {
                next2 = next;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(next2);
                ConcurrentLinkedListNode concurrentLinkedListNode = ((ConcurrentLinkedListNode) obj) == null ? null : prev;
                while (!atomicReferenceFieldUpdater.compareAndSet(next2, obj, concurrentLinkedListNode)) {
                    if (atomicReferenceFieldUpdater.get(next2) != obj) {
                        break;
                    }
                }
            }
            if (prev != null) {
                f6614a.set(prev, next2);
            }
            if (!next2.isRemoved() || next2.isTail()) {
                if (prev == null || !prev.isRemoved()) {
                    return;
                }
            }
        }
    }

    @Nullable
    public final N getNext() {
        Object objAccess$getNextOrClosed = access$getNextOrClosed(this);
        if (objAccess$getNextOrClosed == ConcurrentLinkedListKt.f6613a) {
            return null;
        }
        return (N) objAccess$getNextOrClosed;
    }
}
