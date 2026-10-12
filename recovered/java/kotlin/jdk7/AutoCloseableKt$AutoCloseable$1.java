package kotlin.jdk7;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class AutoCloseableKt$AutoCloseable$1 implements AutoCloseable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function0 f5830a;

    public AutoCloseableKt$AutoCloseable$1(Function0<Unit> function0) {
        this.f5830a = function0;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f5830a.invoke();
    }
}
