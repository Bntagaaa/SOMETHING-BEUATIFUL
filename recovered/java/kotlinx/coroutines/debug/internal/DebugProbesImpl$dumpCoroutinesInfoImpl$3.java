package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,616:1\n1#2:617\n*E\n"})
/* loaded from: classes2.dex */
public final class DebugProbesImpl$dumpCoroutinesInfoImpl$3 implements Function1<DebugProbesImpl.CoroutineOwner<?>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function2 f6253a;

    public DebugProbesImpl$dumpCoroutinesInfoImpl$3(Function2<? super DebugProbesImpl.CoroutineOwner<?>, ? super CoroutineContext, Object> function2) {
        this.f6253a = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
        CoroutineContext context;
        if (DebugProbesImpl.access$isFinished(DebugProbesImpl.INSTANCE, coroutineOwner) || (context = coroutineOwner.info.getContext()) == null) {
            return null;
        }
        return this.f6253a.invoke(coroutineOwner, context);
    }
}
