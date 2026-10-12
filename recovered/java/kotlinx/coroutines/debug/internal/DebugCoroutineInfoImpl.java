package kotlinx.coroutines.debug.internal;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0001\u0018\u00002\u00020\u0001B%\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ+\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001fR\u0016\u0010 \u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148F¢\u0006\u0006\u001a\u0004\b+\u0010\u0017R\u0014\u0010\u000b\u001a\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b-\u0010\u001aR(\u00103\u001a\u0004\u0018\u00010&2\b\u0010.\u001a\u0004\u0018\u00010&8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u00064"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "creationStackBottom", "", "sequenceNumber", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/debug/internal/StackTraceFrame;J)V", "", "state", "Lkotlin/coroutines/Continuation;", "frame", "", "shouldBeMatched", "", "updateState$kotlinx_coroutines_core", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;Z)V", "updateState", "", "Ljava/lang/StackTraceElement;", "lastObservedStackTrace$kotlinx_coroutines_core", "()Ljava/util/List;", "lastObservedStackTrace", "toString", "()Ljava/lang/String;", "a", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "getCreationStackBottom$kotlinx_coroutines_core", "()Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "J", "_state", "Ljava/lang/String;", "Ljava/lang/Thread;", "lastObservedThread", "Ljava/lang/Thread;", "Ljava/lang/ref/WeakReference;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "_lastObservedFrame", "Ljava/lang/ref/WeakReference;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getCreationStackTrace", "creationStackTrace", "getState$kotlinx_coroutines_core", "value", "getLastObservedFrame$kotlinx_coroutines_core", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "setLastObservedFrame$kotlinx_coroutines_core", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "lastObservedFrame", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nDebugCoroutineInfoImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugCoroutineInfoImpl.kt\nkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"})
/* loaded from: classes2.dex */
public final class DebugCoroutineInfoImpl {

    @JvmField
    @Nullable
    public volatile WeakReference<CoroutineStackFrame> _lastObservedFrame;

    @JvmField
    @NotNull
    public volatile String _state = DebugCoroutineInfoImplKt.CREATED;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final StackTraceFrame creationStackBottom;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f6249b;
    public int c;

    @JvmField
    @Nullable
    public volatile Thread lastObservedThread;

    @JvmField
    public final long sequenceNumber;

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0046 -> B:25:0x005d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0057 -> B:24:0x005a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$yieldFrames(kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r5, kotlin.sequences.SequenceScope r6, kotlin.coroutines.jvm.internal.CoroutineStackFrame r7, kotlin.coroutines.Continuation r8) {
        /*
            r5.getClass()
            boolean r0 = r8 instanceof kotlinx.coroutines.debug.internal.d
            if (r0 == 0) goto L16
            r0 = r8
            kotlinx.coroutines.debug.internal.d r0 = (kotlinx.coroutines.debug.internal.d) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.i = r1
            goto L1b
        L16:
            kotlinx.coroutines.debug.internal.d r0 = new kotlinx.coroutines.debug.internal.d
            r0.<init>(r8, r5)
        L1b:
            java.lang.Object r8 = r0.f6260g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r5 = r0.f
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r6 = r0.e
            kotlin.sequences.SequenceScope r7 = r0.d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5a
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r8)
        L3d:
            if (r7 != 0) goto L42
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L42:
            java.lang.StackTraceElement r8 = r7.getF6258b()
            if (r8 == 0) goto L5d
            r0.d = r6
            r0.e = r7
            r0.f = r5
            r0.i = r3
            java.lang.Object r8 = r6.yield(r8, r0)
            if (r8 != r1) goto L57
            return r1
        L57:
            r4 = r7
            r7 = r6
            r6 = r4
        L5a:
            r4 = r7
            r7 = r6
            r6 = r4
        L5d:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = r7.getCallerFrame()
            if (r7 == 0) goto L64
            goto L3d
        L64:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl.access$yieldFrames(kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl, kotlin.sequences.SequenceScope, kotlin.coroutines.jvm.internal.CoroutineStackFrame, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public DebugCoroutineInfoImpl(@Nullable CoroutineContext coroutineContext, @Nullable StackTraceFrame stackTraceFrame, long j) {
        this.creationStackBottom = stackTraceFrame;
        this.sequenceNumber = j;
        this.f6249b = new WeakReference(coroutineContext);
    }

    @Nullable
    /* renamed from: getCreationStackBottom$kotlinx_coroutines_core, reason: from getter */
    public final StackTraceFrame getCreationStackBottom() {
        return this.creationStackBottom;
    }

    @Nullable
    public final CoroutineContext getContext() {
        return (CoroutineContext) this.f6249b.get();
    }

    @NotNull
    /* renamed from: getState$kotlinx_coroutines_core, reason: from getter */
    public final String get_state() {
        return this._state;
    }

    public final synchronized void updateState$kotlinx_coroutines_core(@NotNull String state, @NotNull Continuation<?> frame, boolean shouldBeMatched) {
        try {
            if (Intrinsics.areEqual(this._state, DebugCoroutineInfoImplKt.RUNNING) && Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.RUNNING) && shouldBeMatched) {
                this.c++;
            } else if (this.c > 0 && Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.SUSPENDED)) {
                this.c--;
                return;
            }
            if (Intrinsics.areEqual(this._state, state) && Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.SUSPENDED) && getLastObservedFrame$kotlinx_coroutines_core() != null) {
                return;
            }
            this._state = state;
            setLastObservedFrame$kotlinx_coroutines_core(frame instanceof CoroutineStackFrame ? (CoroutineStackFrame) frame : null);
            this.lastObservedThread = Intrinsics.areEqual(state, DebugCoroutineInfoImplKt.RUNNING) ? Thread.currentThread() : null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    public final CoroutineStackFrame getLastObservedFrame$kotlinx_coroutines_core() {
        WeakReference<CoroutineStackFrame> weakReference = this._lastObservedFrame;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void setLastObservedFrame$kotlinx_coroutines_core(@Nullable CoroutineStackFrame coroutineStackFrame) {
        this._lastObservedFrame = coroutineStackFrame != null ? new WeakReference<>(coroutineStackFrame) : null;
    }

    @NotNull
    public final List<StackTraceElement> lastObservedStackTrace$kotlinx_coroutines_core() {
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        while (lastObservedFrame$kotlinx_coroutines_core != null) {
            StackTraceElement f6258b = lastObservedFrame$kotlinx_coroutines_core.getF6258b();
            if (f6258b != null) {
                arrayList.add(f6258b);
            }
            lastObservedFrame$kotlinx_coroutines_core = lastObservedFrame$kotlinx_coroutines_core.getCallerFrame();
        }
        return arrayList;
    }

    @NotNull
    public final List<StackTraceElement> getCreationStackTrace() {
        StackTraceFrame stackTraceFrame = this.creationStackBottom;
        return stackTraceFrame == null ? CollectionsKt.emptyList() : SequencesKt.toList(SequencesKt.sequence(new c(this, stackTraceFrame, null)));
    }

    @NotNull
    public String toString() {
        return "DebugCoroutineInfo(state=" + get_state() + ",context=" + getContext() + ')';
    }
}
