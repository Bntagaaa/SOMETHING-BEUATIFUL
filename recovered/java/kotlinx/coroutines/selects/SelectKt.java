package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aD\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001f\b\u0004\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0002\b\u0004H\u0086H\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0006\u0010\u0007\"\u001a\u0010\r\u001a\u00020\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f*¦\u0001\b\u0007\u0010\u0016\"M\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00030\u000e2M\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00030\u000eB\u0002\b\u0015*¦\u0001\b\u0007\u0010\u0018\"M\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2M\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eB\u0002\b\u0015*Þ\u0001\b\u0007\u0010\u001c\"i\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0019\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00030\u000e0\u000e2i\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0019\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00030\u000e0\u000eB\u0002\b\u0015¨\u0006\u001d"}, d2 = {"R", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "builder", "select", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "f", "Lkotlinx/coroutines/internal/Symbol;", "getPARAM_CLAUSE_0", "()Lkotlinx/coroutines/internal/Symbol;", "PARAM_CLAUSE_0", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "clauseObject", "Lkotlinx/coroutines/selects/SelectInstance;", "param", "Lkotlinx/coroutines/InternalCoroutinesApi;", "RegistrationFunction", "clauseResult", "ProcessResultFunction", "internalResult", "", "Lkotlin/coroutines/CoroutineContext;", "OnCancellationConstructor", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SelectKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Function3 f6694a = a.f6696a;

    /* renamed from: b, reason: collision with root package name */
    public static final Symbol f6695b = new Symbol("STATE_REG");
    public static final Symbol c = new Symbol("STATE_COMPLETED");
    public static final Symbol d = new Symbol("STATE_CANCELLED");
    public static final Symbol e = new Symbol("NO_RESULT");
    public static final Symbol f = new Symbol("PARAM_CLAUSE_0");

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class a implements Function3 {

        /* renamed from: a, reason: collision with root package name */
        public static final a f6696a = new a();

        @Override // kotlin.jvm.functions.Function3
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void OnCancellationConstructor$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void ProcessResultFunction$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void RegistrationFunction$annotations() {
    }

    @Nullable
    public static final <R> Object select(@NotNull Function1<? super SelectBuilder<? super R>, Unit> function1, @NotNull Continuation<? super R> continuation) {
        SelectImplementation selectImplementation = new SelectImplementation(continuation.getContext());
        function1.invoke(selectImplementation);
        return selectImplementation.doSelect(continuation);
    }

    public static final boolean access$tryResume(CancellableContinuation cancellableContinuation, Function3 function3) {
        Object objTryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, function3);
        if (objTryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(objTryResume);
        return true;
    }

    public static final TrySelectDetailedResult access$TrySelectDetailedResult(int i) {
        if (i == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i).toString());
    }

    @NotNull
    public static final Symbol getPARAM_CLAUSE_0() {
        return f;
    }
}
