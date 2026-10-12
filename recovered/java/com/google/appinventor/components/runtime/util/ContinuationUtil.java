package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import gnu.mapping.Procedure;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ContinuationUtil {
    private ContinuationUtil() {
    }

    public static <T> Continuation<T> wrap(final Procedure procedure, final Class<T> cls) {
        return new Continuation<T>() { // from class: com.google.appinventor.components.runtime.util.ContinuationUtil.1
            @Override // com.google.appinventor.components.runtime.util.Continuation
            public void call(T t) {
                try {
                    if (cls == Void.class) {
                        procedure.apply0();
                    } else {
                        procedure.apply1(t);
                    }
                } catch (Throwable th) {
                    throw new YailRuntimeError(th.getMessage(), th.getClass().getSimpleName());
                }
            }
        };
    }

    public static <T> void callWithContinuation(final Callable<T> callable, final Continuation<T> continuation) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.util.ContinuationUtil.2
            @Override // java.lang.Runnable
            public void run() throws Exception {
                try {
                    continuation.call(callable.call());
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        });
    }

    public static <T> T callWithContinuationSync(final Callable<T> callable) {
        final Synchronizer synchronizer = new Synchronizer();
        callWithContinuation(new Callable<T>() { // from class: com.google.appinventor.components.runtime.util.ContinuationUtil.3
            @Override // java.util.concurrent.Callable
            public T call() {
                try {
                    return (T) callable.call();
                } catch (Throwable th) {
                    synchronizer.caught(th);
                    return null;
                }
            }
        }, new Continuation<T>() { // from class: com.google.appinventor.components.runtime.util.ContinuationUtil.4
            @Override // com.google.appinventor.components.runtime.util.Continuation
            public void call(T t) {
                if (synchronizer.getThrowable() != null) {
                    synchronizer.wakeup(t);
                }
            }
        });
        Throwable throwable = synchronizer.getThrowable();
        if (throwable != null) {
            if (throwable instanceof RuntimeException) {
                throw ((RuntimeException) throwable);
            }
            throw new RuntimeException("Exception in call", throwable);
        }
        return (T) synchronizer.getResult();
    }
}
