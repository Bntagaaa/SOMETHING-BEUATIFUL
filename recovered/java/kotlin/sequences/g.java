package kotlin.sequences;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.internal.ExceptionsConstructorKt;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6008a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f6009b;

    public /* synthetic */ g(int i, Function1 function1) {
        this.f6008a = i;
        this.f6009b = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object objM565constructorimpl;
        Function1 function1 = this.f6009b;
        switch (this.f6008a) {
            case 0:
                function1.invoke(obj);
                return obj;
            case 1:
                return Long.valueOf(DelayKt.m1134toDelayMillisLRDsOJo(((Duration) function1.invoke(obj)).getF6089a()));
            default:
                Throwable th = (Throwable) obj;
                int i = ExceptionsConstructorKt.f6621a;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Throwable th2 = (Throwable) function1.invoke(th);
                    if (!Intrinsics.areEqual(th.getMessage(), th2.getMessage()) && !Intrinsics.areEqual(th2.getMessage(), th.toString())) {
                        th2 = null;
                    }
                    objM565constructorimpl = Result.m565constructorimpl(th2);
                } catch (Throwable th3) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM565constructorimpl = Result.m565constructorimpl(ResultKt.createFailure(th3));
                }
                return (Throwable) (Result.m570isFailureimpl(objM565constructorimpl) ? null : objM565constructorimpl);
        }
    }
}
