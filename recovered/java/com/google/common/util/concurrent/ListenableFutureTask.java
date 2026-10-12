package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
public class ListenableFutureTask<V> extends FutureTask<V> implements ListenableFuture<V> {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutionList f4966a;

    public static <V> ListenableFutureTask<V> create(Callable<V> callable) {
        return new ListenableFutureTask<>(callable);
    }

    public static <V> ListenableFutureTask<V> create(Runnable runnable, @NullableDecl V v) {
        return new ListenableFutureTask<>(runnable, v);
    }

    public ListenableFutureTask(Callable callable) {
        super(callable);
        this.f4966a = new ExecutionList();
    }

    public ListenableFutureTask(Runnable runnable, Object obj) {
        super(runnable, obj);
        this.f4966a = new ExecutionList();
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.f4966a.add(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        this.f4966a.execute();
    }
}
