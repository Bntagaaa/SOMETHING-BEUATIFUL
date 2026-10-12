package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", f = "DebugCoroutineInfoImpl.kt", i = {0, 0}, l = {169}, m = "yieldFrames", n = {"$this$yieldFrames", "frame"}, s = {"L$0", "L$1"})
/* loaded from: classes2.dex */
final class d extends ContinuationImpl {
    public SequenceScope d;
    public CoroutineStackFrame e;
    public DebugCoroutineInfoImpl f;

    /* renamed from: g, reason: collision with root package name */
    public /* synthetic */ Object f6260g;
    public final /* synthetic */ DebugCoroutineInfoImpl h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Continuation continuation, DebugCoroutineInfoImpl debugCoroutineInfoImpl) {
        super(continuation);
        this.h = debugCoroutineInfoImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f6260g = obj;
        this.i |= Integer.MIN_VALUE;
        return DebugCoroutineInfoImpl.access$yieldFrames(this.h, null, null, this);
    }
}
