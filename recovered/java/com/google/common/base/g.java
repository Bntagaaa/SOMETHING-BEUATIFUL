package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
final class g<F, T> extends Equivalence<F> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Function f3736a;

    /* renamed from: b, reason: collision with root package name */
    public final Equivalence f3737b;

    public g(Function function, Equivalence equivalence) {
        this.f3736a = (Function) Preconditions.checkNotNull(function);
        this.f3737b = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Equivalence
    public boolean doEquivalent(F f, F f2) {
        Function function = this.f3736a;
        return this.f3737b.equivalent(function.apply(f), function.apply(f2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Equivalence
    public int doHash(F f) {
        return this.f3737b.hash(this.f3736a.apply(f));
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (this.f3736a.equals(gVar.f3736a) && this.f3737b.equals(gVar.f3737b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f3736a, this.f3737b);
    }

    public String toString() {
        return this.f3737b + ".onResultOf(" + this.f3736a + ")";
    }
}
