package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class e0<F, T> extends Ordering<F> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Function f4197a;

    /* renamed from: b, reason: collision with root package name */
    public final Ordering f4198b;

    public e0(Function function, Ordering ordering) {
        this.f4197a = (Function) Preconditions.checkNotNull(function);
        this.f4198b = (Ordering) Preconditions.checkNotNull(ordering);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(F f, F f2) {
        Function function = this.f4197a;
        return this.f4198b.compare(function.apply(f), function.apply(f2));
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            if (this.f4197a.equals(e0Var.f4197a) && this.f4198b.equals(e0Var.f4198b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f4197a, this.f4198b);
    }

    public String toString() {
        return this.f4198b + ".onResultOf(" + this.f4197a + ")";
    }
}
