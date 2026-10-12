package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u0004¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0012\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0004H\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0004H\u0001¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u001b\u001a\u00020\u000e2\n\u0010\u0018\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0004H\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0015R\u0011\u0010\u0011\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\b \u0010!R\u0015\u0010#\u001a\u00060\u0000j\u0002`\u00048F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0017R\u0015\u0010%\u001a\u00060\u0000j\u0002`\u00048F¢\u0006\u0006\u001a\u0004\b$\u0010\u0017R\u0011\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00010&8\u0002X\u0082\u0004R\u0011\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00000&8\u0002X\u0082\u0004R\u0013\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0&8\u0002X\u0082\u0004¨\u0006+"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "<init>", "()V", "Lkotlinx/coroutines/internal/Node;", "node", "", "addOneIfEmpty", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "", "permissionsBitmask", "addLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;I)Z", "forbiddenElementsBit", "", "close", "(I)V", "next", "addNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "remove", "()Z", "removeOrNext", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "", "toString", "()Ljava/lang/String;", "isRemoved", "getNext", "()Ljava/lang/Object;", "getNextNode", "nextNode", "getPrevNode", "prevNode", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "Lkotlinx/coroutines/internal/e;", "_removedRef", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"})
/* loaded from: classes2.dex */
public class LockFreeLinkedListNode {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6629a = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f6630b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public final void validateNode$kotlinx_coroutines_core(@NotNull LockFreeLinkedListNode prev, @NotNull LockFreeLinkedListNode next) {
    }

    public boolean isRemoved() {
        return getNext() instanceof e;
    }

    @NotNull
    public final Object getNext() {
        return f6629a.get(this);
    }

    @NotNull
    public final LockFreeLinkedListNode getNextNode() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object next = getNext();
        e eVar = next instanceof e ? (e) next : null;
        if (eVar != null && (lockFreeLinkedListNode = eVar.f6653a) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (LockFreeLinkedListNode) next;
    }

    @NotNull
    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode lockFreeLinkedListNodeA = a();
        if (lockFreeLinkedListNodeA != null) {
            return lockFreeLinkedListNodeA;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6630b;
        Object obj = atomicReferenceFieldUpdater.get(this);
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
            if (!lockFreeLinkedListNode.isRemoved()) {
                return lockFreeLinkedListNode;
            }
            obj = atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
        }
    }

    public final boolean addOneIfEmpty(@NotNull LockFreeLinkedListNode node) {
        f6630b.set(node, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6629a;
        atomicReferenceFieldUpdater.set(node, this);
        while (getNext() == this) {
            while (!atomicReferenceFieldUpdater.compareAndSet(this, this, node)) {
                if (atomicReferenceFieldUpdater.get(this) != this) {
                    break;
                }
            }
            node.b(this);
            return true;
        }
        return false;
    }

    public final boolean addLast(@NotNull LockFreeLinkedListNode node, int permissionsBitmask) {
        LockFreeLinkedListNode prevNode;
        do {
            prevNode = getPrevNode();
            if (prevNode instanceof c) {
                return (((c) prevNode).d & permissionsBitmask) == 0 && prevNode.addLast(node, permissionsBitmask);
            }
        } while (!prevNode.addNext(node, this));
        return true;
    }

    public final void close(int forbiddenElementsBit) {
        addLast(new c(forbiddenElementsBit), forbiddenElementsBit);
    }

    @PublishedApi
    public final boolean addNext(@NotNull LockFreeLinkedListNode node, @NotNull LockFreeLinkedListNode next) {
        f6630b.set(node, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6629a;
        atomicReferenceFieldUpdater.set(node, next);
        while (!atomicReferenceFieldUpdater.compareAndSet(this, next, node)) {
            if (atomicReferenceFieldUpdater.get(this) != next) {
                return false;
            }
        }
        node.b(next);
        return true;
    }

    /* renamed from: remove */
    public boolean mo1192remove() {
        return removeOrNext() == null;
    }

    @PublishedApi
    @Nullable
    public final LockFreeLinkedListNode removeOrNext() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object next = getNext();
            if (next instanceof e) {
                return ((e) next).f6653a;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
            lockFreeLinkedListNode.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = c;
            e eVar = (e) atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode);
            if (eVar == null) {
                eVar = new e(lockFreeLinkedListNode);
                atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, eVar);
            }
            do {
                atomicReferenceFieldUpdater = f6629a;
                if (atomicReferenceFieldUpdater.compareAndSet(this, next, eVar)) {
                    lockFreeLinkedListNode.a();
                    return null;
                }
            } while (atomicReferenceFieldUpdater.get(this) == next);
        }
    }

    public final void b(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6630b;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (getNext() != lockFreeLinkedListNode) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this)) {
                if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != lockFreeLinkedListNode2) {
                    break;
                }
            }
            if (isRemoved()) {
                lockFreeLinkedListNode.a();
                return;
            }
            return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        r6 = ((kotlinx.coroutines.internal.e) r6).f6653a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
    
        if (r5.get(r4) == r3) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode a() {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f6630b
            java.lang.Object r1 = r0.get(r9)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            r2 = 0
            r3 = r1
        La:
            r4 = r2
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f6629a
            java.lang.Object r6 = r5.get(r3)
            if (r6 != r9) goto L24
            if (r1 != r3) goto L16
            return r3
        L16:
            boolean r2 = r0.compareAndSet(r9, r1, r3)
            if (r2 == 0) goto L1d
            return r3
        L1d:
            java.lang.Object r2 = r0.get(r9)
            if (r2 == r1) goto L16
            goto L0
        L24:
            boolean r7 = r9.isRemoved()
            if (r7 == 0) goto L2b
            return r2
        L2b:
            boolean r7 = r6 instanceof kotlinx.coroutines.internal.e
            if (r7 == 0) goto L4b
            if (r4 == 0) goto L44
            kotlinx.coroutines.internal.e r6 = (kotlinx.coroutines.internal.e) r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r6 = r6.f6653a
        L35:
            boolean r7 = r5.compareAndSet(r4, r3, r6)
            if (r7 == 0) goto L3d
            r3 = r4
            goto La
        L3d:
            java.lang.Object r7 = r5.get(r4)
            if (r7 == r3) goto L35
            goto L0
        L44:
            java.lang.Object r3 = r0.get(r3)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            goto Lb
        L4b:
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r4)
            r4 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r4 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r4
            r8 = r4
            r4 = r3
            r3 = r8
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.a():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class a extends PropertyReference0Impl {
        @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
        public Object get() {
            return DebugStringsKt.getClassSimpleName(this.receiver);
        }
    }

    @NotNull
    public String toString() {
        return new a(this, DebugStringsKt.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + DebugStringsKt.getHexAddress(this);
    }
}
