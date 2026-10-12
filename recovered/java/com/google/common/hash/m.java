package com.google.common.hash;

import com.google.common.primitives.Longs;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final Enum f4583a;

    public interface c {
        long getLongLittleEndian(byte[] bArr, int i);
    }

    public static int a(int i, byte[] bArr) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class d implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4585a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4586b = new b();
        public static final Unsafe c;
        public static final int d;

        public enum a extends d {
            public a() {
                super("UNSAFE_LITTLE_ENDIAN", 0);
            }

            @Override // com.google.common.hash.m.c
            public long getLongLittleEndian(byte[] bArr, int i) {
                return d.c.getLong(bArr, i + d.d);
            }
        }

        public enum b extends d {
            public b() {
                super("UNSAFE_BIG_ENDIAN", 1);
            }

            @Override // com.google.common.hash.m.c
            public long getLongLittleEndian(byte[] bArr, int i) {
                return Long.reverseBytes(d.c.getLong(bArr, i + d.d));
            }
        }

        static {
            Unsafe unsafeA = a();
            c = unsafeA;
            d = unsafeA.arrayBaseOffset(byte[].class);
            if (unsafeA.arrayIndexScale(byte[].class) != 1) {
                throw new AssertionError();
            }
        }

        public static Unsafe a() {
            try {
                try {
                    return Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                return (Unsafe) AccessController.doPrivileged(new n());
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4584a = new a();

        public enum a extends b {
            public a() {
                super("INSTANCE", 0);
            }

            @Override // com.google.common.hash.m.c
            public long getLongLittleEndian(byte[] bArr, int i) {
                return Longs.fromBytes(bArr[i + 7], bArr[i + 6], bArr[i + 5], bArr[i + 4], bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
            }
        }
    }

    static {
        Enum r0 = b.f4584a;
        try {
            if ("amd64".equals(System.getProperty("os.arch"))) {
                r0 = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN) ? d.f4585a : d.f4586b;
            }
        } catch (Throwable unused) {
        }
        f4583a = r0;
    }

    private m() {
    }
}
