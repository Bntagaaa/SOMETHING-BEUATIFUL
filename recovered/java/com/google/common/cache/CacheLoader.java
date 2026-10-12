package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListenableFutureTask;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class CacheLoader<K, V> {

    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
    }

    public abstract V load(K k) throws Exception;

    @GwtIncompatible
    public ListenableFuture<V> reload(K k, V v) throws Exception {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        return Futures.immediateFuture(load(k));
    }

    public Map<K, V> loadAll(Iterable<? extends K> iterable) throws Exception {
        throw new UnsupportedLoadingOperationException();
    }

    public static <K, V> CacheLoader<K, V> from(Function<K, V> function) {
        return new b(function);
    }

    public static <V> CacheLoader<Object, V> from(Supplier<V> supplier) {
        return new c(supplier);
    }

    public static final class b<K, V> extends CacheLoader<K, V> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Function f3767a;

        public b(Function<K, V> function) {
            this.f3767a = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.cache.CacheLoader
        public V load(K k) {
            return (V) this.f3767a.apply(Preconditions.checkNotNull(k));
        }
    }

    @GwtIncompatible
    public static <K, V> CacheLoader<K, V> asyncReloading(CacheLoader<K, V> cacheLoader, Executor executor) {
        Preconditions.checkNotNull(cacheLoader);
        Preconditions.checkNotNull(executor);
        return cacheLoader.new a(executor);
    }

    public static class a extends CacheLoader<K, V> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Executor f3764b;

        public a(Executor executor) {
            this.f3764b = executor;
        }

        @Override // com.google.common.cache.CacheLoader
        public V load(K k) throws Exception {
            return (V) CacheLoader.this.load(k);
        }

        @Override // com.google.common.cache.CacheLoader
        public ListenableFuture<V> reload(K k, V v) throws Exception {
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new CallableC0092a(k, v));
            this.f3764b.execute(listenableFutureTaskCreate);
            return listenableFutureTaskCreate;
        }

        /* renamed from: com.google.common.cache.CacheLoader$a$a, reason: collision with other inner class name */
        public class CallableC0092a implements Callable<V> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Object f3765a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Object f3766b;

            public CallableC0092a(Object obj, Object obj2) {
                this.f3765a = obj;
                this.f3766b = obj2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public V call() throws Exception {
                return CacheLoader.this.reload(this.f3765a, this.f3766b).get();
            }
        }

        @Override // com.google.common.cache.CacheLoader
        public Map<K, V> loadAll(Iterable<? extends K> iterable) throws Exception {
            return CacheLoader.this.loadAll(iterable);
        }
    }

    public static final class c<V> extends CacheLoader<Object, V> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Supplier f3768a;

        public c(Supplier<V> supplier) {
            this.f3768a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.cache.CacheLoader
        public V load(Object obj) {
            Preconditions.checkNotNull(obj);
            return (V) this.f3768a.get();
        }
    }

    public static final class InvalidCacheLoadException extends RuntimeException {
        public InvalidCacheLoadException(String str) {
            super(str);
        }
    }
}
