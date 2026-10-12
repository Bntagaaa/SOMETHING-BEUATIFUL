package kotlin.sequences;

import java.util.concurrent.CompletableFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.android.HandlerContext;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6012a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6013b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i(Object obj, Object obj2, int i) {
        this.f6012a = i;
        this.f6013b = obj;
        this.c = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f6012a) {
            case 0:
                Ref.BooleanRef booleanRef = (Ref.BooleanRef) this.f6013b;
                boolean z = true;
                if (!booleanRef.element && Intrinsics.areEqual(obj, this.c)) {
                    booleanRef.element = true;
                    z = false;
                }
                return Boolean.valueOf(z);
            case 1:
                return HandlerContext.scheduleResumeAfterDelay$lambda$2((HandlerContext) this.f6013b, (androidx.core.content.res.e) this.c, (Throwable) obj);
            default:
                CompletableFuture completableFuture = (CompletableFuture) this.f6013b;
                try {
                    completableFuture.complete(((Deferred) this.c).getCompleted());
                } catch (Throwable th) {
                    completableFuture.completeExceptionally(th);
                }
                return Unit.INSTANCE;
        }
    }
}
