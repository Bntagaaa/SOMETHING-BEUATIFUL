package kotlinx.coroutines.stream;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0096@¢\u0006\u0004\b\n\u0010\u000bR\u000b\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/stream/a;", "T", "Lkotlinx/coroutines/flow/Flow;", "Ljava/util/stream/Stream;", "stream", "<init>", "(Ljava/util/stream/Stream;)V", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/atomicfu/AtomicBoolean;", "consumed", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class a<T> implements Flow<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f6704b = AtomicIntegerFieldUpdater.newUpdater(a.class, "consumed$volatile");

    /* renamed from: a, reason: collision with root package name */
    public final Stream f6705a;
    private volatile /* synthetic */ int consumed$volatile;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.stream.StreamFlow", f = "Stream.kt", i = {0, 0}, l = {22}, m = "collect", n = {"this", "collector"}, s = {"L$0", "L$1"})
    /* renamed from: kotlinx.coroutines.stream.a$a, reason: collision with other inner class name */
    public static final class C0180a extends ContinuationImpl {
        public Object d;
        public FlowCollector e;
        public Iterator f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f6706g;
        public int i;

        public C0180a(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f6706g = obj;
            this.i |= Integer.MIN_VALUE;
            return a.this.collect(null, this);
        }
    }

    public a(@NotNull Stream<T> stream) {
        this.f6705a = stream;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.FlowCollector<? super T> r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.stream.a.C0180a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.stream.a$a r0 = (kotlinx.coroutines.stream.a.C0180a) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.stream.a$a r0 = new kotlinx.coroutines.stream.a$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f6706g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.util.Iterator r6 = r0.f
            kotlinx.coroutines.flow.FlowCollector r2 = r0.e
            java.lang.Object r4 = r0.d
            kotlinx.coroutines.stream.a r4 = (kotlinx.coroutines.stream.a) r4
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L32
            r7 = r2
            goto L52
        L32:
            r6 = move-exception
            goto L75
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = 0
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = kotlinx.coroutines.stream.a.f6704b
            boolean r7 = r2.compareAndSet(r5, r7, r3)
            if (r7 == 0) goto L7b
            java.util.stream.Stream r7 = r5.f6705a     // Catch: java.lang.Throwable -> L73
            java.util.Iterator r7 = com.google.appinventor.components.runtime.fcm.a.f(r7)     // Catch: java.lang.Throwable -> L73
            r4 = r7
            r7 = r6
            r6 = r4
            r4 = r5
        L52:
            boolean r2 = r6.hasNext()     // Catch: java.lang.Throwable -> L32
            if (r2 == 0) goto L6b
            java.lang.Object r2 = r6.next()     // Catch: java.lang.Throwable -> L32
            r0.d = r4     // Catch: java.lang.Throwable -> L32
            r0.e = r7     // Catch: java.lang.Throwable -> L32
            r0.f = r6     // Catch: java.lang.Throwable -> L32
            r0.i = r3     // Catch: java.lang.Throwable -> L32
            java.lang.Object r2 = r7.emit(r2, r0)     // Catch: java.lang.Throwable -> L32
            if (r2 != r1) goto L52
            return r1
        L6b:
            java.util.stream.Stream r6 = r4.f6705a
            kotlinx.coroutines.future.d.e(r6)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L73:
            r6 = move-exception
            r4 = r5
        L75:
            java.util.stream.Stream r7 = r4.f6705a
            kotlinx.coroutines.future.d.e(r7)
            throw r6
        L7b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Stream.consumeAsFlow can be collected only once"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.stream.a.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
