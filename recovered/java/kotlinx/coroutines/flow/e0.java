package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.internal.Concurrent_commonKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\t2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u0004J\r\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000bH\u0086@¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/flow/e0;", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "Lkotlinx/coroutines/flow/d0;", "<init>", "()V", "flow", "", "allocateLocked", "(Lkotlinx/coroutines/flow/d0;)Z", "", "Lkotlin/coroutines/Continuation;", "", "freeLocked", "(Lkotlinx/coroutines/flow/d0;)[Lkotlin/coroutines/Continuation;", "makePending", "takePending", "()Z", "awaitPending", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 Concurrent.common.kt\nkotlinx/coroutines/internal/Concurrent_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,433:1\n37#2,2:434\n1#3:436\n426#4,11:437\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n280#1:434,2\n303#1:437,11\n*E\n"})
/* loaded from: classes2.dex */
final class e0 extends AbstractSharedFlowSlot<d0<?>> {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f6517a = new AtomicReference(null);

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public boolean allocateLocked(@NotNull d0<?> flow) {
        AtomicReference atomicReference = this.f6517a;
        if (Concurrent_commonKt.getValue(atomicReference) != null) {
            return false;
        }
        Concurrent_commonKt.setValue(atomicReference, StateFlowKt.f6494a);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    @NotNull
    public Continuation<Unit>[] freeLocked(@NotNull d0<?> flow) {
        Concurrent_commonKt.setValue(this.f6517a, null);
        return AbstractSharedFlowKt.EMPTY_RESUMES;
    }

    public final void makePending() {
        AtomicReference atomicReference = this.f6517a;
        while (true) {
            Object value = Concurrent_commonKt.getValue(atomicReference);
            if (value == null || value == StateFlowKt.f6495b) {
                return;
            }
            if (value == StateFlowKt.f6494a) {
                Symbol symbol = StateFlowKt.f6495b;
                while (!atomicReference.compareAndSet(value, symbol)) {
                    if (atomicReference.get() != value) {
                        break;
                    }
                }
                return;
            }
            Symbol symbol2 = StateFlowKt.f6494a;
            while (!atomicReference.compareAndSet(value, symbol2)) {
                if (atomicReference.get() != value) {
                    break;
                }
            }
            Result.Companion companion = Result.INSTANCE;
            ((CancellableContinuationImpl) value).resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
            return;
        }
    }

    public final boolean takePending() {
        Object andSet = this.f6517a.getAndSet(StateFlowKt.f6494a);
        Intrinsics.checkNotNull(andSet);
        return andSet == StateFlowKt.f6495b;
    }

    @Nullable
    public final Object awaitPending(@NotNull Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        AtomicReference atomicReference = this.f6517a;
        Symbol symbol = StateFlowKt.f6494a;
        while (true) {
            if (atomicReference.compareAndSet(symbol, cancellableContinuationImpl)) {
                break;
            }
            if (atomicReference.get() != symbol) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
                break;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
