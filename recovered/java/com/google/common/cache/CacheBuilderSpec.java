package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.cache.a;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
public final class CacheBuilderSpec {
    public static final Splitter o = Splitter.on(',').trimResults();
    public static final Splitter p = Splitter.on('=').trimResults();
    public static final ImmutableMap q;

    /* renamed from: a, reason: collision with root package name */
    public Integer f3757a;

    /* renamed from: b, reason: collision with root package name */
    public Long f3758b;
    public Long c;
    public Integer d;
    public a.t e;
    public a.t f;

    /* renamed from: g, reason: collision with root package name */
    public Boolean f3759g;
    public long h;
    public TimeUnit i;
    public long j;
    public TimeUnit k;
    public long l;
    public TimeUnit m;
    public final String n;

    public interface m {
        void parse(CacheBuilderSpec cacheBuilderSpec, String str, @NullableDecl String str2);
    }

    static {
        ImmutableMap.Builder builderPut = ImmutableMap.builder().put("initialCapacity", new e()).put("maximumSize", new i()).put("maximumWeight", new j()).put("concurrencyLevel", new c());
        a.t.c cVar = a.t.c;
        q = builderPut.put("weakKeys", new g(cVar)).put("softValues", new n(a.t.f3819b)).put("weakValues", new n(cVar)).put("recordStats", new k()).put("expireAfterAccess", new b()).put("expireAfterWrite", new o()).put("refreshAfterWrite", new l()).put("refreshInterval", new l()).build();
    }

    public CacheBuilderSpec(String str) {
        this.n = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CacheBuilderSpec parse(String str) {
        CacheBuilderSpec cacheBuilderSpec = new CacheBuilderSpec(str);
        if (!str.isEmpty()) {
            for (String str2 : o.split(str)) {
                ImmutableList immutableListCopyOf = ImmutableList.copyOf(p.split(str2));
                Preconditions.checkArgument(!immutableListCopyOf.isEmpty(), "blank key-value pair");
                Preconditions.checkArgument(immutableListCopyOf.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) immutableListCopyOf.get(0);
                m mVar = (m) q.get(str3);
                Preconditions.checkArgument(mVar != null, "unknown key %s", str3);
                mVar.parse(cacheBuilderSpec, str3, immutableListCopyOf.size() == 1 ? null : (String) immutableListCopyOf.get(1));
            }
        }
        return cacheBuilderSpec;
    }

    public static CacheBuilderSpec disableCaching() {
        return parse("maximumSize=0");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3760a;

        static {
            int[] iArr = new int[a.t.values().length];
            f3760a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3760a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public String toParsableString() {
        return this.n;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(toParsableString()).toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.f3757a, this.f3758b, this.c, this.d, this.e, this.f, this.f3759g, a(this.h, this.i), a(this.j, this.k), a(this.l, this.m));
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheBuilderSpec)) {
            return false;
        }
        CacheBuilderSpec cacheBuilderSpec = (CacheBuilderSpec) obj;
        return Objects.equal(this.f3757a, cacheBuilderSpec.f3757a) && Objects.equal(this.f3758b, cacheBuilderSpec.f3758b) && Objects.equal(this.c, cacheBuilderSpec.c) && Objects.equal(this.d, cacheBuilderSpec.d) && Objects.equal(this.e, cacheBuilderSpec.e) && Objects.equal(this.f, cacheBuilderSpec.f) && Objects.equal(this.f3759g, cacheBuilderSpec.f3759g) && Objects.equal(a(this.h, this.i), a(cacheBuilderSpec.h, cacheBuilderSpec.i)) && Objects.equal(a(this.j, this.k), a(cacheBuilderSpec.j, cacheBuilderSpec.k)) && Objects.equal(a(this.l, this.m), a(cacheBuilderSpec.l, cacheBuilderSpec.m));
    }

