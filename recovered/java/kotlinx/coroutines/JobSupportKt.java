package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0017\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0002\"\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"", "boxIncomplete", "(Ljava/lang/Object;)Ljava/lang/Object;", "unboxState", "Lkotlinx/coroutines/internal/Symbol;", "COMPLETING_WAITING_CHILDREN", "Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class JobSupportKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f6143a = new Symbol("COMPLETING_ALREADY");

    @JvmField
    @NotNull
    public static final Symbol COMPLETING_WAITING_CHILDREN = new Symbol("COMPLETING_WAITING_CHILDREN");

    /* renamed from: b, reason: collision with root package name */
    public static final Symbol f6144b = new Symbol("COMPLETING_RETRY");
    public static final Symbol c = new Symbol("TOO_LATE_TO_CANCEL");
    public static final Symbol d = new Symbol("SEALED");
    public static final r e = new r(false);
    public static final r f = new r(true);

    @Nullable
    public static final Object boxIncomplete(@Nullable Object obj) {
        return obj instanceof Incomplete ? new t((Incomplete) obj) : obj;
    }

    @Nullable
    public static final Object unboxState(@Nullable Object obj) {
        Incomplete incomplete;
        t tVar = obj instanceof t ? (t) obj : null;
        return (tVar == null || (incomplete = tVar.f6724a) == null) ? obj : incomplete;
    }
}
