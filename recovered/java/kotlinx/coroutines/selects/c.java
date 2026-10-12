package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {0}, l = {453, 456}, m = "doSelectSuspend", n = {"this"}, s = {"L$0"})
/* loaded from: classes2.dex */
final class c extends ContinuationImpl {
    public SelectImplementation d;
    public /* synthetic */ Object e;
    public final /* synthetic */ SelectImplementation f;

    /* renamed from: g, reason: collision with root package name */
    public int f6703g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(SelectImplementation selectImplementation, Continuation continuation) {
        super(continuation);
        this.f = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.e = obj;
        this.f6703g |= Integer.MIN_VALUE;
        return this.f.b(this);
    }
}
