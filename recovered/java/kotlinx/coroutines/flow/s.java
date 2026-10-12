package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {0}, l = {337}, m = "invokeSuspend", n = {"state"}, s = {"L$0"})
/* loaded from: classes2.dex */
final class s extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int e;
    public /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Flow f6589g;
    public final /* synthetic */ CompletableDeferred h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Flow flow, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.f6589g = flow;
        this.h = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        s sVar = new s(this.f6589g, this.h, continuation);
        sVar.f = obj;
        return sVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((s) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef objectRef;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.e;
        CompletableDeferred completableDeferred = this.h;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f;
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                Flow flow = this.f6589g;
                a aVar = new a(objectRef2, coroutineScope, completableDeferred);
                this.f = objectRef2;
                this.e = 1;
                if (flow.collect(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef = (Ref.ObjectRef) this.f;
                ResultKt.throwOnFailure(obj);
            }
            if (objectRef.element == 0) {
                Result.Companion companion = Result.INSTANCE;
                completableDeferred.complete(Result.m564boximpl(Result.m565constructorimpl(ResultKt.createFailure(new NoSuchElementException("Flow is empty")))));
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            completableDeferred.completeExceptionally(th);
            throw th;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,429:1\n1#2:430\n*E\n"})
    public static final class a<T> implements FlowCollector {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f6590a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f6591b;
        public final /* synthetic */ CompletableDeferred c;

        public a(Ref.ObjectRef objectRef, CoroutineScope coroutineScope, CompletableDeferred completableDeferred) {
            this.f6590a = objectRef;
            this.f6591b = coroutineScope;
            this.c = completableDeferred;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [T, kotlinx.coroutines.flow.MutableStateFlow, kotlinx.coroutines.flow.StateFlow] */
        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(T t, Continuation<? super Unit> continuation) {
            Ref.ObjectRef objectRef = this.f6590a;
            MutableStateFlow mutableStateFlow = (MutableStateFlow) objectRef.element;
            if (mutableStateFlow != null) {
                mutableStateFlow.setValue(t);
            } else {
                ?? r3 = (T) StateFlowKt.MutableStateFlow(t);
                Result.Companion companion = Result.INSTANCE;
                this.c.complete(Result.m564boximpl(Result.m565constructorimpl(new w(r3, JobKt.getJob(this.f6591b.getCoroutineContext())))));
                objectRef.element = r3;
            }
            return Unit.INSTANCE;
        }
    }
}
