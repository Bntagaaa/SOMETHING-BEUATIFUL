package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\f\u001a\u00020\u000b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/internal/i;", "", "Lkotlin/coroutines/CoroutineContext;", "context", "", "n", "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "Lkotlinx/coroutines/ThreadContextElement;", "element", "value", "", "append", "(Lkotlinx/coroutines/ThreadContextElement;Ljava/lang/Object;)V", "restore", "(Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class i {

    /* renamed from: a, reason: collision with root package name */
    public final CoroutineContext f6656a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f6657b;
    public final ThreadContextElement[] c;
    public int d;

    public i(@NotNull CoroutineContext coroutineContext, int i) {
        this.f6656a = coroutineContext;
        this.f6657b = new Object[i];
        this.c = new ThreadContextElement[i];
    }

    public final void append(@NotNull ThreadContextElement<?> element, @Nullable Object value) {
        int i = this.d;
        this.f6657b[i] = value;
        this.d = i + 1;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        this.c[i] = element;
    }

    public final void restore(@NotNull CoroutineContext context) {
        ThreadContextElement[] threadContextElementArr = this.c;
        int length = threadContextElementArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            ThreadContextElement threadContextElement = threadContextElementArr[length];
            Intrinsics.checkNotNull(threadContextElement);
            threadContextElement.restoreThreadContext(context, this.f6657b[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }
}
