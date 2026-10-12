package androidx.core.os;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class ExecutorCompat {
    @NonNull
    public static Executor create(@NonNull Handler handler) {
        return new a(handler);
    }

    private ExecutorCompat() {
    }

    public static class a implements Executor {

        /* renamed from: a, reason: collision with root package name */
        public final Handler f1129a;

        public a(Handler handler) {
            this.f1129a = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            Runnable runnable2 = (Runnable) Preconditions.checkNotNull(runnable);
            Handler handler = this.f1129a;
            if (handler.post(runnable2)) {
                return;
            }
            throw new RejectedExecutionException(handler + " is shutting down");
        }
    }
}
