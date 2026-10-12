package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
/* loaded from: classes.dex */
public final class ExecutionList {
    public static final Logger c = Logger.getLogger(ExecutionList.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public a f4935a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4936b;

    public void add(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        synchronized (this) {
            try {
                if (!this.f4936b) {
                    this.f4935a = new a(runnable, executor, this.f4935a);
                } else {
                    a(runnable, executor);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void execute() {
        synchronized (this) {
            try {
                if (this.f4936b) {
                    return;
                }
                this.f4936b = true;
                a aVar = this.f4935a;
                a aVar2 = null;
                this.f4935a = null;
                while (aVar != null) {
                    a aVar3 = aVar.c;
                    aVar.c = aVar2;
                    aVar2 = aVar;
                    aVar = aVar3;
                }
                while (aVar2 != null) {
                    a(aVar2.f4937a, aVar2.f4938b);
                    aVar2 = aVar2.c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            c.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f4937a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f4938b;
        public a c;

        public a(Runnable runnable, Executor executor, a aVar) {
            this.f4937a = runnable;
            this.f4938b = executor;
            this.c = aVar;
        }
    }
}
