package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes.dex */
abstract class a {
    public abstract void a(Iterator it, Object obj);

    public static final class d extends a {

        /* renamed from: a, reason: collision with root package name */
        public final ThreadLocal f4428a;

        /* renamed from: b, reason: collision with root package name */
        public final ThreadLocal f4429b;

        private d() {
            this.f4428a = new C0123a();
            this.f4429b = new b();
        }

        public /* synthetic */ d(int i) {
            this();
        }

        /* renamed from: com.google.common.eventbus.a$d$a, reason: collision with other inner class name */
        public class C0123a extends ThreadLocal<Queue<c>> {
            @Override // java.lang.ThreadLocal
            public Queue<c> initialValue() {
                return Queues.newArrayDeque();
            }
        }

        public class b extends ThreadLocal<Boolean> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.lang.ThreadLocal
            public Boolean initialValue() {
                return Boolean.FALSE;
            }
        }

        @Override // com.google.common.eventbus.a
        public final void a(Iterator it, Object obj) {
            Preconditions.checkNotNull(obj);
            Preconditions.checkNotNull(it);
            ThreadLocal threadLocal = this.f4428a;
            Queue queue = (Queue) threadLocal.get();
            queue.offer(new c(it, obj));
            ThreadLocal threadLocal2 = this.f4429b;
            if (((Boolean) threadLocal2.get()).booleanValue()) {
                return;
            }
            threadLocal2.set(Boolean.TRUE);
            while (true) {
                try {
                    c cVar = (c) queue.poll();
                    if (cVar == null) {
                        return;
                    }
                    Iterator it2 = cVar.f4431b;
                    while (it2.hasNext()) {
                        com.google.common.eventbus.c cVar2 = (com.google.common.eventbus.c) it2.next();
                        Object obj2 = cVar.f4430a;
                        cVar2.getClass();
                        cVar2.d.execute(new com.google.common.eventbus.b(cVar2, obj2));
                    }
                } finally {
                    threadLocal2.remove();
                    threadLocal.remove();
                }
            }
        }

        public static final class c {

            /* renamed from: a, reason: collision with root package name */
            public final Object f4430a;

            /* renamed from: b, reason: collision with root package name */
            public final Iterator f4431b;

            public c(Iterator it, Object obj) {
                this.f4430a = obj;
                this.f4431b = it;
            }
        }
    }

    public static final class c extends a {

        /* renamed from: a, reason: collision with root package name */
        public final ConcurrentLinkedQueue f4425a;

        private c() {
            this.f4425a = Queues.newConcurrentLinkedQueue();
        }

        public /* synthetic */ c(int i) {
            this();
        }

        @Override // com.google.common.eventbus.a
        public final void a(Iterator it, Object obj) {
            ConcurrentLinkedQueue concurrentLinkedQueue;
            Preconditions.checkNotNull(obj);
            while (true) {
                boolean zHasNext = it.hasNext();
                concurrentLinkedQueue = this.f4425a;
                if (!zHasNext) {
                    break;
                } else {
                    concurrentLinkedQueue.add(new C0122a((com.google.common.eventbus.c) it.next(), obj));
                }
            }
            while (true) {
                C0122a c0122a = (C0122a) concurrentLinkedQueue.poll();
                if (c0122a == null) {
                    return;
                }
                Object obj2 = c0122a.f4426a;
                com.google.common.eventbus.c cVar = c0122a.f4427b;
                cVar.getClass();
                cVar.d.execute(new com.google.common.eventbus.b(cVar, obj2));
            }
        }

        /* renamed from: com.google.common.eventbus.a$c$a, reason: collision with other inner class name */
        public static final class C0122a {

            /* renamed from: a, reason: collision with root package name */
            public final Object f4426a;

            /* renamed from: b, reason: collision with root package name */
            public final com.google.common.eventbus.c f4427b;

            public C0122a(com.google.common.eventbus.c cVar, Object obj) {
                this.f4426a = obj;
                this.f4427b = cVar;
            }
        }
    }

    public static final class b extends a {
        private b() {
        }

        static {
            new b();
        }

        @Override // com.google.common.eventbus.a
        public final void a(Iterator it, Object obj) {
            Preconditions.checkNotNull(obj);
            while (it.hasNext()) {
                com.google.common.eventbus.c cVar = (com.google.common.eventbus.c) it.next();
                cVar.getClass();
                cVar.d.execute(new com.google.common.eventbus.b(cVar, obj));
            }
        }
    }
}
