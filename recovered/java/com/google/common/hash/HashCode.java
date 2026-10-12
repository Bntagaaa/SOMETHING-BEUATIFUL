package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedInts;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public abstract class HashCode {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f4550a = "0123456789abcdef".toCharArray();

    public abstract byte[] asBytes();

    public abstract int asInt();

    public abstract long asLong();

    public abstract boolean b(HashCode hashCode);

    public abstract int bits();

    public abstract void d(byte[] bArr, int i, int i2);

    public abstract long padToLong();

    @CanIgnoreReturnValue
    public int writeBytesTo(byte[] bArr, int i, int i2) {
        int iMin = Ints.min(i2, bits() / 8);
        Preconditions.checkPositionIndexes(i, i + iMin, bArr.length);
        d(bArr, i, iMin);
        return iMin;
    }

    public byte[] c() {
        return asBytes();
    }

    public static HashCode fromInt(int i) {
        return new b(i);
    }

    public static final class b extends HashCode implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final int f4552b;

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 32;
        }

        public b(int i) {
            this.f4552b = i;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            int i = this.f4552b;
            return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return this.f4552b;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return UnsignedInts.toLong(this.f4552b);
        }

        @Override // com.google.common.hash.HashCode
        public final void d(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.f4552b >> (i3 * 8));
            }
        }

        @Override // com.google.common.hash.HashCode
        public final boolean b(HashCode hashCode) {
            return this.f4552b == hashCode.asInt();
        }
    }

    public static HashCode fromLong(long j) {
        return new c(j);
    }

    public static final class c extends HashCode implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final long f4553b;

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 64;
        }

        public c(long j) {
            this.f4553b = j;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return new byte[]{(byte) this.f4553b, (byte) (r0 >> 8), (byte) (r0 >> 16), (byte) (r0 >> 24), (byte) (r0 >> 32), (byte) (r0 >> 40), (byte) (r0 >> 48), (byte) (r0 >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return (int) this.f4553b;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            return this.f4553b;
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return this.f4553b;
        }

        @Override // com.google.common.hash.HashCode
        public final void d(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.f4553b >> (i3 * 8));
            }
        }

        @Override // com.google.common.hash.HashCode
        public final boolean b(HashCode hashCode) {
            return this.f4553b == hashCode.asLong();
        }
    }

    public static HashCode fromBytes(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return new a((byte[]) bArr.clone());
    }

    public static final class a extends HashCode implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final byte[] f4551b;

        public a(byte[] bArr) {
            this.f4551b = (byte[]) Preconditions.checkNotNull(bArr);
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return this.f4551b.length * 8;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return (byte[]) this.f4551b.clone();
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            byte[] bArr = this.f4551b;
            Preconditions.checkState(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            byte[] bArr = this.f4551b;
            Preconditions.checkState(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return padToLong();
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            byte[] bArr = this.f4551b;
            long j = bArr[0] & 255;
            for (int i = 1; i < Math.min(bArr.length, 8); i++) {
                j |= (bArr[i] & 255) << (i * 8);
            }
            return j;
        }

        @Override // com.google.common.hash.HashCode
        public final void d(byte[] bArr, int i, int i2) {
            System.arraycopy(this.f4551b, 0, bArr, i, i2);
        }

        @Override // com.google.common.hash.HashCode
        public final byte[] c() {
            return this.f4551b;
        }

        @Override // com.google.common.hash.HashCode
        public final boolean b(HashCode hashCode) {
            byte[] bArr = this.f4551b;
            if (bArr.length != hashCode.c().length) {
                return false;
            }
            boolean z = true;
            for (int i = 0; i < bArr.length; i++) {
                z &= bArr[i] == hashCode.c()[i];
            }
            return z;
        }
    }

    public static HashCode fromString(String str) {
        Preconditions.checkArgument(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        Preconditions.checkArgument(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((a(str.charAt(i)) << 4) + a(str.charAt(i + 1)));
        }
        return new a(bArr);
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        throw new IllegalArgumentException("Illegal hexadecimal character: " + c2);
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return bits() == hashCode.bits() && b(hashCode);
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bArrC = c();
        int i = bArrC[0] & 255;
        for (int i2 = 1; i2 < bArrC.length; i2++) {
            i |= (bArrC[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] bArrC = c();
        StringBuilder sb = new StringBuilder(bArrC.length * 2);
        for (byte b2 : bArrC) {
            char[] cArr = f4550a;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }
}
