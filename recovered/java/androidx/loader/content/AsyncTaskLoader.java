package androidx.loader.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.os.OperationCanceledException;
import androidx.core.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {
    public final ThreadPoolExecutor j;
    public volatile a k;
    public volatile a l;
    public long m;
    public long n;
    public Handler o;

    public void cancelLoadInBackground() {
    }

    @Nullable
    public abstract D loadInBackground();

    public void onCanceled(@Nullable D d) {
    }

    public final class a extends ModernAsyncTask<Void, Void, D> implements Runnable {
        public final CountDownLatch h = new CountDownLatch(1);
        public boolean i;

        public a() {
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public D doInBackground(Void... voidArr) {
            try {
                return (D) AsyncTaskLoader.this.onLoadInBackground();
            } catch (OperationCanceledException e) {
                if (isCancelled()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public void onPostExecute(D d) {
            try {
                AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
                if (asyncTaskLoader.k != this) {
                    asyncTaskLoader.onCanceled(d);
                    if (asyncTaskLoader.l == this) {
                        asyncTaskLoader.rollbackContentChanged();
                        asyncTaskLoader.n = SystemClock.uptimeMillis();
                        asyncTaskLoader.l = null;
                        asyncTaskLoader.deliverCancellation();
                        asyncTaskLoader.a();
                    }
                } else if (asyncTaskLoader.isAbandoned()) {
                    asyncTaskLoader.onCanceled(d);
                } else {
                    asyncTaskLoader.commitContentChanged();
                    asyncTaskLoader.n = SystemClock.uptimeMillis();
                    asyncTaskLoader.k = null;
                    asyncTaskLoader.deliverResult(d);
                }
            } finally {
                this.h.countDown();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public void onCancelled(D d) {
            CountDownLatch countDownLatch = this.h;
            try {
                AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
                asyncTaskLoader.onCanceled(d);
                if (asyncTaskLoader.l == this) {
                    asyncTaskLoader.rollbackContentChanged();
                    asyncTaskLoader.n = SystemClock.uptimeMillis();
                    asyncTaskLoader.l = null;
                    asyncTaskLoader.deliverCancellation();
                    asyncTaskLoader.a();
                }
            } finally {
                countDownLatch.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.i = false;
            AsyncTaskLoader.this.a();
        }

        public void waitForLoader() throws InterruptedException {
            try {
                this.h.await();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncTaskLoader(@NonNull Context context) {
        super(context);
        ThreadPoolExecutor threadPoolExecutor = ModernAsyncTask.f;
        this.n = -10000L;
        this.j = threadPoolExecutor;
    }

    public void setUpdateThrottle(long j) {
        this.m = j;
        if (j != 0) {
            this.o = new Handler();
        }
    }

    @Override // androidx.loader.content.Loader
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.k = new a();
        a();
    }

    @Override // androidx.loader.content.Loader
    public boolean onCancelLoad() {
        if (this.k == null) {
            return false;
        }
        if (!this.e) {
            this.h = true;
        }
        if (this.l != null) {
            if (this.k.i) {
                this.k.i = false;
                this.o.removeCallbacks(this.k);
            }
            this.k = null;
            return false;
        }
        if (this.k.i) {
            this.k.i = false;
            this.o.removeCallbacks(this.k);
            this.k = null;
            return false;
        }
        boolean zCancel = this.k.cancel(false);
        if (zCancel) {
            this.l = this.k;
            cancelLoadInBackground();
        }
        this.k = null;
        return zCancel;
    }

    public final void a() {
        if (this.l != null || this.k == null) {
            return;
        }
        if (this.k.i) {
            this.k.i = false;
            this.o.removeCallbacks(this.k);
        }
        if (this.m > 0 && SystemClock.uptimeMillis() < this.n + this.m) {
            this.k.i = true;
            this.o.postAtTime(this.k, this.n + this.m);
        } else {
            this.k.executeOnExecutor(this.j, null);
        }
    }

    @Nullable
    public D onLoadInBackground() {
        return loadInBackground();
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.l != null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void waitForLoader() throws InterruptedException {
        a aVar = this.k;
        if (aVar != null) {
            aVar.waitForLoader();
        }
    }

    @Override // androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.k);
            printWriter.print(" waiting=");
            printWriter.println(this.k.i);
        }
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.l);
            printWriter.print(" waiting=");
            printWriter.println(this.l.i);
        }
        if (this.m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
