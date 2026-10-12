package kotlinx.coroutines.future;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class f implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Job f6605a;

    public f(Job job) {
        this.f6605a = job;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke(obj, (Throwable) obj2);
        return Unit.INSTANCE;
    }

    public final void invoke(Object obj, Throwable th) {
        if (th != null) {
            CancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            if (CancellationException == null) {
                CancellationException = ExceptionsKt.CancellationException("CompletableFuture was completed exceptionally", th);
            }
        }
        this.f6605a.cancel(CancellationException);
    }
}
