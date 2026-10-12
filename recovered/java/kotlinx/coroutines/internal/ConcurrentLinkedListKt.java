package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u001ai\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000226\u0010\b\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\u000e\u001a\u00028\u0000\"\u000e\b\u0000\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\f*\u00028\u0000H\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a?\u0010\u0017\u001a\u00020\u0015*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00112!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/internal/Segment;", "S", "", "id", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "prev", "createNewSegment", "Lkotlinx/coroutines/internal/SegmentOrClosed;", "findSegmentInternal", "(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "close", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "Lkotlinx/atomicfu/AtomicInt;", "", "delta", "Lkotlin/Function1;", "cur", "", "condition", "addConditionally", "(Lkotlinx/atomicfu/AtomicInt;ILkotlin/jvm/functions/Function1;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,265:1\n42#1,8:280\n103#2,7:266\n103#2,7:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n70#1:280,8\n23#1:266,7\n81#1:273,7\n*E\n"})
/* loaded from: classes2.dex */
public final class ConcurrentLinkedListKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f6613a = new Symbol("CLOSED");

    @NotNull
    public static final <S extends Segment<S>> Object findSegmentInternal(@NotNull S s, long j, @NotNull Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s.id >= j && !s.isRemoved()) {
                return SegmentOrClosed.m1194constructorimpl(s);
            }
            Object objAccess$getNextOrClosed = ConcurrentLinkedListNode.access$getNextOrClosed(s);
            if (objAccess$getNextOrClosed == f6613a) {
                return SegmentOrClosed.m1194constructorimpl(f6613a);
            }
            S sInvoke = (S) ((ConcurrentLinkedListNode) objAccess$getNextOrClosed);
            if (sInvoke == null) {
                sInvoke = function2.invoke(Long.valueOf(s.id + 1), s);
                if (s.trySetNext(sInvoke)) {
                    if (s.isRemoved()) {
                        s.remove();
                    }
                }
            }
            s = sInvoke;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> boolean moveForward$atomicfu$ATOMIC_ARRAY$Any(AtomicReferenceArray atomicReferenceArray, int i, S s) {
        while (true) {
            Segment segment = (Segment) atomicReferenceArray.get(i);
            if (segment.id >= s.id) {
                return true;
            }
            if (!s.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            while (!atomicReferenceArray.compareAndSet(i, segment, s)) {
                if (atomicReferenceArray.get(i) != segment) {
                    if (s.decPointers$kotlinx_coroutines_core()) {
                        s.remove();
                    }
                }
            }
            if (segment.decPointers$kotlinx_coroutines_core()) {
                segment.remove();
            }
            return true;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> boolean moveForward$atomicfu$ATOMIC_FIELD_UPDATER$Any(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, S s) {
        while (true) {
            Segment segment = (Segment) atomicReferenceFieldUpdater.get(obj);
            if (segment.id >= s.id) {
                return true;
            }
            if (!s.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(obj, segment, s)) {
                if (atomicReferenceFieldUpdater.get(obj) != segment) {
                    if (s.decPointers$kotlinx_coroutines_core()) {
                        s.remove();
                    }
                }
            }
            if (segment.decPointers$kotlinx_coroutines_core()) {
                segment.remove();
            }
            return true;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> boolean moveForward$atomicfu$BOXED_ATOMIC$Any(AtomicReference atomicReference, S s) {
        while (true) {
            Segment segment = (Segment) atomicReference.get();
            if (segment.id >= s.id) {
                return true;
            }
            if (!s.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            while (!atomicReference.compareAndSet(segment, s)) {
                if (atomicReference.get() != segment) {
                    if (s.decPointers$kotlinx_coroutines_core()) {
                        s.remove();
                    }
                }
            }
            if (segment.decPointers$kotlinx_coroutines_core()) {
                segment.remove();
            }
            return true;
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> Object findSegmentAndMoveForward$atomicfu$ATOMIC_ARRAY$Any(AtomicReferenceArray atomicReferenceArray, int i, long j, S s, Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            Object objFindSegmentInternal = findSegmentInternal(s, j, function2);
            if (SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                return objFindSegmentInternal;
            }
            Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceArray.get(i);
                if (segment.id >= segmentM1197getSegmentimpl.id) {
                    return objFindSegmentInternal;
                }
                if (!segmentM1197getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                while (!atomicReferenceArray.compareAndSet(i, segment, segmentM1197getSegmentimpl)) {
                    if (atomicReferenceArray.get(i) != segment) {
                        if (segmentM1197getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                            segmentM1197getSegmentimpl.remove();
                        }
                    }
                }
                if (segment.decPointers$kotlinx_coroutines_core()) {
                    segment.remove();
                }
                return objFindSegmentInternal;
            }
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> Object findSegmentAndMoveForward$atomicfu$ATOMIC_FIELD_UPDATER$Any(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, long j, S s, Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            Object objFindSegmentInternal = findSegmentInternal(s, j, function2);
            if (SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                return objFindSegmentInternal;
            }
            Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(obj);
                if (segment.id >= segmentM1197getSegmentimpl.id) {
                    return objFindSegmentInternal;
                }
                if (!segmentM1197getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(obj, segment, segmentM1197getSegmentimpl)) {
                    if (atomicReferenceFieldUpdater.get(obj) != segment) {
                        if (segmentM1197getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                            segmentM1197getSegmentimpl.remove();
                        }
                    }
                }
                if (segment.decPointers$kotlinx_coroutines_core()) {
                    segment.remove();
                }
                return objFindSegmentInternal;
            }
        }
    }

    public static final /* synthetic */ <S extends Segment<S>> Object findSegmentAndMoveForward$atomicfu$BOXED_ATOMIC$Any(AtomicReference atomicReference, long j, S s, Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            Object objFindSegmentInternal = findSegmentInternal(s, j, function2);
            if (SegmentOrClosed.m1199isClosedimpl(objFindSegmentInternal)) {
                return objFindSegmentInternal;
            }
            Segment segmentM1197getSegmentimpl = SegmentOrClosed.m1197getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReference.get();
                if (segment.id >= segmentM1197getSegmentimpl.id) {
                    return objFindSegmentInternal;
                }
                if (!segmentM1197getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                while (!atomicReference.compareAndSet(segment, segmentM1197getSegmentimpl)) {
                    if (atomicReference.get() != segment) {
                        if (segmentM1197getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                            segmentM1197getSegmentimpl.remove();
                        }
                    }
                }
                if (segment.decPointers$kotlinx_coroutines_core()) {
                    segment.remove();
                }
                return objFindSegmentInternal;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.ConcurrentLinkedListNode] */
    @NotNull
    public static final <N extends ConcurrentLinkedListNode<N>> N close(@NotNull N n) {
        while (true) {
            Object objAccess$getNextOrClosed = ConcurrentLinkedListNode.access$getNextOrClosed(n);
            if (objAccess$getNextOrClosed == f6613a) {
                return n;
            }
            ?? r0 = (ConcurrentLinkedListNode) objAccess$getNextOrClosed;
            if (r0 != 0) {
                n = r0;
            } else if (n.markAsClosed()) {
                return n;
            }
        }
    }
}
