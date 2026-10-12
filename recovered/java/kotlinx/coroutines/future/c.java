package kotlinx.coroutines.future;

import java.util.concurrent.CompletionException;
import java.util.function.BiFunction;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0018\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00040\u0002B\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00018\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/future/c;", "T", "Ljava/util/function/BiFunction;", "", "", "Lkotlin/coroutines/Continuation;", "cont", "<init>", "(Lkotlin/coroutines/Continuation;)V", "result", "exception", "apply", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "Lkotlin/coroutines/Continuation;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class c<T> implements BiFunction<T, Throwable, Unit> {

    @JvmField
    @Nullable
    public volatile Continuation<? super T> cont;

    public c(@Nullable Continuation<? super T> continuation) {
        this.cont = continuation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Object obj, Throwable th) {
        apply2((c<T>) obj, th);
        return Unit.INSTANCE;
    }

    /* renamed from: apply, reason: avoid collision after fix types in other method */
    public void apply2(@Nullable T result, @Nullable Throwable exception) {
        Throwable cause;
        Continuation<? super T> continuation = this.cont;
        if (continuation == null) {
            return;
        }
        if (exception == null) {
            continuation.resumeWith(Result.m565constructorimpl(result));
            return;
        }
        CompletionException completionExceptionL = com.google.appinventor.components.runtime.fcm.a.x(exception) ? com.google.appinventor.components.runtime.fcm.a.l(exception) : null;
        if (completionExceptionL != null && (cause = completionExceptionL.getCause()) != null) {
            exception = cause;
        }
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m565constructorimpl(ResultKt.createFailure(exception)));
    }
}
