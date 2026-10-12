package com.google.common.eventbus;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    public final EventBus f4434a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4435b;
    public final Method c;
    public final Executor d;

    public c(EventBus eventBus, Object obj, Method method) throws SecurityException {
        this.f4434a = eventBus;
        this.f4435b = Preconditions.checkNotNull(obj);
        this.c = method;
        method.setAccessible(true);
        this.d = eventBus.f4421b;
    }

    public void a(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.c.invoke(this.f4435b, Preconditions.checkNotNull(obj));
        } catch (IllegalAccessException e) {
            throw new Error("Method became inaccessible: " + obj, e);
        } catch (IllegalArgumentException e2) {
            throw new Error("Method rejected target/argument: " + obj, e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof Error) {
                throw ((Error) e3.getCause());
            }
            throw e3;
        }
    }

    public final int hashCode() {
        return System.identityHashCode(this.f4435b) + ((this.c.hashCode() + 31) * 31);
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (this.f4435b == cVar.f4435b && this.c.equals(cVar.c)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    public static final class a extends c {
        @Override // com.google.common.eventbus.c
        public final void a(Object obj) {
            synchronized (this) {
                super.a(obj);
            }
        }
    }
}
