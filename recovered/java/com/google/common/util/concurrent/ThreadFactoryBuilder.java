package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

@CanIgnoreReturnValue
@GwtIncompatible
/* loaded from: classes.dex */
public final class ThreadFactoryBuilder {

    /* renamed from: a, reason: collision with root package name */
    public String f5002a = null;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f5003b = null;
    public Integer c = null;
    public Thread.UncaughtExceptionHandler d = null;
    public ThreadFactory e = null;

    public ThreadFactoryBuilder setNameFormat(String str) {
        String.format(Locale.ROOT, str, 0);
        this.f5002a = str;
        return this;
    }

    public ThreadFactoryBuilder setDaemon(boolean z) {
        this.f5003b = Boolean.valueOf(z);
        return this;
    }

    public ThreadFactoryBuilder setPriority(int i) {
        Preconditions.checkArgument(i >= 1, "Thread priority (%s) must be >= %s", i, 1);
        Preconditions.checkArgument(i <= 10, "Thread priority (%s) must be <= %s", i, 10);
        this.c = Integer.valueOf(i);
        return this;
    }

    public ThreadFactoryBuilder setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.d = (Thread.UncaughtExceptionHandler) Preconditions.checkNotNull(uncaughtExceptionHandler);
        return this;
    }

    public ThreadFactoryBuilder setThreadFactory(ThreadFactory threadFactory) {
        this.e = (ThreadFactory) Preconditions.checkNotNull(threadFactory);
        return this;
    }

    @CheckReturnValue
    public ThreadFactory build() {
        String str = this.f5002a;
        Boolean bool = this.f5003b;
        Integer num = this.c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.d;
        ThreadFactory threadFactoryDefaultThreadFactory = this.e;
        if (threadFactoryDefaultThreadFactory == null) {
            threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        }
        return new n0(threadFactoryDefaultThreadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }
}
