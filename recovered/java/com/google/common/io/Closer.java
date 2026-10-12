package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.logging.Level;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class Closer implements Closeable {
    public static final c d;

    /* renamed from: a, reason: collision with root package name */
    public final c f4646a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f4647b = new ArrayDeque(4);
    public Throwable c;

    @VisibleForTesting
    public interface c {
        void suppress(Closeable closeable, Throwable th, Throwable th2);
    }

    public static Closer create() {
        return new Closer(d);
    }

    public Closer(c cVar) {
        this.f4646a = (c) Preconditions.checkNotNull(cVar);
    }

    @CanIgnoreReturnValue
    public <C extends Closeable> C register(@NullableDecl C c2) {
        if (c2 != null) {
            this.f4647b.addFirst(c2);
        }
        return c2;
    }

    public RuntimeException rethrow(Throwable th) throws Throwable {
        Preconditions.checkNotNull(th);
        this.c = th;
        Throwables.propagateIfPossible(th, IOException.class);
        throw new RuntimeException(th);
    }

    public <X extends Exception> RuntimeException rethrow(Throwable th, Class<X> cls) throws Exception {
        Preconditions.checkNotNull(th);
        this.c = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls);
        throw new RuntimeException(th);
    }

    public <X1 extends Exception, X2 extends Exception> RuntimeException rethrow(Throwable th, Class<X1> cls, Class<X2> cls2) throws Exception {
        Preconditions.checkNotNull(th);
        this.c = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls, cls2);
        throw new RuntimeException(th);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th = this.c;
        while (true) {
            ArrayDeque arrayDeque = this.f4647b;
            if (arrayDeque.isEmpty()) {
                break;
            }
            Closeable closeable = (Closeable) arrayDeque.removeFirst();
            try {
                closeable.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.f4646a.suppress(closeable, th, th2);
                }
            }
        }
        if (this.c != null || th == null) {
            return;
        }
        Throwables.propagateIfPossible(th, IOException.class);
        throw new AssertionError(th);
    }

    @VisibleForTesting
    public static final class a implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4648a = new a();

        @Override // com.google.common.io.Closer.c
        public void suppress(Closeable closeable, Throwable th, Throwable th2) {
            Closeables.f4645a.log(Level.WARNING, "Suppressing exception thrown when closing " + closeable, th2);
        }
    }

    @VisibleForTesting
    public static final class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4649a = new b();

        /* renamed from: b, reason: collision with root package name */
        public static final Method f4650b;

        static {
            Method method;
            try {
                method = Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable unused) {
                method = null;
            }
            f4650b = method;
        }

        @Override // com.google.common.io.Closer.c
        public void suppress(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                f4650b.invoke(th, th2);
            } catch (Throwable unused) {
                a.f4648a.suppress(closeable, th, th2);
            }
        }
    }

    static {
        d = b.f4650b != null ? b.f4649a : a.f4648a;
    }
}
