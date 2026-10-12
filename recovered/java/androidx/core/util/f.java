package androidx.core.util;

import java.util.Objects;

/* loaded from: classes.dex */
public abstract /* synthetic */ class f {
    public static Predicate a(Predicate predicate, Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new d(predicate, predicate2, 1);
    }

    public static Predicate b(Predicate predicate) {
        return new e(predicate, 1);
    }

    public static Predicate c(Predicate predicate, Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new d(predicate, predicate2, 0);
    }

    public static Predicate d(Object obj) {
        if (obj == null) {
            return new androidx.core.content.e(7);
        }
        return new e(obj, 0);
    }

    public static Predicate e(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }
}
