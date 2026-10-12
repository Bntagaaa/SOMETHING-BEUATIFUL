package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

@GwtIncompatible
/* loaded from: classes.dex */
public final class RemovalListeners {
    private RemovalListeners() {
    }

    public static <K, V> RemovalListener<K, V> asynchronous(RemovalListener<K, V> removalListener, Executor executor) {
        Preconditions.checkNotNull(removalListener);
        Preconditions.checkNotNull(executor);
        return new a(removalListener, executor);
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    public static class a<K, V> implements RemovalListener<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Executor f3774a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RemovalListener f3775b;

        public a(RemovalListener removalListener, Executor executor) {
            this.f3774a = executor;
            this.f3775b = removalListener;
        }

        /* renamed from: com.google.common.cache.RemovalListeners$a$a, reason: collision with other inner class name */
        public class RunnableC0093a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ RemovalNotification f3776a;

            public RunnableC0093a(RemovalNotification removalNotification) {
                this.f3776a = removalNotification;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f3775b.onRemoval(this.f3776a);
            }
        }

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(RemovalNotification<K, V> removalNotification) {
            this.f3774a.execute(new RunnableC0093a(removalNotification));
        }
    }
}
