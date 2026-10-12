package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
/* loaded from: classes.dex */
public final class UncaughtExceptionHandlers {
    private UncaughtExceptionHandlers() {
    }

    public static Thread.UncaughtExceptionHandler systemExit() {
        return new a(Runtime.getRuntime());
    }

    @VisibleForTesting
    public static final class a implements Thread.UncaughtExceptionHandler {

        /* renamed from: b, reason: collision with root package name */
        public static final Logger f5004b = Logger.getLogger(a.class.getName());

        /* renamed from: a, reason: collision with root package name */
        public final Runtime f5005a;

        public a(Runtime runtime) {
            this.f5005a = runtime;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            Runtime runtime = this.f5005a;
            try {
                f5004b.log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th);
            } catch (Throwable th2) {
                try {
                    System.err.println(th.getMessage());
                    System.err.println(th2.getMessage());
                } finally {
                    runtime.exit(1);
                }
            }
        }
    }
}
