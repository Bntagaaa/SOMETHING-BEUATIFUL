package com.google.common.hash;

import com.google.appinventor.components.runtime.util.Ev3Constants;
import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.errorprone.annotations.Immutable;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.crypto.spec.SecretKeySpec;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public final class Hashing {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4554a = (int) System.currentTimeMillis();

    public static HashFunction murmur3_32(int i2) {
        return new u(i2);
    }

    public static HashFunction murmur3_32() {
        return u.f4596b;
    }

    public static HashFunction murmur3_128(int i2) {
        return new t(i2);
    }

    public static HashFunction murmur3_128() {
        return t.f4594b;
    }

    public static HashFunction sipHash24() {
        return v.e;
    }

    public static HashFunction sipHash24(long j, long j2) {
        return new v(j, j2);
    }

    @Deprecated
    public static HashFunction md5() {
        return e.f4558a;
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public static final HashFunction f4558a = new s("MD5", "Hashing.md5()");

        private e() {
        }
    }

    @Deprecated
    public static HashFunction sha1() {
        return f.f4559a;
    }

    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public static final HashFunction f4559a = new s("SHA-1", "Hashing.sha1()");

        private f() {
        }
    }

    public static HashFunction sha256() {
        return g.f4560a;
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public static final HashFunction f4560a = new s("SHA-256", "Hashing.sha256()");

        private g() {
        }
    }

    public static HashFunction sha384() {
        return h.f4561a;
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public static final HashFunction f4561a = new s("SHA-384", "Hashing.sha384()");

        private h() {
        }
    }

    public static HashFunction sha512() {
        return i.f4562a;
    }

    public static class i {

        /* renamed from: a, reason: collision with root package name */
        public static final HashFunction f4562a = new s("SHA-512", "Hashing.sha512()");

        private i() {
        }
    }

    public static HashFunction hmacMd5(Key key) {
        return new r("HmacMD5", key, a("hmacMd5", key));
    }

    public static HashFunction hmacMd5(byte[] bArr) {
        return hmacMd5(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacMD5"));
    }

    public static HashFunction hmacSha1(Key key) {
        return new r("HmacSHA1", key, a("hmacSha1", key));
    }

    public static HashFunction hmacSha1(byte[] bArr) {
        return hmacSha1(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA1"));
    }

    public static HashFunction hmacSha256(Key key) {
        return new r("HmacSHA256", key, a("hmacSha256", key));
    }

    public static HashFunction hmacSha256(byte[] bArr) {
        return hmacSha256(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA256"));
    }

    public static HashFunction hmacSha512(Key key) {
        return new r("HmacSHA512", key, a("hmacSha512", key));
    }

    public static HashFunction hmacSha512(byte[] bArr) {
        return hmacSha512(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA512"));
    }

    public static String a(String str, Key key) {
        String algorithm = key.getAlgorithm();
        String format = key.getFormat();
        StringBuilder sb = new StringBuilder("Hashing.");
        sb.append(str);
        sb.append("(Key[algorithm=");
        sb.append(algorithm);
        sb.append(", format=");
        return _COROUTINE.a.m(sb, format, "])");
    }

    public static HashFunction crc32c() {
        return j.f4580a;
    }

    public static HashFunction crc32() {
        return b.f4555b.f4556a;
    }

    public static HashFunction adler32() {
        return b.c.f4556a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Immutable
    public static abstract class b implements l<Checksum> {

        /* renamed from: b, reason: collision with root package name */
        public static final a f4555b = new a("CRC_32", 0, "Hashing.crc32()");
        public static final C0135b c = new C0135b("ADLER_32", 1, "Hashing.adler32()");

        /* renamed from: a, reason: collision with root package name */
        public final HashFunction f4556a;

        public enum a extends b {
            @Override // com.google.common.base.Supplier
            public Checksum get() {
                return new CRC32();
            }
        }

        /* renamed from: com.google.common.hash.Hashing$b$b, reason: collision with other inner class name */
        public enum C0135b extends b {
            @Override // com.google.common.base.Supplier
            public Checksum get() {
                return new Adler32();
            }
        }

        public b(String str, int i, String str2) {
            this.f4556a = new com.google.common.hash.i(this, str2);
        }
    }

    public static HashFunction farmHashFingerprint64() {
        return k.f4582a;
    }

    public static int consistentHash(HashCode hashCode, int i2) {
        return consistentHash(hashCode.padToLong(), i2);
    }

    public static int consistentHash(long j, int i2) {
        int i3 = 0;
        Preconditions.checkArgument(i2 > 0, "buckets must be positive: %s", i2);
        d dVar = new d(j);
        while (true) {
            int iNextDouble = (int) ((i3 + 1) / dVar.nextDouble());
            if (iNextDouble < 0 || iNextDouble >= i2) {
                break;
            }
            i3 = iNextDouble;
        }
        return i3;
    }

    public static HashCode combineOrdered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "Must be at least 1 hash code to combine.");
        int iBits = it.next().bits() / 8;
        byte[] bArr = new byte[iBits];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrAsBytes = it2.next().asBytes();
            Preconditions.checkArgument(bArrAsBytes.length == iBits, "All hashcodes must have the same bit length.");
            for (int i2 = 0; i2 < bArrAsBytes.length; i2++) {
                bArr[i2] = (byte) ((bArr[i2] * Ev3Constants.Opcode.AND16) ^ bArrAsBytes[i2]);
            }
        }
        return new HashCode.a(bArr);
    }

    public static HashCode combineUnordered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "Must be at least 1 hash code to combine.");
        int iBits = it.next().bits() / 8;
        byte[] bArr = new byte[iBits];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrAsBytes = it2.next().asBytes();
            Preconditions.checkArgument(bArrAsBytes.length == iBits, "All hashcodes must have the same bit length.");
            for (int i2 = 0; i2 < bArrAsBytes.length; i2++) {
                bArr[i2] = (byte) (bArr[i2] + bArrAsBytes[i2]);
            }
        }
        return new HashCode.a(bArr);
    }

    public static HashFunction goodFastHash(int i2) {
        Preconditions.checkArgument(i2 > 0, "Number of bits must be positive");
        int i3 = (i2 + 31) & (-32);
        if (i3 == 32) {
            return u.c;
        }
        if (i3 <= 128) {
            return t.c;
        }
        int i4 = (i3 + WorkQueueKt.MASK) / 128;
        HashFunction[] hashFunctionArr = new HashFunction[i4];
        hashFunctionArr[0] = t.c;
        int i5 = f4554a;
        for (int i6 = 1; i6 < i4; i6++) {
            i5 += 1500450271;
            hashFunctionArr[i6] = murmur3_128(i5);
        }
        return new c(hashFunctionArr);
    }

    public static HashFunction concatenating(HashFunction hashFunction, HashFunction hashFunction2, HashFunction... hashFunctionArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashFunction);
        arrayList.add(hashFunction2);
        arrayList.addAll(Arrays.asList(hashFunctionArr));
        return new c((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    public static HashFunction concatenating(Iterable<HashFunction> iterable) {
        Preconditions.checkNotNull(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<HashFunction> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Preconditions.checkArgument(arrayList.size() > 0, "number of hash functions (%s) must be > 0", arrayList.size());
        return new c((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    public static final class c extends com.google.common.hash.c {
        public c(HashFunction[] hashFunctionArr) {
            super(hashFunctionArr);
            for (HashFunction hashFunction : hashFunctionArr) {
                Preconditions.checkArgument(hashFunction.bits() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", hashFunction.bits(), (Object) hashFunction);
            }
        }

        @Override // com.google.common.hash.c
        public final HashCode a(Hasher[] hasherArr) {
            byte[] bArr = new byte[bits() / 8];
            int iWriteBytesTo = 0;
            for (Hasher hasher : hasherArr) {
                HashCode hashCodeHash = hasher.hash();
                iWriteBytesTo += hashCodeHash.writeBytesTo(bArr, iWriteBytesTo, hashCodeHash.bits() / 8);
            }
            char[] cArr = HashCode.f4550a;
            return new HashCode.a(bArr);
        }

        @Override // com.google.common.hash.HashFunction
        public int bits() {
            int iBits = 0;
            for (HashFunction hashFunction : this.f4568a) {
                iBits += hashFunction.bits();
            }
            return iBits;
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(this.f4568a, ((c) obj).f4568a);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f4568a);
        }
    }

    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public long f4557a;

        public d(long j) {
            this.f4557a = j;
        }

        public double nextDouble() {
            this.f4557a = (this.f4557a * 2862933555777941757L) + 1;
            return (((int) (r2 >>> 33)) + 1) / 2.147483648E9d;
        }
    }

    private Hashing() {
    }
}
