package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
class l {
    private l() {
    }

    public static class b implements Executor {

        /* renamed from: a, reason: collision with root package name */
        public final Handler f1186a;

        public b(Handler handler) {
            this.f1186a = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            Runnable runnable2 = (Runnable) Preconditions.checkNotNull(runnable);
            Handler handler = this.f1186a;
            if (handler.post(runnable2)) {
                return;
            }
            throw new RejectedExecutionException(handler + " is shutting down");
        }
    }

    public static class c<T> implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public Callable f1187a;

        /* renamed from: b, reason: collision with root package name */
        public Consumer f1188b;
        public Handler c;

        @Override // java.lang.Runnable
        public void run() throws Exception {
            Object objCall;
            try {
                objCall = this.f1187a.call();
            } catch (Exception unused) {
                objCall = null;
            }
            this.c.post(new a(this.f1188b, objCall));
        }

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Consumer f1189a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Object f1190b;

            public a(Consumer consumer, Object obj) {
                this.f1189a = consumer;
                this.f1190b = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f1189a.accept(this.f1190b);
            }
        }
    }

    public static class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public String f1183a;

        /* renamed from: b, reason: collision with root package name */
        public int f1184b;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0014a(runnable, this.f1183a, this.f1184b);
        }

        /* renamed from: androidx.core.provider.l$a$a, reason: collision with other inner class name */
        public static class C0014a extends Thread {

            /* renamed from: a, reason: collision with root package name */
            public final int f1185a;

            public C0014a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f1185a = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws SecurityException, IllegalArgumentException {
                Process.setThreadPriority(this.f1185a);
                super.run();
            }
        }
    }
}
