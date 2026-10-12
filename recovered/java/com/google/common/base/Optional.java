package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@DoNotMock("Use Optional.of(value) or Optional.absent()")
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public abstract class Optional<T> implements Serializable {
    public abstract Set<T> asSet();

    public abstract boolean equals(@NullableDecl Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    @Beta
    public abstract T or(Supplier<? extends T> supplier);

    public abstract T or(T t);

    @NullableDecl
    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(Function<? super T, V> function);

    public static <T> Optional<T> absent() {
        return com.google.common.base.a.f3729a;
    }

    public static <T> Optional<T> of(T t) {
        return new m(Preconditions.checkNotNull(t));
    }

    public static <T> Optional<T> fromNullable(@NullableDecl T t) {
        return t == null ? absent() : new m(t);
    }

    public static class a implements Iterable<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Iterable f3687a;

        public a(Iterable iterable) {
            this.f3687a = iterable;
        }

        /* renamed from: com.google.common.base.Optional$a$a, reason: collision with other inner class name */
        public class C0089a extends b<T> {
            public final Iterator c;

            public C0089a(a aVar) {
                this.c = (Iterator) Preconditions.checkNotNull(aVar.f3687a.iterator());
            }

            @Override // com.google.common.base.b
            public T computeNext() {
                Optional optional;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        optional = (Optional) it.next();
                    } else {
                        return endOfData();
                    }
                } while (!optional.isPresent());
                return (T) optional.get();
            }
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C0089a(this);
        }
    }

    @Beta
    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new a(iterable);
    }
}
