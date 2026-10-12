package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFrames;
import _COROUTINE.CoroutineDebuggingKt;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a.\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0080\b¢\u0006\u0004\b\u0003\u0010\u0007\u001a\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0000H\u0080H¢\u0006\u0004\b\t\u0010\n\u001a\"\u0010\u000b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0081\b¢\u0006\u0004\b\u000b\u0010\u0004\u001a!\u0010\f\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0001¢\u0006\u0004\b\f\u0010\u0004\u001a\u0017\u0010\u0010\u001a\u00020\u000f*\u00060\rj\u0002`\u000eH\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001b\u0010\u0014\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0014\u0010\u0015*\f\b\u0000\u0010\u0017\"\u00020\u00162\u00020\u0016*\f\b\u0000\u0010\u0018\"\u00020\r2\u00020\r¨\u0006\u0019"}, d2 = {"", "E", "exception", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "continuation", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "", "recoverAndThrow", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unwrap", "unwrapImpl", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "", "isArtificial", "(Ljava/lang/StackTraceElement;)Z", "cause", "", "initCause", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1790#2,6:211\n12567#2,2:221\n1682#2,6:223\n12567#2,2:229\n1682#2,6:232\n37#3:217\n36#3,3:218\n1#4:231\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n39#1:211,6\n127#1:221,2\n137#1:223,6\n169#1:229,2\n190#1:232,6\n102#1:217\n102#1:218,3\n*E\n"})
/* loaded from: classes2.dex */
public final class StackTraceRecoveryKt {

    /* renamed from: a, reason: collision with root package name */
    public static final StackTraceElement f6639a = new ArtificialStackFrames().coroutineBoundary();

    /* renamed from: b, reason: collision with root package name */
    public static final String f6640b;

    @NotNull
    public static final <E extends Throwable> E recoverStackTrace(@NotNull E e) {
        return e;
    }

    @NotNull
    public static final <E extends Throwable> E recoverStackTrace(@NotNull E e, @NotNull Continuation<?> continuation) {
        return e;
    }

    @PublishedApi
    @NotNull
    public static final <E extends Throwable> E unwrap(@NotNull E e) {
        return e;
    }

    static {
        Object objM565constructorimpl;
        Object objM565constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM565constructorimpl = Result.m565constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM565constructorimpl = Result.m565constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m568exceptionOrNullimpl(objM565constructorimpl) != null) {
            objM565constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f6640b = (String) objM565constructorimpl;
        try {
            objM565constructorimpl2 = Result.m565constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM565constructorimpl2 = Result.m565constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m568exceptionOrNullimpl(objM565constructorimpl2) != null) {
            objM565constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }

    public static final Throwable access$recoverFromStackFrame(Throwable th, CoroutineStackFrame coroutineStackFrame) {
        Pair pair;
        Throwable cause = th.getCause();
        int i = 0;
        if (cause != null && Intrinsics.areEqual(cause.getClass(), th.getClass())) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    if (isArtificial(stackTrace[i2])) {
                        pair = TuplesKt.to(cause, stackTrace);
                        break;
                    }
                    i2++;
                } else {
                    pair = TuplesKt.to(th, new StackTraceElement[0]);
                    break;
                }
            }
        } else {
            pair = TuplesKt.to(th, new StackTraceElement[0]);
        }
        Throwable th2 = (Throwable) pair.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) pair.component2();
        Throwable thTryCopyException = ExceptionsConstructorKt.tryCopyException(th2);
        if (thTryCopyException != null) {
            ArrayDeque arrayDeque = new ArrayDeque();
            StackTraceElement f6258b = coroutineStackFrame.getF6258b();
            if (f6258b != null) {
                arrayDeque.add(f6258b);
            }
            while (true) {
                coroutineStackFrame = coroutineStackFrame.getCallerFrame();
                if (coroutineStackFrame == null) {
                    break;
                }
                StackTraceElement f6258b2 = coroutineStackFrame.getF6258b();
                if (f6258b2 != null) {
                    arrayDeque.add(f6258b2);
                }
            }
            if (!arrayDeque.isEmpty()) {
                if (th2 != th) {
                    int length2 = stackTraceElementArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length2) {
                            i3 = -1;
                            break;
                        }
                        if (isArtificial(stackTraceElementArr[i3])) {
                            break;
                        }
                        i3++;
                    }
                    int i4 = i3 + 1;
                    int length3 = stackTraceElementArr.length - 1;
                    if (i4 <= length3) {
                        while (true) {
                            StackTraceElement stackTraceElement = stackTraceElementArr[length3];
                            StackTraceElement stackTraceElement2 = (StackTraceElement) arrayDeque.getLast();
                            if (stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName())) {
                                arrayDeque.removeLast();
                            }
                            arrayDeque.addFirst(stackTraceElementArr[length3]);
                            if (length3 == i4) {
                                break;
                            }
                            length3--;
                        }
                    }
                }
                arrayDeque.addFirst(f6639a);
                StackTraceElement[] stackTrace2 = th2.getStackTrace();
                int length4 = stackTrace2.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length4) {
                        i5 = -1;
                        break;
                    }
                    if (Intrinsics.areEqual(f6640b, stackTrace2[i5].getClassName())) {
                        break;
                    }
                    i5++;
                }
                if (i5 == -1) {
                    thTryCopyException.setStackTrace((StackTraceElement[]) arrayDeque.toArray(new StackTraceElement[0]));
                    return thTryCopyException;
                }
                StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[arrayDeque.size() + i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    stackTraceElementArr2[i6] = stackTrace2[i6];
                }
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    stackTraceElementArr2[i + i5] = (StackTraceElement) it.next();
                    i++;
                }
                thTryCopyException.setStackTrace(stackTraceElementArr2);
                return thTryCopyException;
            }
        }
        return th;
    }

    @Nullable
    public static final Object recoverAndThrow(@NotNull Throwable th, @NotNull Continuation<?> continuation) throws Throwable {
        throw th;
    }

    @PublishedApi
    @NotNull
    public static final <E extends Throwable> E unwrapImpl(@NotNull E e) {
        E e2 = (E) e.getCause();
        if (e2 != null && Intrinsics.areEqual(e2.getClass(), e.getClass())) {
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (isArtificial(stackTraceElement)) {
                    return e2;
                }
            }
        }
        return e;
    }

    public static final boolean isArtificial(@NotNull StackTraceElement stackTraceElement) {
        return q.startsWith$default(stackTraceElement.getClassName(), CoroutineDebuggingKt.getARTIFICIAL_FRAME_PACKAGE_NAME(), false, 2, null);
    }

    public static final void initCause(@NotNull Throwable th, @NotNull Throwable th2) {
        th.initCause(th2);
    }
}
