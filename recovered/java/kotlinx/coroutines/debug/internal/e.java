package kotlinx.coroutines.debug.internal;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DebugProbesImpl.INSTANCE.getClass();
        return Boolean.valueOf(!DebugProbesImpl.d((DebugProbesImpl.CoroutineOwner) obj));
    }
}
