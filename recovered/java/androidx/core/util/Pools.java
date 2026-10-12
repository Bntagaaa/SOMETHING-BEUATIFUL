package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class Pools {

    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t);
    }

    private Pools() {
    }

    public static class SimplePool<T> implements Pool<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Object[] f1241a;

        /* renamed from: b, reason: collision with root package name */
        public int f1242b;

        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f1241a = new Object[i];
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            int i = this.f1242b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f1241a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f1242b = i - 1;
            return t;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            int i = 0;
            while (true) {
                int i2 = this.f1242b;
                Object[] objArr = this.f1241a;
                if (i >= i2) {
                    if (i2 >= objArr.length) {
                        return false;
                    }
                    objArr[i2] = t;
                    this.f1242b = i2 + 1;
                    return true;
                }
                if (objArr[i] == t) {
                    throw new IllegalStateException("Already in the pool!");
                }
                i++;
            }
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        public final Object c;

        public SynchronizedPool(int i) {
            super(i);
            this.c = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.c) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            boolean zRelease;
            synchronized (this.c) {
                zRelease = super.release(t);
            }
            return zRelease;
        }
    }
}
