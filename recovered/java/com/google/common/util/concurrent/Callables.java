package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.concurrent.Callable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Callables {
    private Callables() {
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class a<T> implements Callable<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f4917a;

        public a(Object obj) {
            this.f4917a = obj;
        }

        @Override // java.util.concurrent.Callable
        public T call() {
            return (T) this.f4917a;
        }
    }

    public static <T> Callable<T> returning(@NullableDecl T t) {
        return new a(t);
    }

    @Beta
    @GwtIncompatible
    public static <T> AsyncCallable<T> asAsyncCallable(Callable<T> callable, ListeningExecutorService listeningExecutorService) {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(listeningExecutorService);
        return new b(callable, listeningExecutorService);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static class b<T> implements AsyncCallable<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ListeningExecutorService f4918a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Callable f4919b;

        public b(Callable callable, ListeningExecutorService listeningExecutorService) {
            this.f4918a = listeningExecutorService;
            this.f4919b = callable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return this.f4918a.submit((Callable) this.f4919b);
        }
    }

    public static boolean a(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
