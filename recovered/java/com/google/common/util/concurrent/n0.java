package com.google.common.util.concurrent;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
final class n0 implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ThreadFactory f5043a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f5044b;
    public final /* synthetic */ AtomicLong c;
    public final /* synthetic */ Boolean d;
    public final /* synthetic */ Integer e;
    public final /* synthetic */ Thread.UncaughtExceptionHandler f;

    public n0(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f5043a = threadFactory;
        this.f5044b = str;
        this.c = atomicLong;
        this.d = bool;
        this.e = num;
        this.f = uncaughtExceptionHandler;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f5043a.newThread(runnable);
        String str = this.f5044b;
        if (str != null) {
            threadNewThread.setName(String.format(Locale.ROOT, str, Long.valueOf(this.c.getAndIncrement())));
        }
        Boolean bool = this.d;
        if (bool != null) {
            threadNewThread.setDaemon(bool.booleanValue());
        }
        Integer num = this.e;
        if (num != null) {
            threadNewThread.setPriority(num.intValue());
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f;
        if (uncaughtExceptionHandler != null) {
            threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
        return threadNewThread;
    }
}
