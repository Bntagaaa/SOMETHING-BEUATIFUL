package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowKt__ReduceKt;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2", f = "Reduce.kt", i = {}, l = {41}, m = "emit", n = {}, s = {})
/* loaded from: classes2.dex */
public final class FlowKt__ReduceKt$fold$2$emit$1 extends ContinuationImpl {
    public Ref.ObjectRef d;
    public /* synthetic */ Object e;
    public final /* synthetic */ FlowKt__ReduceKt.AnonymousClass2 f;

    /* renamed from: g, reason: collision with root package name */
    public int f6383g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ReduceKt$fold$2$emit$1(FlowKt__ReduceKt.AnonymousClass2<? super T> anonymousClass2, Continuation<? super FlowKt__ReduceKt$fold$2$emit$1> continuation) {
        super(continuation);
        this.f = anonymousClass2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.f6383g |= Integer.MIN_VALUE;
        return this.f.emit(null, this);
    }
}
