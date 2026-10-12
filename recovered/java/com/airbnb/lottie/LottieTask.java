package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class LottieTask<T> {
    public static Executor EXECUTOR = Executors.newCachedThreadPool();

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f2501a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f2502b;
    public final Handler c;
    public volatile LottieResult d;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public LottieTask(Callable<LottieResult<T>> callable) {
        this(callable, false);
    }

    public LottieTask(Callable callable, boolean z) {
        this.f2501a = new LinkedHashSet(1);
        this.f2502b = new LinkedHashSet(1);
        this.c = new Handler(Looper.getMainLooper());
        this.d = null;
        if (z) {
            try {
                b((LottieResult) callable.call());
                return;
            } catch (Throwable th) {
                b(new LottieResult(th));
                return;
            }
        }
        EXECUTOR.execute(new a(callable));
    }

    public final void b(LottieResult lottieResult) {
        if (this.d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.d = lottieResult;
        this.c.post(new f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized LottieTask<T> addListener(LottieListener<T> lottieListener) {
        try {
            if (this.d != null && this.d.getValue() != null) {
                lottieListener.onResult(this.d.getValue());
            }
            this.f2501a.add(lottieListener);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized LottieTask<T> removeListener(LottieListener<T> lottieListener) {
        this.f2501a.remove(lottieListener);
        return this;
    }

    public synchronized LottieTask<T> addFailureListener(LottieListener<Throwable> lottieListener) {
        try {
            if (this.d != null && this.d.getException() != null) {
                lottieListener.onResult(this.d.getException());
            }
            this.f2502b.add(lottieListener);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized LottieTask<T> removeFailureListener(LottieListener<Throwable> lottieListener) {
        this.f2502b.remove(lottieListener);
        return this;
    }

    public static void a(LottieTask lottieTask, Throwable th) {
        synchronized (lottieTask) {
            ArrayList arrayList = new ArrayList(lottieTask.f2502b);
            if (arrayList.isEmpty()) {
                Logger.warning("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((LottieListener) it.next()).onResult(th);
            }
        }
    }

    public class a extends FutureTask<LottieResult<T>> {
        public a(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() throws ExecutionException, InterruptedException {
            LottieTask lottieTask = LottieTask.this;
            if (isCancelled()) {
                return;
            }
            try {
                LottieResult<T> lottieResult = get();
                Executor executor = LottieTask.EXECUTOR;
                lottieTask.b(lottieResult);
            } catch (InterruptedException | ExecutionException e) {
                LottieResult lottieResult2 = new LottieResult(e);
                Executor executor2 = LottieTask.EXECUTOR;
                lottieTask.b(lottieResult2);
            }
        }
    }
}
