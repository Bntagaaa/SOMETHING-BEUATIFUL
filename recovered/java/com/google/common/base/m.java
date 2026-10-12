package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
final class m<T> extends Optional<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3746a;

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    public m(Object obj) {
        this.f3746a = obj;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        return (T) this.f3746a;
    }

    @Override // com.google.common.base.Optional
    public T or(T t) {
        Preconditions.checkNotNull(t, "use Optional.orNull() instead of Optional.or(null)");
        return (T) this.f3746a;
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        Preconditions.checkNotNull(optional);
        return this;
    }

    @Override // com.google.common.base.Optional
    public T or(Supplier<? extends T> supplier) {
        Preconditions.checkNotNull(supplier);
        return (T) this.f3746a;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return (T) this.f3746a;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.singleton(this.f3746a);
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(Function<? super T, V> function) {
        return new m(Preconditions.checkNotNull(function.apply((Object) this.f3746a), "the Function passed to Optional.transform() must not return null."));
    }

    @Override // com.google.common.base.Optional
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof m) {
            return this.f3746a.equals(((m) obj).f3746a);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return this.f3746a.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return _COROUTINE.a.l(new StringBuilder("Optional.of("), this.f3746a, ")");
    }
}
