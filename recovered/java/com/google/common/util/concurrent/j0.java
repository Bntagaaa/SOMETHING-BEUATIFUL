package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;

@GwtIncompatible
/* loaded from: classes.dex */
final class j0 implements Executor {
    public static final Logger f = Logger.getLogger(j0.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final Executor f5030a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f5031b = new ArrayDeque();
    public c c = c.f5034a;
    public long d = 0;
    public final b e = new b();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public static final c f5034a = new c("IDLE", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final c f5035b = new c("QUEUING", 1);
        public static final c c = new c("QUEUED", 2);
        public static final c d = new c(DebugCoroutineInfoImplKt.RUNNING, 3);
    }

    public j0(Executor executor) {
        this.f5030a = (Executor) Preconditions.checkNotNull(executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0061  */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(java.lang.Runnable r8) {
        /*
            r7 = this;
            com.google.common.base.Preconditions.checkNotNull(r8)
            java.util.ArrayDeque r0 = r7.f5031b
            monitor-enter(r0)
            com.google.common.util.concurrent.j0$c r1 = r7.c     // Catch: java.lang.Throwable -> L6d
            com.google.common.util.concurrent.j0$c r2 = com.google.common.util.concurrent.j0.c.d     // Catch: java.lang.Throwable -> L6d
            if (r1 == r2) goto L6f
            com.google.common.util.concurrent.j0$c r2 = com.google.common.util.concurrent.j0.c.c     // Catch: java.lang.Throwable -> L6d
            if (r1 != r2) goto L11
            goto L6f
        L11:
            long r3 = r7.d     // Catch: java.lang.Throwable -> L6d
            com.google.common.util.concurrent.j0$a r1 = new com.google.common.util.concurrent.j0$a     // Catch: java.lang.Throwable -> L6d
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L6d
            java.util.ArrayDeque r8 = r7.f5031b     // Catch: java.lang.Throwable -> L6d
            r8.add(r1)     // Catch: java.lang.Throwable -> L6d
            com.google.common.util.concurrent.j0$c r8 = com.google.common.util.concurrent.j0.c.f5035b     // Catch: java.lang.Throwable -> L6d
            r7.c = r8     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            java.util.concurrent.Executor r0 = r7.f5030a     // Catch: java.lang.Error -> L44 java.lang.RuntimeException -> L46
            com.google.common.util.concurrent.j0$b r5 = r7.e     // Catch: java.lang.Error -> L44 java.lang.RuntimeException -> L46
            r0.execute(r5)     // Catch: java.lang.Error -> L44 java.lang.RuntimeException -> L46
            com.google.common.util.concurrent.j0$c r0 = r7.c
            if (r0 == r8) goto L2e
            goto L69
        L2e:
            java.util.ArrayDeque r0 = r7.f5031b
            monitor-enter(r0)
            long r5 = r7.d     // Catch: java.lang.Throwable -> L3e
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 != 0) goto L40
            com.google.common.util.concurrent.j0$c r1 = r7.c     // Catch: java.lang.Throwable -> L3e
            if (r1 != r8) goto L40
            r7.c = r2     // Catch: java.lang.Throwable -> L3e
            goto L40
        L3e:
            r8 = move-exception
            goto L42
        L40:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            return
        L42:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            throw r8
        L44:
            r8 = move-exception
            goto L47
        L46:
            r8 = move-exception
        L47:
            java.util.ArrayDeque r2 = r7.f5031b
            monitor-enter(r2)
            com.google.common.util.concurrent.j0$c r0 = r7.c     // Catch: java.lang.Throwable -> L55
            com.google.common.util.concurrent.j0$c r3 = com.google.common.util.concurrent.j0.c.f5034a     // Catch: java.lang.Throwable -> L55
            if (r0 == r3) goto L57
            com.google.common.util.concurrent.j0$c r3 = com.google.common.util.concurrent.j0.c.f5035b     // Catch: java.lang.Throwable -> L55
            if (r0 != r3) goto L61
            goto L57
        L55:
            r8 = move-exception
            goto L6b
        L57:
            java.util.ArrayDeque r0 = r7.f5031b     // Catch: java.lang.Throwable -> L55
            boolean r0 = r0.removeLastOccurrence(r1)     // Catch: java.lang.Throwable -> L55
            if (r0 == 0) goto L61
            r0 = 1
            goto L62
        L61:
            r0 = 0
        L62:
            boolean r1 = r8 instanceof java.util.concurrent.RejectedExecutionException     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L6a
            if (r0 != 0) goto L6a
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
        L69:
            return
        L6a:
            throw r8     // Catch: java.lang.Throwable -> L55
        L6b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
            throw r8
        L6d:
            r8 = move-exception
            goto L76
        L6f:
            java.util.ArrayDeque r1 = r7.f5031b     // Catch: java.lang.Throwable -> L6d
            r1.add(r8)     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            return
        L76:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.j0.execute(java.lang.Runnable):void");
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f5032a;

        public a(Runnable runnable) {
            this.f5032a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5032a.run();
        }
    }

    public final class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e) {
                synchronized (j0.this.f5031b) {
                    j0.this.c = c.f5034a;
                    throw e;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
        
            if (r1 == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
        
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004b, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
        
            com.google.common.util.concurrent.j0.f.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
        
            return;
         */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0034 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r9 = this;
                r0 = 0
                r1 = 0
            L2:
                com.google.common.util.concurrent.j0 r2 = com.google.common.util.concurrent.j0.this     // Catch: java.lang.Throwable -> L49
                java.util.ArrayDeque r2 = r2.f5031b     // Catch: java.lang.Throwable -> L49
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L49
                if (r0 != 0) goto L28
                com.google.common.util.concurrent.j0 r0 = com.google.common.util.concurrent.j0.this     // Catch: java.lang.Throwable -> L1c
                com.google.common.util.concurrent.j0$c r3 = r0.c     // Catch: java.lang.Throwable -> L1c
                com.google.common.util.concurrent.j0$c r4 = com.google.common.util.concurrent.j0.c.d     // Catch: java.lang.Throwable -> L1c
                if (r3 != r4) goto L1e
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                if (r1 == 0) goto L3e
            L14:
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
                goto L3e
            L1c:
                r0 = move-exception
                goto L65
            L1e:
                long r5 = r0.d     // Catch: java.lang.Throwable -> L1c
                r7 = 1
                long r5 = r5 + r7
                r0.d = r5     // Catch: java.lang.Throwable -> L1c
                r0.c = r4     // Catch: java.lang.Throwable -> L1c
                r0 = 1
            L28:
                com.google.common.util.concurrent.j0 r3 = com.google.common.util.concurrent.j0.this     // Catch: java.lang.Throwable -> L1c
                java.util.ArrayDeque r3 = r3.f5031b     // Catch: java.lang.Throwable -> L1c
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L1c
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L1c
                if (r3 != 0) goto L3f
                com.google.common.util.concurrent.j0 r0 = com.google.common.util.concurrent.j0.this     // Catch: java.lang.Throwable -> L1c
                com.google.common.util.concurrent.j0$c r3 = com.google.common.util.concurrent.j0.c.f5034a     // Catch: java.lang.Throwable -> L1c
                r0.c = r3     // Catch: java.lang.Throwable -> L1c
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                if (r1 == 0) goto L3e
                goto L14
            L3e:
                return
            L3f:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L49
                r1 = r1 | r2
                r3.run()     // Catch: java.lang.Throwable -> L49 java.lang.RuntimeException -> L4b
                goto L2
            L49:
                r0 = move-exception
                goto L67
            L4b:
                r2 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.j0.f     // Catch: java.lang.Throwable -> L49
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L49
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L49
                r6.<init>()     // Catch: java.lang.Throwable -> L49
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L49
                r6.append(r3)     // Catch: java.lang.Throwable -> L49
                java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L49
                r4.log(r5, r3, r2)     // Catch: java.lang.Throwable -> L49
                goto L2
            L65:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                throw r0     // Catch: java.lang.Throwable -> L49
            L67:
                if (r1 == 0) goto L70
                java.lang.Thread r1 = java.lang.Thread.currentThread()
                r1.interrupt()
            L70:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.j0.b.a():void");
        }
    }
}
