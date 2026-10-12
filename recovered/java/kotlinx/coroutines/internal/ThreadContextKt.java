package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a#\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a!\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b\n\u0010\u000b\"\u0014\u0010\r\u001a\u00020\f8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "threadContextElements", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "countOrElement", "updateThreadContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;", "oldState", "", "restoreThreadContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "Lkotlinx/coroutines/internal/Symbol;", "NO_THREAD_ELEMENTS", "Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ThreadContextKt {

    @JvmField
    @NotNull
    public static final Symbol NO_THREAD_ELEMENTS = new Symbol("NO_THREAD_ELEMENTS");

    /* renamed from: a, reason: collision with root package name */
    public static final h f6641a;

    /* renamed from: b, reason: collision with root package name */
    public static final h f6642b;
    public static final h c;

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.h] */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlinx.coroutines.internal.h] */
    /* JADX WARN: Type inference failed for: r0v3, types: [kotlinx.coroutines.internal.h] */
    static {
        final int i = 1;
        f6641a = new Function2() { // from class: kotlinx.coroutines.internal.h
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        i iVar = (i) obj;
                        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                        Symbol symbol = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (element instanceof ThreadContextElement) {
                            ThreadContextElement<?> threadContextElement = (ThreadContextElement) element;
                            iVar.append(threadContextElement, threadContextElement.updateThreadContext(iVar.f6656a));
                        }
                        return iVar;
                    case 1:
                        CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                        Symbol symbol2 = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (!(element2 instanceof ThreadContextElement)) {
                            return obj;
                        }
                        Integer num = obj instanceof Integer ? (Integer) obj : null;
                        int iIntValue = num != null ? num.intValue() : 1;
                        return iIntValue == 0 ? element2 : Integer.valueOf(iIntValue + 1);
                    default:
                        ThreadContextElement threadContextElement2 = (ThreadContextElement) obj;
                        CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                        Symbol symbol3 = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (threadContextElement2 != null) {
                            return threadContextElement2;
                        }
                        if (element3 instanceof ThreadContextElement) {
                            return (ThreadContextElement) element3;
                        }
                        return null;
                }
            }
        };
        final int i2 = 2;
        f6642b = new Function2() { // from class: kotlinx.coroutines.internal.h
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        i iVar = (i) obj;
                        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                        Symbol symbol = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (element instanceof ThreadContextElement) {
                            ThreadContextElement<?> threadContextElement = (ThreadContextElement) element;
                            iVar.append(threadContextElement, threadContextElement.updateThreadContext(iVar.f6656a));
                        }
                        return iVar;
                    case 1:
                        CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                        Symbol symbol2 = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (!(element2 instanceof ThreadContextElement)) {
                            return obj;
                        }
                        Integer num = obj instanceof Integer ? (Integer) obj : null;
                        int iIntValue = num != null ? num.intValue() : 1;
                        return iIntValue == 0 ? element2 : Integer.valueOf(iIntValue + 1);
                    default:
                        ThreadContextElement threadContextElement2 = (ThreadContextElement) obj;
                        CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                        Symbol symbol3 = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (threadContextElement2 != null) {
                            return threadContextElement2;
                        }
                        if (element3 instanceof ThreadContextElement) {
                            return (ThreadContextElement) element3;
                        }
                        return null;
                }
            }
        };
        final int i3 = 0;
        c = new Function2() { // from class: kotlinx.coroutines.internal.h
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                switch (i3) {
                    case 0:
                        i iVar = (i) obj;
                        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                        Symbol symbol = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (element instanceof ThreadContextElement) {
                            ThreadContextElement<?> threadContextElement = (ThreadContextElement) element;
                            iVar.append(threadContextElement, threadContextElement.updateThreadContext(iVar.f6656a));
                        }
                        return iVar;
                    case 1:
                        CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                        Symbol symbol2 = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (!(element2 instanceof ThreadContextElement)) {
                            return obj;
                        }
                        Integer num = obj instanceof Integer ? (Integer) obj : null;
                        int iIntValue = num != null ? num.intValue() : 1;
                        return iIntValue == 0 ? element2 : Integer.valueOf(iIntValue + 1);
                    default:
                        ThreadContextElement threadContextElement2 = (ThreadContextElement) obj;
                        CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                        Symbol symbol3 = ThreadContextKt.NO_THREAD_ELEMENTS;
                        if (threadContextElement2 != null) {
                            return threadContextElement2;
                        }
                        if (element3 instanceof ThreadContextElement) {
                            return (ThreadContextElement) element3;
                        }
                        return null;
                }
            }
        };
    }

    @NotNull
    public static final Object threadContextElements(@NotNull CoroutineContext coroutineContext) {
        Object objFold = coroutineContext.fold(0, f6641a);
        Intrinsics.checkNotNull(objFold);
        return objFold;
    }

    @Nullable
    public static final Object updateThreadContext(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == null) {
            obj = threadContextElements(coroutineContext);
        }
        if (obj == 0) {
            return NO_THREAD_ELEMENTS;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new i(coroutineContext, ((Number) obj).intValue()), c);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((ThreadContextElement) obj).updateThreadContext(coroutineContext);
    }

    public static final void restoreThreadContext(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == NO_THREAD_ELEMENTS) {
            return;
        }
        if (obj instanceof i) {
            ((i) obj).restore(coroutineContext);
            return;
        }
        Object objFold = coroutineContext.fold(null, f6642b);
        Intrinsics.checkNotNull(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((ThreadContextElement) objFold).restoreThreadContext(coroutineContext, obj);
    }
}
