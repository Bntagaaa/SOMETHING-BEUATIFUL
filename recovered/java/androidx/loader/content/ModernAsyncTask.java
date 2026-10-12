package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;

/* loaded from: classes.dex */
abstract class ModernAsyncTask<Params, Progress, Result> {
    public static final ThreadPoolExecutor f;

    /* renamed from: g, reason: collision with root package name */
    public static f f1915g;

    /* renamed from: a, reason: collision with root package name */
    public final b f1916a;

    /* renamed from: b, reason: collision with root package name */
    public final FutureTask f1917b;
    public volatile Status c = Status.PENDING;
    public final AtomicBoolean d = new AtomicBoolean();
    public final AtomicBoolean e = new AtomicBoolean();

    public static abstract class g<Params, Result> implements Callable<Result> {

        /* renamed from: a, reason: collision with root package name */
        public Object[] f1925a;
    }

    public abstract Result doInBackground(Params... paramsArr);

    public void onCancelled() {
    }

    public void onPostExecute(Result result) {
    }

    public void onPreExecute() {
    }

    public void onProgressUpdate(Progress... progressArr) {
    }

    static {
        a aVar = new a();
        f = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), aVar);
    }

    public static class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicInteger f1919a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f1919a.getAndIncrement());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Status {
        public static final Status FINISHED;
        public static final Status PENDING;
        public static final Status RUNNING;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Status[] f1918a;

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) f1918a.clone();
        }

        static {
            Status status = new Status("PENDING", 0);
            PENDING = status;
            Status status2 = new Status(DebugCoroutineInfoImplKt.RUNNING, 1);
            RUNNING = status2;
            Status status3 = new Status("FINISHED", 2);
            FINISHED = status3;
            f1918a = new Status[]{status, status2, status3};
        }
    }

    public final void a(Object obj) {
        f fVar;
        synchronized (ModernAsyncTask.class) {
            try {
                if (f1915g == null) {
                    f1915g = new f();
                }
                fVar = f1915g;
            } catch (Throwable th) {
                throw th;
            }
        }
        fVar.obtainMessage(1, new e(this, obj)).sendToTarget();
    }

    public class b extends g<Params, Result> {
        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            ModernAsyncTask modernAsyncTask = ModernAsyncTask.this;
            modernAsyncTask.e.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) modernAsyncTask.doInBackground(this.f1925a);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    public ModernAsyncTask() {
        b bVar = new b();
        this.f1916a = bVar;
        this.f1917b = new c(bVar);
    }

    public class c extends FutureTask<Result> {
        public c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            ModernAsyncTask modernAsyncTask = ModernAsyncTask.this;
            AtomicBoolean atomicBoolean = modernAsyncTask.e;
            try {
                Result result = get();
                if (atomicBoolean.get()) {
                    return;
                }
                modernAsyncTask.a(result);
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException unused) {
                if (atomicBoolean.get()) {
                    return;
                }
                modernAsyncTask.a(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    public void onCancelled(Result result) {
        onCancelled();
    }

    public final boolean isCancelled() {
        return this.d.get();
    }

    public final boolean cancel(boolean z) {
        this.d.set(true);
        return this.f1917b.cancel(z);
    }

    public static /* synthetic */ class d {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1922a;

        static {
            int[] iArr = new int[Status.values().length];
            f1922a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1922a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public final ModernAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.c != Status.PENDING) {
            int i = d.f1922a[this.c.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("We should never reach this state");
        }
        this.c = Status.RUNNING;
        onPreExecute();
        this.f1916a.f1925a = paramsArr;
        executor.execute(this.f1917b);
        return this;
    }

    public static class f extends Handler {
        public f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e eVar = (e) message.obj;
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                eVar.f1923a.onProgressUpdate(eVar.f1924b);
            } else {
                ModernAsyncTask modernAsyncTask = eVar.f1923a;
                Object obj = eVar.f1924b[0];
                if (modernAsyncTask.isCancelled()) {
                    modernAsyncTask.onCancelled(obj);
                } else {
                    modernAsyncTask.onPostExecute(obj);
                }
                modernAsyncTask.c = Status.FINISHED;
            }
        }
    }

    public static class e<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final ModernAsyncTask f1923a;

        /* renamed from: b, reason: collision with root package name */
        public final Object[] f1924b;

        public e(ModernAsyncTask modernAsyncTask, Object... objArr) {
            this.f1923a = modernAsyncTask;
            this.f1924b = objArr;
        }
    }
}
