package com.google.common.util.concurrent;

import androidx.core.app.NotificationCompat;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
/* loaded from: classes.dex */
final class a0<L> {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f5006b = Logger.getLogger(a0.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final List f5007a = Collections.synchronizedList(new ArrayList());

    public interface a<L> {
        void call(L l);
    }

    public void addListener(L l, Executor executor) {
        Preconditions.checkNotNull(l, "listener");
        Preconditions.checkNotNull(executor, "executor");
        this.f5007a.add(new b(l, executor));
    }

    public void enqueue(a<L> aVar) {
        Preconditions.checkNotNull(aVar, NotificationCompat.CATEGORY_EVENT);
        Preconditions.checkNotNull(aVar, "label");
        synchronized (this.f5007a) {
            try {
                Iterator it = this.f5007a.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a(aVar, aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dispatch() {
        boolean z;
        for (int i = 0; i < this.f5007a.size(); i++) {
            b bVar = (b) this.f5007a.get(i);
            synchronized (bVar) {
                try {
                    if (bVar.e) {
                        z = false;
                    } else {
                        z = true;
                        bVar.e = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                try {
                    bVar.f5009b.execute(bVar);
                } catch (RuntimeException e) {
                    synchronized (bVar) {
                        bVar.e = false;
                        f5006b.log(Level.SEVERE, "Exception while running callbacks for " + bVar.f5008a + " on " + bVar.f5009b, (Throwable) e);
                        throw e;
                    }
                }
            }
        }
    }

    public static final class b<L> implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f5008a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f5009b;
        public final ArrayDeque c = Queues.newArrayDeque();
        public final ArrayDeque d = Queues.newArrayDeque();
        public boolean e;

        public b(Object obj, Executor executor) {
            this.f5008a = Preconditions.checkNotNull(obj);
            this.f5009b = (Executor) Preconditions.checkNotNull(executor);
        }

        public final synchronized void a(a aVar, Object obj) {
            this.c.add(aVar);
            this.d.add(obj);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
        
            r2.call(r9.f5008a);
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x002d, code lost:
        
            com.google.common.util.concurrent.a0.f5006b.log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r9.f5008a + " " + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                r9 = this;
            L0:
                r0 = 0
                r1 = 1
                monitor-enter(r9)     // Catch: java.lang.Throwable -> L2a
                boolean r2 = r9.e     // Catch: java.lang.Throwable -> L1f
                com.google.common.base.Preconditions.checkState(r2)     // Catch: java.lang.Throwable -> L1f
                java.util.ArrayDeque r2 = r9.c     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r2 = r2.poll()     // Catch: java.lang.Throwable -> L1f
                com.google.common.util.concurrent.a0$a r2 = (com.google.common.util.concurrent.a0.a) r2     // Catch: java.lang.Throwable -> L1f
                java.util.ArrayDeque r3 = r9.d     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L1f
                if (r2 != 0) goto L23
                r9.e = r0     // Catch: java.lang.Throwable -> L1f
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L1c
                return
            L1c:
                r1 = move-exception
                r2 = 0
                goto L50
            L1f:
                r2 = move-exception
                r1 = r2
                r2 = 1
                goto L50
            L23:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r4 = r9.f5008a     // Catch: java.lang.Throwable -> L2a java.lang.RuntimeException -> L2c
                r2.call(r4)     // Catch: java.lang.Throwable -> L2a java.lang.RuntimeException -> L2c
                goto L0
            L2a:
                r2 = move-exception
                goto L59
            L2c:
                r2 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.a0.f5006b     // Catch: java.lang.Throwable -> L2a
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L2a
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2a
                r6.<init>()     // Catch: java.lang.Throwable -> L2a
                java.lang.String r7 = "Exception while executing callback: "
                r6.append(r7)     // Catch: java.lang.Throwable -> L2a
                java.lang.Object r7 = r9.f5008a     // Catch: java.lang.Throwable -> L2a
                r6.append(r7)     // Catch: java.lang.Throwable -> L2a
                java.lang.String r7 = " "
                r6.append(r7)     // Catch: java.lang.Throwable -> L2a
                r6.append(r3)     // Catch: java.lang.Throwable -> L2a
                java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L2a
                r4.log(r5, r3, r2)     // Catch: java.lang.Throwable -> L2a
                goto L0
            L50:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L57
                throw r1     // Catch: java.lang.Throwable -> L52
            L52:
                r1 = move-exception
                r8 = r2
                r2 = r1
                r1 = r8
                goto L59
            L57:
                r1 = move-exception
                goto L50
            L59:
                if (r1 == 0) goto L63
                monitor-enter(r9)
                r9.e = r0     // Catch: java.lang.Throwable -> L60
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L60
                goto L63
            L60:
                r0 = move-exception
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L60
                throw r0
            L63:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.a0.b.run():void");
        }
    }
}
