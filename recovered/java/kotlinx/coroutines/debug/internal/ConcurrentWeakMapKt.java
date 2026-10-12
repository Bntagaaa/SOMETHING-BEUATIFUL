package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ConcurrentWeakMapKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f6243a = new Symbol("REHASH");

    /* renamed from: b, reason: collision with root package name */
    public static final g f6244b = new g(null);
    public static final g c = new g(Boolean.TRUE);

    public static final g access$mark(Object obj) {
        if (obj == null) {
            return f6244b;
        }
        return Intrinsics.areEqual(obj, Boolean.TRUE) ? c : new g(obj);
    }

    public static final Void access$noImpl() {
        throw new UnsupportedOperationException("not implemented");
    }
}
