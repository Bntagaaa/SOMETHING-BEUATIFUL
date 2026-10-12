package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final /* synthetic */ class d extends FunctionReferenceImpl implements Function2<Long, f, f> {
    public static final d h = new d();

    public d() {
        super(2, SemaphoreKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ f invoke(Long l, f fVar) {
        return invoke(l.longValue(), fVar);
    }

    public final f invoke(long j, f fVar) {
        return SemaphoreKt.access$createSegment(j, fVar);
    }
}
