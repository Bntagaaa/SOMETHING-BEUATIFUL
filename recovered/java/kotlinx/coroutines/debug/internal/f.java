package kotlinx.coroutines.debug.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Function0 {
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() throws InterruptedException {
        DebugProbesImpl.k.runWeakRefQueueCleaningLoopUntilInterrupted();
        return Unit.INSTANCE;
    }
}
