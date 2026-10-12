package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class CallbackToFutureAdapter {

    public interface Resolver<T> {
        @Nullable
        Object attachCompleter(@NonNull Completer<T> completer) throws Exception;
    }

    private CallbackToFutureAdapter() {
    }

    @NonNull
    public static <T> ListenableFuture<T> getFuture(@NonNull Resolver<T> resolver) {
        Completer<T> completer = new Completer<>();
        b bVar = new b(completer);
        completer.f586b = bVar;
        completer.f585a = resolver.getClass();
        try {
            Object objAttachCompleter = resolver.attachCompleter(completer);
            if (objAttachCompleter != null) {
                completer.f585a = objAttachCompleter;
                return bVar;
            }
        } catch (Exception e) {
            bVar.f588b.setException(e);
        }
        return bVar;
    }

    public static final class b<T> implements ListenableFuture<T> {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f587a;

        /* renamed from: b, reason: collision with root package name */
        public final AbstractResolvableFuture f588b = new a();

        public b(Completer completer) {
            this.f587a = new WeakReference(completer);
        }

        public class a extends AbstractResolvableFuture<T> {
            public a() {
            }

            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            public String pendingToString() {
                Completer completer = (Completer) b.this.f587a.get();
                return completer == null ? "Completer object has been garbage collected, future will fail soon" : _COROUTINE.a.l(new StringBuilder("tag=["), completer.f585a, "]");
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            Completer completer = (Completer) this.f587a.get();
            boolean zCancel = this.f588b.cancel(z);
            if (zCancel && completer != null) {
                completer.f585a = null;
                completer.f586b = null;
                completer.c.set(null);
            }
            return zCancel;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f588b.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f588b.isDone();
        }

        @Override // java.util.concurrent.Future
        public T get() throws ExecutionException, InterruptedException {
            return (T) this.f588b.get();
        }

        @Override // java.util.concurrent.Future
        public T get(long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (T) this.f588b.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            this.f588b.addListener(runnable, executor);
        }

        public String toString() {
            return this.f588b.toString();
        }
    }

    public static final class Completer<T> {

        /* renamed from: a, reason: collision with root package name */
        public Object f585a;

        /* renamed from: b, reason: collision with root package name */
        public b f586b;
        public ResolvableFuture c = ResolvableFuture.create();
        public boolean d;

        public boolean set(T t) {
            this.d = true;
            b bVar = this.f586b;
            boolean z = bVar != null && bVar.f588b.set(t);
            if (z) {
                this.f585a = null;
                this.f586b = null;
                this.c = null;
            }
            return z;
        }

        public boolean setException(@NonNull Throwable th) {
            this.d = true;
            b bVar = this.f586b;
            boolean z = bVar != null && bVar.f588b.setException(th);
            if (z) {
                this.f585a = null;
                this.f586b = null;
                this.c = null;
            }
            return z;
        }

        public boolean setCancelled() {
            this.d = true;
            b bVar = this.f586b;
            boolean z = bVar != null && bVar.f588b.cancel(true);
            if (z) {
                this.f585a = null;
                this.f586b = null;
                this.c = null;
            }
            return z;
        }

        public void addCancellationListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            ResolvableFuture resolvableFuture = this.c;
            if (resolvableFuture != null) {
                resolvableFuture.addListener(runnable, executor);
            }
        }

        public void finalize() {
            ResolvableFuture resolvableFuture;
            b bVar = this.f586b;
            if (bVar != null && !bVar.isDone()) {
                bVar.f588b.setException(new a("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f585a));
            }
            if (this.d || (resolvableFuture = this.c) == null) {
                return;
            }
            resolvableFuture.set(null);
        }
    }

    public static final class a extends Throwable {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }
}
