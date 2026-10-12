package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.Random;
import sun.misc.Unsafe;

@GwtIncompatible
/* loaded from: classes.dex */
abstract class h extends Number {
    public static final ThreadLocal d = new ThreadLocal();
    public static final Random e = new Random();
    public static final int f = Runtime.getRuntime().availableProcessors();

    /* renamed from: g, reason: collision with root package name */
    public static final Unsafe f3829g;
    public static final long h;
    public static final long i;

    /* renamed from: a, reason: collision with root package name */
    public volatile transient a[] f3830a;

    /* renamed from: b, reason: collision with root package name */
    public volatile transient long f3831b;
    public volatile transient int c;

    public static final class a {

        /* renamed from: b, reason: collision with root package name */
        public static final Unsafe f3832b;
        public static final long c;

        /* renamed from: a, reason: collision with root package name */
        public volatile long f3833a;

        static {
            try {
                Unsafe unsafeC = h.c();
                f3832b = unsafeC;
                c = unsafeC.objectFieldOffset(a.class.getDeclaredField("a"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        public a(long j) {
            this.f3833a = j;
        }

        public final boolean a(long j, long j2) {
            return f3832b.compareAndSwapLong(this, c, j, j2);
        }
    }

    static {
        try {
            Unsafe unsafeC = c();
            f3829g = unsafeC;
            h = unsafeC.objectFieldOffset(h.class.getDeclaredField("b"));
            i = unsafeC.objectFieldOffset(h.class.getDeclaredField("c"));
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    public final boolean a(long j, long j2) {
        return f3829g.compareAndSwapLong(this, h, j, j2);
    }

    public final boolean b() {
        return f3829g.compareAndSwapInt(this, i, 0, 1);
    }

    public static Unsafe c() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new g());
        }
    }
}
