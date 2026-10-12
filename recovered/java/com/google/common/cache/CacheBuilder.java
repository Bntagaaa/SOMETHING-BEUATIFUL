package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.a;
import com.google.errorprone.annotations.CheckReturnValue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class CacheBuilder<K, V> {
    public static final Supplier o = Suppliers.ofInstance(new a());
    public static final CacheStats p = new CacheStats(0, 0, 0, 0, 0, 0);
    public static final Supplier q = new b();
    public static final Ticker r = new c();
    public static final Logger s = Logger.getLogger(CacheBuilder.class.getName());
    public Weigher f;

    /* renamed from: g, reason: collision with root package name */
    public a.t f3754g;
    public a.t h;
    public RemovalListener l;
    public Ticker m;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3752a = true;

    /* renamed from: b, reason: collision with root package name */
    public int f3753b = -1;
    public int c = -1;
    public long d = -1;
    public long e = -1;
    public long i = -1;
    public long j = -1;
    public long k = -1;
    public Supplier n = o;

    public static class c extends Ticker {
        @Override // com.google.common.base.Ticker
        public long read() {
            return 0L;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class d implements RemovalListener<Object, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f3755a = new d("INSTANCE", 0);

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class e implements Weigher<Object, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f3756a = new e("INSTANCE", 0);

        @Override // com.google.common.cache.Weigher
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
    }

    public static class a implements AbstractCache.StatsCounter {
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public CacheStats snapshot() {
            return CacheBuilder.p;
        }
    }

    public static class b implements Supplier<AbstractCache.StatsCounter> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public AbstractCache.StatsCounter get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    }

    private CacheBuilder() {
    }

    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<>();
    }

    @GwtIncompatible
    public static CacheBuilder<Object, Object> from(CacheBuilderSpec cacheBuilderSpec) {
        cacheBuilderSpec.getClass();
        CacheBuilder<Object, Object> cacheBuilderNewBuilder = newBuilder();
        Integer num = cacheBuilderSpec.f3757a;
        if (num != null) {
            cacheBuilderNewBuilder.initialCapacity(num.intValue());
        }
        Long l = cacheBuilderSpec.f3758b;
        if (l != null) {
            cacheBuilderNewBuilder.maximumSize(l.longValue());
        }
        Long l2 = cacheBuilderSpec.c;
        if (l2 != null) {
            cacheBuilderNewBuilder.maximumWeight(l2.longValue());
        }
        Integer num2 = cacheBuilderSpec.d;
        if (num2 != null) {
            cacheBuilderNewBuilder.concurrencyLevel(num2.intValue());
        }
        a.t tVar = cacheBuilderSpec.e;
        if (tVar != null) {
            if (tVar.ordinal() == 2) {
                cacheBuilderNewBuilder.weakKeys();
            } else {
                throw new AssertionError();
            }
        }
        a.t tVar2 = cacheBuilderSpec.f;
        if (tVar2 != null) {
            int iOrdinal = tVar2.ordinal();
            if (iOrdinal == 1) {
                cacheBuilderNewBuilder.softValues();
            } else if (iOrdinal == 2) {
                cacheBuilderNewBuilder.weakValues();
            } else {
                throw new AssertionError();
            }
        }
        Boolean bool = cacheBuilderSpec.f3759g;
        if (bool != null && bool.booleanValue()) {
            cacheBuilderNewBuilder.recordStats();
        }
        TimeUnit timeUnit = cacheBuilderSpec.i;
        if (timeUnit != null) {
            cacheBuilderNewBuilder.expireAfterWrite(cacheBuilderSpec.h, timeUnit);
        }
        TimeUnit timeUnit2 = cacheBuilderSpec.k;
        if (timeUnit2 != null) {
            cacheBuilderNewBuilder.expireAfterAccess(cacheBuilderSpec.j, timeUnit2);
        }
        TimeUnit timeUnit3 = cacheBuilderSpec.m;
        if (timeUnit3 != null) {
            cacheBuilderNewBuilder.refreshAfterWrite(cacheBuilderSpec.l, timeUnit3);
        }
        cacheBuilderNewBuilder.f3752a = false;
        return cacheBuilderNewBuilder;
    }

    @GwtIncompatible
    public static CacheBuilder<Object, Object> from(String str) {
        return from(CacheBuilderSpec.parse(str));
    }

    public CacheBuilder<K, V> initialCapacity(int i) {
        int i2 = this.f3753b;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.f3753b = i;
        return this;
    }

    public CacheBuilder<K, V> concurrencyLevel(int i) {
        int i2 = this.c;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.c = i;
        return this;
    }

    public CacheBuilder<K, V> maximumSize(long j) {
        long j2 = this.d;
        Preconditions.checkState(j2 == -1, "maximum size was already set to %s", j2);
        long j3 = this.e;
        Preconditions.checkState(j3 == -1, "maximum weight was already set to %s", j3);
        Preconditions.checkState(this.f == null, "maximum size can not be combined with weigher");
        Preconditions.checkArgument(j >= 0, "maximum size must not be negative");
        this.d = j;
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> maximumWeight(long j) {
        long j2 = this.e;
        Preconditions.checkState(j2 == -1, "maximum weight was already set to %s", j2);
        long j3 = this.d;
        Preconditions.checkState(j3 == -1, "maximum size was already set to %s", j3);
        this.e = j;
        Preconditions.checkArgument(j >= 0, "maximum weight must not be negative");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> weigher(Weigher<? super K1, ? super V1> weigher) {
        Preconditions.checkState(this.f == null);
        if (this.f3752a) {
            long j = this.d;
            Preconditions.checkState(j == -1, "weigher can not be combined with maximum size", j);
        }
        this.f = (Weigher) Preconditions.checkNotNull(weigher);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> weakKeys() {
        a.t.c cVar = a.t.c;
        a.t tVar = this.f3754g;
        Preconditions.checkState(tVar == null, "Key strength was already set to %s", tVar);
        this.f3754g = (a.t) Preconditions.checkNotNull(cVar);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> weakValues() {
        a.t.c cVar = a.t.c;
        a.t tVar = this.h;
        Preconditions.checkState(tVar == null, "Value strength was already set to %s", tVar);
        this.h = (a.t) Preconditions.checkNotNull(cVar);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> softValues() {
        a.t.b bVar = a.t.f3819b;
        a.t tVar = this.h;
        Preconditions.checkState(tVar == null, "Value strength was already set to %s", tVar);
        this.h = (a.t) Preconditions.checkNotNull(bVar);
        return this;
    }

    public CacheBuilder<K, V> expireAfterWrite(long j, TimeUnit timeUnit) {
        long j2 = this.i;
        Preconditions.checkState(j2 == -1, "expireAfterWrite was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.i = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> expireAfterAccess(long j, TimeUnit timeUnit) {
        long j2 = this.j;
        Preconditions.checkState(j2 == -1, "expireAfterAccess was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.j = timeUnit.toNanos(j);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> refreshAfterWrite(long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        long j2 = this.k;
        Preconditions.checkState(j2 == -1, "refresh was already set to %s ns", j2);
        Preconditions.checkArgument(j > 0, "duration must be positive: %s %s", j, timeUnit);
        this.k = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> ticker(Ticker ticker) {
        Preconditions.checkState(this.m == null);
        this.m = (Ticker) Preconditions.checkNotNull(ticker);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> removalListener) {
        Preconditions.checkState(this.l == null);
        this.l = (RemovalListener) Preconditions.checkNotNull(removalListener);
        return this;
    }

    public CacheBuilder<K, V> recordStats() {
        this.n = q;
        return this;
    }

    public <K1 extends K, V1 extends V> LoadingCache<K1, V1> build(CacheLoader<? super K1, V1> cacheLoader) {
        a();
        return new a.n(new com.google.common.cache.a(this, (CacheLoader) Preconditions.checkNotNull(cacheLoader)));
    }

    public <K1 extends K, V1 extends V> Cache<K1, V1> build() {
        a();
        Preconditions.checkState(this.k == -1, "refreshAfterWrite requires a LoadingCache");
        return new a.o(new com.google.common.cache.a(this, null));
    }

    public final void a() {
        if (this.f == null) {
            Preconditions.checkState(this.e == -1, "maximumWeight requires weigher");
        } else if (this.f3752a) {
            Preconditions.checkState(this.e != -1, "weigher requires maximumWeight");
        } else if (this.e == -1) {
            s.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        int i = this.f3753b;
        if (i != -1) {
            stringHelper.add("initialCapacity", i);
        }
        int i2 = this.c;
        if (i2 != -1) {
            stringHelper.add("concurrencyLevel", i2);
        }
        long j = this.d;
        if (j != -1) {
            stringHelper.add("maximumSize", j);
        }
        long j2 = this.e;
        if (j2 != -1) {
            stringHelper.add("maximumWeight", j2);
        }
        if (this.i != -1) {
            stringHelper.add("expireAfterWrite", this.i + "ns");
        }
        if (this.j != -1) {
            stringHelper.add("expireAfterAccess", this.j + "ns");
        }
        a.t tVar = this.f3754g;
        if (tVar != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(tVar.toString()));
        }
        a.t tVar2 = this.h;
        if (tVar2 != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(tVar2.toString()));
        }
        if (this.l != null) {
            stringHelper.addValue("removalListener");
        }
        return stringHelper.toString();
    }
}
