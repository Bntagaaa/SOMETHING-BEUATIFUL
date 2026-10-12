package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class AsyncDifferConfig<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f1978a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f1979b;
    public final DiffUtil.ItemCallback c;

    public AsyncDifferConfig(Executor executor, Executor executor2, DiffUtil.ItemCallback itemCallback) {
        this.f1978a = executor;
        this.f1979b = executor2;
        this.c = itemCallback;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Executor getMainThreadExecutor() {
        return this.f1978a;
    }

    @NonNull
    public Executor getBackgroundThreadExecutor() {
        return this.f1979b;
    }

    @NonNull
    public DiffUtil.ItemCallback<T> getDiffCallback() {
        return this.c;
    }

    public static final class Builder<T> {
        public static final Object d = new Object();
        public static ExecutorService e;

        /* renamed from: a, reason: collision with root package name */
        public Executor f1980a;

        /* renamed from: b, reason: collision with root package name */
        public Executor f1981b;
        public final DiffUtil.ItemCallback c;

        public Builder(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
            this.c = itemCallback;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder<T> setMainThreadExecutor(@Nullable Executor executor) {
            this.f1980a = executor;
            return this;
        }

        @NonNull
        public Builder<T> setBackgroundThreadExecutor(@Nullable Executor executor) {
            this.f1981b = executor;
            return this;
        }

        @NonNull
        public AsyncDifferConfig<T> build() {
            if (this.f1981b == null) {
                synchronized (d) {
                    try {
                        if (e == null) {
                            e = Executors.newFixedThreadPool(2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.f1981b = e;
            }
            return new AsyncDifferConfig<>(this.f1980a, this.f1981b, this.c);
        }
    }
}
