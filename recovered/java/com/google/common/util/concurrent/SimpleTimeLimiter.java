package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class SimpleTimeLimiter implements TimeLimiter {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f4988a;

    public SimpleTimeLimiter(ExecutorService executorService) {
        this.f4988a = (ExecutorService) Preconditions.checkNotNull(executorService);
    }

    public static SimpleTimeLimiter create(ExecutorService executorService) {
        return new SimpleTimeLimiter(executorService);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit) throws SecurityException {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(timeUnit);
        a(j);
        Preconditions.checkArgument(cls.isInterface(), "interfaceType must be an interface type");
        HashSet hashSetNewHashSet = Sets.newHashSet();
        for (Method method : cls.getMethods()) {
            Class<?>[] exceptionTypes = method.getExceptionTypes();
            int length = exceptionTypes.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (exceptionTypes[i] == InterruptedException.class) {
                    hashSetNewHashSet.add(method);
                    break;
                }
                i++;
            }
        }
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(t, j, timeUnit, hashSetNewHashSet)));
    }

    public class a implements InvocationHandler {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f4989a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ long f4990b;
        public final /* synthetic */ TimeUnit c;
        public final /* synthetic */ HashSet d;

        public a(Object obj, long j, TimeUnit timeUnit, HashSet hashSet) {
            this.f4989a = obj;
            this.f4990b = j;
            this.c = timeUnit;
            this.d = hashSet;
        }

        /* renamed from: com.google.common.util.concurrent.SimpleTimeLimiter$a$a, reason: collision with other inner class name */
        public class CallableC0145a implements Callable<Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Method f4991a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Object[] f4992b;

            public CallableC0145a(Method method, Object[] objArr) {
                this.f4991a = method;
                this.f4992b = objArr;
            }

            @Override // java.util.concurrent.Callable
            public Object call() throws Exception {
                try {
                    return this.f4991a.invoke(a.this.f4989a, this.f4992b);
                } catch (InvocationTargetException e) {
                    SimpleTimeLimiter.b(e, false);
                    throw null;
                }
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Exception {
            CallableC0145a callableC0145a = new CallableC0145a(method, objArr);
            boolean zContains = this.d.contains(method);
            SimpleTimeLimiter simpleTimeLimiter = SimpleTimeLimiter.this;
            Preconditions.checkNotNull(callableC0145a);
            TimeUnit timeUnit = this.c;
            Preconditions.checkNotNull(timeUnit);
            long j = this.f4990b;
            SimpleTimeLimiter.a(j);
            Future futureSubmit = simpleTimeLimiter.f4988a.submit(callableC0145a);
            try {
                if (zContains) {
                    try {
                        return futureSubmit.get(j, timeUnit);
                    } catch (InterruptedException e) {
                        futureSubmit.cancel(true);
                        throw e;
                    }
                }
                return Uninterruptibles.getUninterruptibly(futureSubmit, j, timeUnit);
            } catch (ExecutionException e2) {
                SimpleTimeLimiter.b(e2, true);
                throw null;
            } catch (TimeoutException e3) {
                futureSubmit.cancel(true);
                throw new UncheckedTimeoutException(e3);
            }
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    public <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws Throwable {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(timeUnit);
        a(j);
        Future<T> futureSubmit = this.f4988a.submit(callable);
        try {
            return futureSubmit.get(j, timeUnit);
        } catch (InterruptedException e) {
            e = e;
            futureSubmit.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            if (cause instanceof RuntimeException) {
                throw new UncheckedExecutionException(cause);
            }
            throw new ExecutionException(cause);
        } catch (TimeoutException e3) {
            e = e3;
            futureSubmit.cancel(true);
            throw e;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(timeUnit);
        a(j);
        Future<T> futureSubmit = this.f4988a.submit(callable);
        try {
            return (T) Uninterruptibles.getUninterruptibly(futureSubmit, j, timeUnit);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            if (cause instanceof RuntimeException) {
                throw new UncheckedExecutionException(cause);
            }
            throw new ExecutionException(cause);
        } catch (TimeoutException e2) {
            futureSubmit.cancel(true);
            throw e2;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws Throwable {
        Preconditions.checkNotNull(runnable);
        Preconditions.checkNotNull(timeUnit);
        a(j);
        Future<?> futureSubmit = this.f4988a.submit(runnable);
        try {
            futureSubmit.get(j, timeUnit);
        } catch (InterruptedException e) {
            e = e;
            futureSubmit.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            throw new UncheckedExecutionException(cause);
        } catch (TimeoutException e3) {
            e = e3;
            futureSubmit.cancel(true);
            throw e;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException {
        Preconditions.checkNotNull(runnable);
        Preconditions.checkNotNull(timeUnit);
        a(j);
        Future<?> futureSubmit = this.f4988a.submit(runnable);
        try {
            Uninterruptibles.getUninterruptibly(futureSubmit, j, timeUnit);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            throw new UncheckedExecutionException(cause);
        } catch (TimeoutException e2) {
            futureSubmit.cancel(true);
            throw e2;
        }
    }

    public static void b(Exception exc, boolean z) throws Exception {
        Throwable cause = exc.getCause();
        if (cause == null) {
            throw exc;
        }
        if (z) {
            cause.setStackTrace((StackTraceElement[]) ObjectArrays.concat(cause.getStackTrace(), exc.getStackTrace(), StackTraceElement.class));
        }
        if (cause instanceof Exception) {
            throw ((Exception) cause);
        }
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        throw exc;
    }

    public static void a(long j) {
        Preconditions.checkArgument(j > 0, "timeout must be positive: %s", j);
    }
}
