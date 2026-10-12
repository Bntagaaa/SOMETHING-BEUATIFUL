package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Supplier f3828a;

    static {
        Supplier bVar;
        try {
            new e();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f3828a = bVar;
    }

    public static class a implements Supplier<com.google.common.cache.c> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public com.google.common.cache.c get() {
            return new e();
        }
    }

    public static class b implements Supplier<com.google.common.cache.c> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public com.google.common.cache.c get() {
            return new c(0);
        }
    }

    public static com.google.common.cache.c create() {
        return (com.google.common.cache.c) f3828a.get();
    }

    public static final class c extends AtomicLong implements com.google.common.cache.c {
        private c() {
        }

        public /* synthetic */ c(int i) {
            this();
        }

        @Override // com.google.common.cache.c
        public void increment() {
            getAndIncrement();
        }

        @Override // com.google.common.cache.c
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // com.google.common.cache.c
        public long sum() {
            return get();
        }
    }
}
