package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {
    public static volatile ArchTaskExecutor c;
    public static final a d = new a(0);
    public static final a e = new a(1);

    /* renamed from: a, reason: collision with root package name */
    public TaskExecutor f518a;

    /* renamed from: b, reason: collision with root package name */
    public final DefaultTaskExecutor f519b;

    private ArchTaskExecutor() {
        DefaultTaskExecutor defaultTaskExecutor = new DefaultTaskExecutor();
        this.f519b = defaultTaskExecutor;
        this.f518a = defaultTaskExecutor;
    }

    @NonNull
    public static ArchTaskExecutor getInstance() {
        if (c != null) {
            return c;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (c == null) {
                    c = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c;
    }

    public void setDelegate(@Nullable TaskExecutor taskExecutor) {
        if (taskExecutor == null) {
            taskExecutor = this.f519b;
        }
        this.f518a = taskExecutor;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(@NonNull Runnable runnable) {
        this.f518a.executeOnDiskIO(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(@NonNull Runnable runnable) {
        this.f518a.postToMainThread(runnable);
    }

    @NonNull
    public static Executor getMainThreadExecutor() {
        return d;
    }

    @NonNull
    public static Executor getIOThreadExecutor() {
        return e;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return this.f518a.isMainThread();
    }
}
