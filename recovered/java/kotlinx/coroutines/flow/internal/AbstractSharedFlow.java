package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00060\u0003j\u0002`\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00028\u0000H$¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000b2\u0006\u0010\n\u001a\u00020\tH$¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u000e\u0010\bJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u0011\u0010\u0012J$\u0010\u0015\u001a\u00020\u00102\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u0013H\u0084\b¢\u0006\u0004\b\u0015\u0010\u0016R8\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000b2\u0010\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000b8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR$\u0010!\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010%\u001a\b\u0012\u0004\u0012\u00020\t0\"8F¢\u0006\u0006\u001a\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "S", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "<init>", "()V", "createSlot", "()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "", "size", "", "createSlotArray", "(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "allocateSlot", "slot", "", "freeSlot", "(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V", "Lkotlin/Function1;", "block", "forEachSlotLocked", "(Lkotlin/jvm/functions/Function1;)V", "value", "a", "[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "getSlots", "()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "slots", "b", "I", "getNCollectors", "()I", "nCollectors", "Lkotlinx/coroutines/flow/StateFlow;", "getSubscriptionCount", "()Lkotlinx/coroutines/flow/StateFlow;", "subscriptionCount", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,130:1\n29#2:131\n29#2:133\n29#2:136\n16#3:132\n16#3:134\n16#3:137\n1#4:135\n13402#5,2:138\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n27#1:131\n42#1:133\n73#1:136\n27#1:132\n42#1:134\n73#1:137\n92#1:138,2\n*E\n"})
/* loaded from: classes2.dex */
public abstract class AbstractSharedFlow<S extends AbstractSharedFlowSlot<?>> {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public AbstractSharedFlowSlot[] slots;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public int nCollectors;
    public int c;
    public f d;

    @NotNull
    public abstract S createSlot();

    @NotNull
    public abstract S[] createSlotArray(int size);

    @Nullable
    public final S[] getSlots() {
        return (S[]) this.slots;
    }

    public final int getNCollectors() {
        return this.nCollectors;
    }

    public final void forEachSlotLocked(@NotNull Function1<? super S, Unit> block) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        if (this.nCollectors == 0 || (abstractSharedFlowSlotArr = this.slots) == null) {
            return;
        }
        for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
            if (abstractSharedFlowSlot != null) {
                block.invoke(abstractSharedFlowSlot);
            }
        }
    }

    @NotNull
    public final StateFlow<Integer> getSubscriptionCount() {
        f fVar;
        synchronized (this) {
            fVar = this.d;
            if (fVar == null) {
                fVar = new f(this.nCollectors);
                this.d = fVar;
            }
        }
        return fVar;
    }

    @NotNull
    public final S allocateSlot() {
        S s;
        f fVar;
        synchronized (this) {
            try {
                AbstractSharedFlowSlot[] abstractSharedFlowSlotArrCreateSlotArray = this.slots;
                if (abstractSharedFlowSlotArrCreateSlotArray == null) {
                    abstractSharedFlowSlotArrCreateSlotArray = createSlotArray(2);
                    this.slots = abstractSharedFlowSlotArrCreateSlotArray;
                } else if (this.nCollectors >= abstractSharedFlowSlotArrCreateSlotArray.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(abstractSharedFlowSlotArrCreateSlotArray, abstractSharedFlowSlotArrCreateSlotArray.length * 2);
                    Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
                    this.slots = (AbstractSharedFlowSlot[]) objArrCopyOf;
                    abstractSharedFlowSlotArrCreateSlotArray = (AbstractSharedFlowSlot[]) objArrCopyOf;
                }
                int i = this.c;
                do {
                    s = (S) abstractSharedFlowSlotArrCreateSlotArray[i];
                    if (s == null) {
                        s = (S) createSlot();
                        abstractSharedFlowSlotArrCreateSlotArray[i] = s;
                    }
                    i++;
                    if (i >= abstractSharedFlowSlotArrCreateSlotArray.length) {
                        i = 0;
                    }
                    Intrinsics.checkNotNull(s, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!s.allocateLocked(this));
                this.c = i;
                this.nCollectors++;
                fVar = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (fVar != null) {
            fVar.increment(1);
        }
        return s;
    }

    public final void freeSlot(@NotNull S slot) {
        f fVar;
        int i;
        Continuation<Unit>[] continuationArrFreeLocked;
        synchronized (this) {
            try {
                int i2 = this.nCollectors - 1;
                this.nCollectors = i2;
                fVar = this.d;
                if (i2 == 0) {
                    this.c = 0;
                }
                Intrinsics.checkNotNull(slot, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                continuationArrFreeLocked = slot.freeLocked(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation<Unit> continuation : continuationArrFreeLocked) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m565constructorimpl(Unit.INSTANCE));
            }
        }
        if (fVar != null) {
            fVar.increment(-1);
        }
    }
}
