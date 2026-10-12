package com.google.common.hash;

import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final Supplier f4587a;

    static {
        Supplier bVar;
        try {
            new q();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f4587a = bVar;
    }

    public static class a implements Supplier<o> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public o get() {
            return new q();
        }
    }

    public static class b implements Supplier<o> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public o get() {
            return new c(0);
        }
    }

    public static o create() {
        return (o) f4587a.get();
    }

    public static final class c extends AtomicLong implements o {
        private c() {
        }

        public /* synthetic */ c(int i) {
            this();
        }

        @Override // com.google.common.hash.o
        public void increment() {
            getAndIncrement();
        }

        @Override // com.google.common.hash.o
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // com.google.common.hash.o
        public long sum() {
            return get();
        }
    }
}
