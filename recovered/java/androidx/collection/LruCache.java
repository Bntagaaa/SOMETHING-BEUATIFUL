package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class LruCache<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f551a;

    /* renamed from: b, reason: collision with root package name */
    public int f552b;
    public int c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f553g;
    public int h;

    @Nullable
    public V create(@NonNull K k) {
        return null;
    }

    public void entryRemoved(boolean z, @NonNull K k, @NonNull V v, @Nullable V v2) {
    }

    public int sizeOf(@NonNull K k, @NonNull V v) {
        return 1;
    }

    public LruCache(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.f551a = new LinkedHashMap(0, 0.75f, true);
    }

    public void resize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this) {
            this.c = i;
        }
        trimToSize(i);
    }

    @Nullable
    public final V get(@NonNull K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                V v2 = (V) this.f551a.get(k);
                if (v2 != null) {
                    this.f553g++;
                    return v2;
                }
                this.h++;
                V vCreate = create(k);
                if (vCreate == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.e++;
                        v = (V) this.f551a.put(k, vCreate);
                        if (v != null) {
                            this.f551a.put(k, v);
                        } else {
                            this.f552b += a(k, vCreate);
                        }
                    } finally {
                    }
                }
                if (v != null) {
                    entryRemoved(false, k, vCreate, v);
                    return v;
                }
                trimToSize(this.c);
                return vCreate;
            } finally {
            }
        }
    }

    @Nullable
    public final V put(@NonNull K k, @NonNull V v) {
        V v2;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.d++;
                this.f552b += a(k, v);
                v2 = (V) this.f551a.put(k, v);
                if (v2 != null) {
                    this.f552b -= a(k, v2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (v2 != null) {
            entryRemoved(false, k, v2, v);
        }
        trimToSize(this.c);
        return v2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f552b     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L55
            java.util.LinkedHashMap r0 = r4.f551a     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            int r0 = r4.f552b     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L55
            goto L14
        L12:
            r5 = move-exception
            goto L74
        L14:
            int r0 = r4.f552b     // Catch: java.lang.Throwable -> L12
            if (r0 <= r5) goto L53
            java.util.LinkedHashMap r0 = r4.f551a     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L21
            goto L53
        L21:
            java.util.LinkedHashMap r0 = r4.f551a     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap r2 = r4.f551a     // Catch: java.lang.Throwable -> L12
            r2.remove(r1)     // Catch: java.lang.Throwable -> L12
            int r2 = r4.f552b     // Catch: java.lang.Throwable -> L12
            int r3 = r4.a(r1, r0)     // Catch: java.lang.Throwable -> L12
            int r2 = r2 - r3
            r4.f552b = r2     // Catch: java.lang.Throwable -> L12
            int r2 = r4.f     // Catch: java.lang.Throwable -> L12
            r3 = 1
            int r2 = r2 + r3
            r4.f = r2     // Catch: java.lang.Throwable -> L12
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            r2 = 0
            r4.entryRemoved(r3, r1, r0, r2)
            goto L0
        L53:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            return
        L55:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            r0.<init>()     // Catch: java.lang.Throwable -> L12
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L12
            throw r5     // Catch: java.lang.Throwable -> L12
        L74:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L12
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }

    @Nullable
    public final V remove(@NonNull K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                v = (V) this.f551a.remove(k);
                if (v != null) {
                    this.f552b -= a(k, v);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (v != null) {
            entryRemoved(false, k, v, null);
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(Object obj, Object obj2) {
        int iSizeOf = sizeOf(obj, obj2);
        if (iSizeOf >= 0) {
            return iSizeOf;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int size() {
        return this.f552b;
    }

    public final synchronized int maxSize() {
        return this.c;
    }

    public final synchronized int hitCount() {
        return this.f553g;
    }

    public final synchronized int missCount() {
        return this.h;
    }

    public final synchronized int createCount() {
        return this.e;
    }

    public final synchronized int putCount() {
        return this.d;
    }

    public final synchronized int evictionCount() {
        return this.f;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.f551a);
    }

    public final synchronized String toString() {
        int i;
        try {
            int i2 = this.f553g;
            int i3 = this.h + i2;
            i = i3 != 0 ? (i2 * 100) / i3 : 0;
            Locale locale = Locale.US;
        } catch (Throwable th) {
            throw th;
        }
        return "LruCache[maxSize=" + this.c + ",hits=" + this.f553g + ",misses=" + this.h + ",hitRate=" + i + "%]";
    }
}