    public static Long a(long j2, TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j2));
    }

    public static abstract class f implements m {
        public abstract void parseInteger(CacheBuilderSpec cacheBuilderSpec, int i);

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                parseInteger(cacheBuilderSpec, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                Splitter splitter = CacheBuilderSpec.o;
                Locale locale = Locale.ROOT;
                throw new IllegalArgumentException(_COROUTINE.a.k("key ", str, " value set to ", str2, ", must be integer"), e);
            }
        }
    }

    public static abstract class h implements m {
        public abstract void parseLong(CacheBuilderSpec cacheBuilderSpec, long j);

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                parseLong(cacheBuilderSpec, Long.parseLong(str2));
            } catch (NumberFormatException e) {
                Splitter splitter = CacheBuilderSpec.o;
                Locale locale = Locale.ROOT;
                throw new IllegalArgumentException(_COROUTINE.a.k("key ", str, " value set to ", str2, ", must be integer"), e);
            }
        }
    }

    public static class e extends f {
        @Override // com.google.common.cache.CacheBuilderSpec.f
        public void parseInteger(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f3757a;
            Preconditions.checkArgument(num == null, "initial capacity was already set to ", num);
            cacheBuilderSpec.f3757a = Integer.valueOf(i);
        }
    }

    public static class i extends h {
        @Override // com.google.common.cache.CacheBuilderSpec.h
        public void parseLong(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f3758b;
            Preconditions.checkArgument(l == null, "maximum size was already set to ", l);
            Long l2 = cacheBuilderSpec.c;
            Preconditions.checkArgument(l2 == null, "maximum weight was already set to ", l2);
            cacheBuilderSpec.f3758b = Long.valueOf(j);
        }
    }

    public static class j extends h {
        @Override // com.google.common.cache.CacheBuilderSpec.h
        public void parseLong(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.c;
            Preconditions.checkArgument(l == null, "maximum weight was already set to ", l);
            Long l2 = cacheBuilderSpec.f3758b;
            Preconditions.checkArgument(l2 == null, "maximum size was already set to ", l2);
            cacheBuilderSpec.c = Long.valueOf(j);
        }
    }

    public static class c extends f {
        @Override // com.google.common.cache.CacheBuilderSpec.f
        public void parseInteger(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.d;
            Preconditions.checkArgument(num == null, "concurrency level was already set to ", num);
            cacheBuilderSpec.d = Integer.valueOf(i);
        }
    }

    public static class g implements m {

        /* renamed from: a, reason: collision with root package name */
        public final a.t f3761a;

        public g(a.t tVar) {
            this.f3761a = tVar;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @NullableDecl String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            a.t tVar = cacheBuilderSpec.e;
            Preconditions.checkArgument(tVar == null, "%s was already set to %s", str, tVar);
            cacheBuilderSpec.e = this.f3761a;
        }
    }

    public static class n implements m {

        /* renamed from: a, reason: collision with root package name */
        public final a.t f3762a;

        public n(a.t tVar) {
            this.f3762a = tVar;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @NullableDecl String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            a.t tVar = cacheBuilderSpec.f;
            Preconditions.checkArgument(tVar == null, "%s was already set to %s", str, tVar);
            cacheBuilderSpec.f = this.f3762a;
        }
    }

    public static class k implements m {
        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @NullableDecl String str2) {
            Preconditions.checkArgument(str2 == null, "recordStats does not take values");
            Preconditions.checkArgument(cacheBuilderSpec.f3759g == null, "recordStats already set");
            cacheBuilderSpec.f3759g = Boolean.TRUE;
        }
    }

    public static abstract class d implements m {
        public abstract void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit);

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            TimeUnit timeUnit;
            Preconditions.checkArgument((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                char cCharAt = str2.charAt(str2.length() - 1);
                if (cCharAt == 'd') {
                    timeUnit = TimeUnit.DAYS;
                } else if (cCharAt == 'h') {
                    timeUnit = TimeUnit.HOURS;
                } else if (cCharAt == 'm') {
                    timeUnit = TimeUnit.MINUTES;
                } else {
                    if (cCharAt != 's') {
                        Splitter splitter = CacheBuilderSpec.o;
                        Locale locale = Locale.ROOT;
                        throw new IllegalArgumentException("key " + str + " invalid format.  was " + str2 + ", must end with one of [dDhHmMsS]");
                    }
                    timeUnit = TimeUnit.SECONDS;
                }
                parseDuration(cacheBuilderSpec, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException unused) {
                Splitter splitter2 = CacheBuilderSpec.o;
                Locale locale2 = Locale.ROOT;
                throw new IllegalArgumentException(_COROUTINE.a.k("key ", str, " value set to ", str2, ", must be integer"));
            }
        }
    }

    public static class b extends d {
        @Override // com.google.common.cache.CacheBuilderSpec.d
        public void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.k == null, "expireAfterAccess already set");
            cacheBuilderSpec.j = j;
            cacheBuilderSpec.k = timeUnit;
        }
    }

    public static class o extends d {
        @Override // com.google.common.cache.CacheBuilderSpec.d
        public void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.i == null, "expireAfterWrite already set");
            cacheBuilderSpec.h = j;
            cacheBuilderSpec.i = timeUnit;
        }
    }

    public static class l extends d {
        @Override // com.google.common.cache.CacheBuilderSpec.d
        public void parseDuration(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.m == null, "refreshAfterWrite already set");
            cacheBuilderSpec.l = j;
            cacheBuilderSpec.m = timeUnit;
        }
    }
}
