package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.g;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectInstanceInternal;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0002$%B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096@¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u0019\u0010\u000f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0013\u001a\u00020\u000b2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00112\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR(\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00020\u001b8VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0013\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070#8\u0002X\u0082\u0004¨\u0006&"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;", "Lkotlinx/coroutines/sync/Mutex;", "", "locked", "<init>", "(Z)V", "", "owner", "holdsLock", "(Ljava/lang/Object;)Z", "", "lock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryLock", "unlock", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "onLockRegFunction", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "result", "onLockProcessResult", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnLock", "()Lkotlinx/coroutines/selects/SelectClause2;", "getOnLock$annotations", "()V", "onLock", "isLocked", "()Z", "Lkotlinx/atomicfu/AtomicRef;", "a", "b", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n444#2,12:315\n1#3:327\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n171#1:315,12\n*E\n"})
/* loaded from: classes2.dex */
public class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    public final g h;
    private volatile /* synthetic */ Object owner$volatile;

    public static /* synthetic */ void getOnLock$annotations() {
    }

    public MutexImpl(boolean z) {
        super(1, z ? 1 : 0);
        this.owner$volatile = z ? null : MutexKt.f6711a;
        this.h = new g(this, 2);
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean isLocked() {
        return getAvailablePermits() == 0;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean holdsLock(@NotNull Object owner) {
        char c2;
        while (true) {
            if (!isLocked()) {
                c2 = 0;
                break;
            }
            Object obj = i.get(this);
            if (obj != MutexKt.f6711a) {
                c2 = obj == owner ? (char) 1 : (char) 2;
            }
        }
        return c2 == 1;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @Nullable
    public Object lock(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        Object objC;
        return (!tryLock(obj) && (objC = c(obj, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objC : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean tryLock(@Nullable Object owner) {
        char c2;
        char c3;
        do {
            boolean zTryAcquire = tryAcquire();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
            if (!zTryAcquire) {
                if (owner != null) {
                    while (true) {
                        if (!isLocked()) {
                            c3 = 0;
                            break;
                        }
                        Object obj = atomicReferenceFieldUpdater.get(this);
                        if (obj != MutexKt.f6711a) {
                            c3 = obj == owner ? (char) 1 : (char) 2;
                        }
                    }
                    if (c3 == 1) {
                        c2 = 2;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                atomicReferenceFieldUpdater.set(this, owner);
                c2 = 0;
                break;
            }
        } while (c3 != 2);
        c2 = 1;
        if (c2 == 0) {
            return true;
        }
        if (c2 == 1) {
            return false;
        }
        if (c2 != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + owner).toString());
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public void unlock(@Nullable Object owner) {
        while (isLocked()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != MutexKt.f6711a) {
                if (obj == owner || owner == null) {
                    Symbol symbol = MutexKt.f6711a;
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, symbol)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    release();
                    return;
                }
                throw new IllegalStateException(("This mutex is locked by " + obj + ", but " + owner + " is expected").toString());
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @NotNull
    public SelectClause2<Object, Mutex> getOnLock() {
        c cVar = c.h;
        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(cVar, 3);
        d dVar = d.h;
        Intrinsics.checkNotNull(dVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(dVar, 3), this.h);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function3<MutexImpl, SelectInstance<?>, Object, Unit> {
        public static final c h = new c();

        public c() {
            super(3, MutexImpl.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(MutexImpl mutexImpl, SelectInstance<?> selectInstance, Object obj) {
            invoke2(mutexImpl, selectInstance, obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(MutexImpl mutexImpl, SelectInstance<?> selectInstance, Object obj) {
            mutexImpl.onLockRegFunction(selectInstance, obj);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class d extends FunctionReferenceImpl implements Function3<MutexImpl, Object, Object, Object> {
        public static final d h = new d();

        public d() {
            super(3, MutexImpl.class, "onLockProcessResult", "onLockProcessResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(MutexImpl mutexImpl, Object obj, Object obj2) {
            return mutexImpl.onLockProcessResult(obj, obj2);
        }
    }

    public void onLockRegFunction(@NotNull SelectInstance<?> select, @Nullable Object owner) {
        if (owner != null && holdsLock(owner)) {
            select.selectInRegistrationPhase(MutexKt.f6712b);
        } else {
            Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
            onAcquireRegFunction(new b((SelectInstanceInternal) select, owner), owner);
        }
    }

    @Nullable
    public Object onLockProcessResult(@Nullable Object owner, @Nullable Object result) {
        if (!Intrinsics.areEqual(result, MutexKt.f6712b)) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + owner).toString());
    }

    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ|\u0010\u0015\u001a\u0004\u0018\u00010\u0006\"\b\b\u0000\u0010\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00028\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u00062M\u0010\u0014\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u0002\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0016Jp\u0010\u0017\u001a\u00020\u0002\"\b\b\u0000\u0010\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00028\u00002M\u0010\u0014\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u0002\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J$\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0097\u0001¢\u0006\u0004\b\u0015\u0010\u0019J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u000eH\u0097\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0006H\u0097\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0002H\u0097\u0001¢\u0006\u0004\b \u0010!J\u001a\u0010#\u001a\u00020\"2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0096\u0001¢\u0006\u0004\b#\u0010$J9\u0010(\u001a\u00020\u00022'\u0010'\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00020%j\u0002`&H\u0096\u0001¢\u0006\u0004\b(\u0010)J$\u0010(\u001a\u00020\u00022\n\u0010+\u001a\u0006\u0012\u0002\b\u00030*2\u0006\u0010-\u001a\u00020,H\u0096\u0001¢\u0006\u0004\b(\u0010.J\u001c\u00100\u001a\u00020\u0002*\u00020/2\u0006\u0010\u000b\u001a\u00020\u0002H\u0097\u0001¢\u0006\u0004\b0\u00101J\u001c\u00102\u001a\u00020\u0002*\u00020/2\u0006\u0010\u001a\u001a\u00020\u000eH\u0097\u0001¢\u0006\u0004\b2\u00103J=\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022#\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0002\u0018\u00010%H\u0097\u0001¢\u0006\u0004\b\u0017\u00104J\u001e\u00107\u001a\u00020\u00022\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000205H\u0096\u0001¢\u0006\u0004\b7\u0010\u001fR\u0014\u00108\u001a\u00020\"8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b8\u00109R\u0014\u0010:\u001a\u00020\"8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b:\u00109R\u0014\u0010;\u001a\u00020\"8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b;\u00109R\u0014\u0010\u0013\u001a\u00020\u00128\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b<\u0010=¨\u0006>"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$a;", "Lkotlinx/coroutines/CancellableContinuation;", "", "Lkotlinx/coroutines/Waiter;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "cont", "", "owner", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;)V", "R", "value", "idempotent", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "tryResume", "(Lkotlin/Unit;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "resume", "(Lkotlin/Unit;Lkotlin/jvm/functions/Function3;)V", "(Lkotlin/Unit;Ljava/lang/Object;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "completeResume", "(Ljava/lang/Object;)V", "initCancellability", "()V", "", "cancel", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "Lkotlinx/coroutines/CompletionHandler;", "handler", "invokeOnCancellation", "(Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/Segment;", "segment", "", "index", "(Lkotlinx/coroutines/internal/Segment;I)V", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/Unit;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V", "(Lkotlin/Unit;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Result;", "result", "resumeWith", "isActive", "()Z", "isCompleted", "isCancelled", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n1#2:315\n*E\n"})
    public final class a implements CancellableContinuation<Unit>, Waiter {

        /* renamed from: a, reason: collision with root package name */
        public final CancellableContinuationImpl f6707a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f6708b;

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean cancel(@Nullable Throwable cause) {
            return this.f6707a.cancel(cause);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        public void completeResume(@NotNull Object token) {
            this.f6707a.completeResume(token);
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        /* renamed from: getContext */
        public CoroutineContext getF5543a() {
            return this.f6707a.getF5543a();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        public void initCancellability() {
            this.f6707a.initCancellability();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public void invokeOnCancellation(@NotNull Function1<? super Throwable, Unit> handler) {
            this.f6707a.invokeOnCancellation(handler);
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
            this.f6707a.invokeOnCancellation(segment, index);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean isActive() {
            return this.f6707a.isActive();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean isCancelled() {
            return this.f6707a.isCancelled();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public boolean isCompleted() {
            return this.f6707a.isCompleted();
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Use the overload that also accepts the `value` and the coroutine context in lambda", replaceWith = @ReplaceWith(expression = "resume(value) { cause, _, _ -> onCancellation(cause) }", imports = {}))
        /* renamed from: resume, reason: avoid collision after fix types in other method */
        public void resume2(@NotNull Unit value, @Nullable Function1<? super Throwable, Unit> onCancellation) {
            this.f6707a.resume((CancellableContinuationImpl) value, onCancellation);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @ExperimentalCoroutinesApi
        public void resumeUndispatched(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Unit unit) {
            this.f6707a.resumeUndispatched(coroutineDispatcher, unit);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @ExperimentalCoroutinesApi
        public void resumeUndispatchedWithException(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
            this.f6707a.resumeUndispatchedWithException(coroutineDispatcher, th);
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object result) {
            this.f6707a.resumeWith(result);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        @Nullable
        public Object tryResume(@NotNull Unit value, @Nullable Object idempotent) {
            return this.f6707a.tryResume(value, idempotent);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        @InternalCoroutinesApi
        @Nullable
        public Object tryResumeWithException(@NotNull Throwable exception) {
            return this.f6707a.tryResumeWithException(exception);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public /* bridge */ /* synthetic */ void resume(Unit unit, Function1 function1) {
            resume2(unit, (Function1<? super Throwable, Unit>) function1);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public /* bridge */ /* synthetic */ void resume(Object obj, Function3 function3) {
            resume((a) obj, (Function3<? super Throwable, ? super a, ? super CoroutineContext, Unit>) function3);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public /* bridge */ /* synthetic */ Object tryResume(Object obj, Object obj2, Function3 function3) {
            return tryResume((a) obj, obj2, (Function3<? super Throwable, ? super a, ? super CoroutineContext, Unit>) function3);
        }

        public a(@NotNull CancellableContinuationImpl<? super Unit> cancellableContinuationImpl, @Nullable Object obj) {
            this.f6707a = cancellableContinuationImpl;
            this.f6708b = obj;
        }

        @Nullable
        public <R extends Unit> Object tryResume(@NotNull R value, @Nullable Object idempotent, @Nullable Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
            MutexImpl mutexImpl = MutexImpl.this;
            Object objTryResume = this.f6707a.tryResume(value, idempotent, new kotlinx.coroutines.sync.a(mutexImpl, this, 0));
            if (objTryResume != null) {
                MutexImpl.i.set(mutexImpl, this.f6708b);
            }
            return objTryResume;
        }

        public <R extends Unit> void resume(@NotNull R value, @Nullable Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.i;
            final MutexImpl mutexImpl = MutexImpl.this;
            atomicReferenceFieldUpdater.set(mutexImpl, this.f6708b);
            this.f6707a.resume((CancellableContinuationImpl) value, new Function1() { // from class: kotlinx.coroutines.sync.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    mutexImpl.unlock(this.f6708b);
                    return Unit.INSTANCE;
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0096\u0001¢\u0006\u0004\b\u0013\u0010\u0014J$\u0010\u0019\u001a\u00020\u000e2\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$b;", "Q", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "select", "", "owner", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/selects/SelectInstanceInternal;Ljava/lang/Object;)V", "clauseObject", "result", "", "trySelect", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "internalResult", "", "selectInRegistrationPhase", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/DisposableHandle;", "disposableHandle", "disposeOnCompletion", "(Lkotlinx/coroutines/DisposableHandle;)V", "Lkotlinx/coroutines/internal/Segment;", "segment", "", "index", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n1#2:315\n*E\n"})
    public final class b<Q> implements SelectInstanceInternal<Q> {

        /* renamed from: a, reason: collision with root package name */
        public final SelectInstanceInternal f6709a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f6710b;

        @Override // kotlinx.coroutines.selects.SelectInstance
        public void disposeOnCompletion(@NotNull DisposableHandle disposableHandle) {
            this.f6709a.disposeOnCompletion(disposableHandle);
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        @NotNull
        public CoroutineContext getContext() {
            return this.f6709a.getContext();
        }

        @Override // kotlinx.coroutines.Waiter
        public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
            this.f6709a.invokeOnCancellation(segment, index);
        }

        public b(@NotNull SelectInstanceInternal<Q> selectInstanceInternal, @Nullable Object obj) {
            this.f6709a = selectInstanceInternal;
            this.f6710b = obj;
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public boolean trySelect(@NotNull Object clauseObject, @Nullable Object result) {
            boolean zTrySelect = this.f6709a.trySelect(clauseObject, result);
            if (zTrySelect) {
                MutexImpl.i.set(MutexImpl.this, this.f6710b);
            }
            return zTrySelect;
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public void selectInRegistrationPhase(@Nullable Object internalResult) {
            MutexImpl.i.set(MutexImpl.this, this.f6710b);
            this.f6709a.selectInRegistrationPhase(internalResult);
        }
    }

    @NotNull
    public String toString() {
        return "Mutex@" + DebugStringsKt.getHexAddress(this) + "[isLocked=" + isLocked() + ",owner=" + i.get(this) + ']';
    }

    public final Object c(Object obj, Continuation continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            acquire((CancellableContinuation<? super Unit>) new a(orCreateCancellableContinuation, obj));
            Object result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }
}
