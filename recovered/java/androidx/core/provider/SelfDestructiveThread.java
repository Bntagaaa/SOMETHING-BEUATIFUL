package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes.dex */
public class SelfDestructiveThread {

    /* renamed from: b, reason: collision with root package name */
    public HandlerThread f1156b;
    public Handler c;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1157g;
    public final String h;

    /* renamed from: a, reason: collision with root package name */
    public final Object f1155a = new Object();
    public final Handler.Callback e = new a();
    public int d = 0;

    public interface ReplyCallback<T> {
        void onReply(T t);
    }

    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                SelfDestructiveThread.this.a();
                return true;
            }
            if (i != 1) {
                return true;
            }
            SelfDestructiveThread selfDestructiveThread = SelfDestructiveThread.this;
            ((Runnable) message.obj).run();
            synchronized (selfDestructiveThread.f1155a) {
                selfDestructiveThread.c.removeMessages(0);
                Handler handler = selfDestructiveThread.c;
                handler.sendMessageDelayed(handler.obtainMessage(0), selfDestructiveThread.f);
            }
            return true;
        }
    }

    public SelfDestructiveThread(String str, int i, int i2) {
        this.h = str;
        this.f1157g = i;
        this.f = i2;
    }

    @VisibleForTesting
    public boolean isRunning() {
        boolean z;
        synchronized (this.f1155a) {
            z = this.f1156b != null;
        }
        return z;
    }

    @VisibleForTesting
    public int getGeneration() {
        int i;
        synchronized (this.f1155a) {
            i = this.d;
        }
        return i;
    }

    public final void b(Runnable runnable) {
        synchronized (this.f1155a) {
            try {
                if (this.f1156b == null) {
                    HandlerThread handlerThread = new HandlerThread(this.h, this.f1157g);
                    this.f1156b = handlerThread;
                    handlerThread.start();
                    this.c = new Handler(this.f1156b.getLooper(), this.e);
                    this.d++;
                }
                this.c.removeMessages(0);
                Handler handler = this.c;
                handler.sendMessage(handler.obtainMessage(1, runnable));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Callable f1159a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Handler f1160b;
        public final /* synthetic */ ReplyCallback c;

        public b(Callable callable, Handler handler, ReplyCallback replyCallback) {
            this.f1159a = callable;
            this.f1160b = handler;
            this.c = replyCallback;
        }

        @Override // java.lang.Runnable
        public void run() throws Exception {
            Object objCall;
            try {
                objCall = this.f1159a.call();
            } catch (Exception unused) {
                objCall = null;
            }
            this.f1160b.post(new a(objCall));
        }

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Object f1161a;

            public a(Object obj) {
                this.f1161a = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.c.onReply(this.f1161a);
            }
        }
    }

    public <T> void postAndReply(Callable<T> callable, ReplyCallback<T> replyCallback) {
        b(new b(callable, d.a(), replyCallback));
    }

    public <T> T postAndWait(Callable<T> callable, int i) throws InterruptedException {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition conditionNewCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        b(new c(atomicReference, callable, reentrantLock, atomicBoolean, conditionNewCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                T t = (T) atomicReference.get();
                reentrantLock.unlock();
                return t;
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = conditionNewCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    T t2 = (T) atomicReference.get();
                    reentrantLock.unlock();
                    return t2;
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AtomicReference f1163a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Callable f1164b;
        public final /* synthetic */ ReentrantLock c;
        public final /* synthetic */ AtomicBoolean d;
        public final /* synthetic */ Condition e;

        public c(AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.f1163a = atomicReference;
            this.f1164b = callable;
            this.c = reentrantLock;
            this.d = atomicBoolean;
            this.e = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f1163a.set(this.f1164b.call());
            } catch (Exception unused) {
            }
            ReentrantLock reentrantLock = this.c;
            reentrantLock.lock();
            try {
                this.d.set(false);
                this.e.signal();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final void a() {
        synchronized (this.f1155a) {
            try {
                if (this.c.hasMessages(1)) {
                    return;
                }
                this.f1156b.quit();
                this.f1156b = null;
                this.c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
