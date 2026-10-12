package com.google.common.hash;

import com.google.common.annotations.GwtIncompatible;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.Random;
import sun.misc.Unsafe;

@GwtIncompatible
/* loaded from: classes.dex */
abstract class x extends Number {
    public static final ThreadLocal d = new ThreadLocal();
    public static final Random e = new Random();
    public static final int f = Runtime.getRuntime().availableProcessors();

    /* renamed from: g, reason: collision with root package name */
    public static final Unsafe f4603g;
    public static final long h;
    public static final long i;

    /* renamed from: a, reason: collision with root package name */
    public volatile transient a[] f4604a;

    /* renamed from: b, reason: collision with root package name */
    public volatile transient long f4605b;
    public volatile transient int c;

    public static final class a {

        /* renamed from: b, reason: collision with root package name */
        public static final Unsafe f4606b;
        public static final long c;

        /* renamed from: a, reason: collision with root package name */
        public volatile long f4607a;

        static {
            try {
                Unsafe unsafeC = x.c();
                f4606b = unsafeC;
                c = unsafeC.objectFieldOffset(a.class.getDeclaredField("a"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        public a(long j) {
            this.f4607a = j;
        }

        public final boolean a(long j, long j2) {
            return f4606b.compareAndSwapLong(this, c, j, j2);
        }
    }

    static {
        try {
            Unsafe unsafeC = c();
            f4603g = unsafeC;
            h = unsafeC.objectFieldOffset(x.class.getDeclaredField("b"));
            i = unsafeC.objectFieldOffset(x.class.getDeclaredField("c"));
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    public final boolean a(long j, long j2) {
        return f4603g.compareAndSwapLong(this, h, j, j2);
    }

    public final boolean b() {
        return f4603g.compareAndSwapInt(this, i, 0, 1);
    }

    public static Unsafe c() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new w());
        }
    }
}
