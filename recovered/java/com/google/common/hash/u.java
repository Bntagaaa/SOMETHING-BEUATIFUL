package com.google.common.hash;

import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
/* loaded from: classes.dex */
final class u extends d implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final HashFunction f4596b = new u(0);
    public static final HashFunction c = new u(Hashing.f4554a);

    /* renamed from: a, reason: collision with root package name */
    public final int f4597a;

    public static long a(char c2) {
        return (((c2 & '?') | 128) << 16) | (((c2 >>> '\f') | 480) & 255) | ((((c2 >>> 6) & 63) | 128) << 8);
    }

    public static long b(int i) {
        return (((i >>> 18) | 240) & 255) | ((((i >>> 12) & 63) | 128) << 8) | ((((i >>> 6) & 63) | 128) << 16) | (((i & 63) | 128) << 24);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 32;
    }

    public u(int i) {
        this.f4597a = i;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        a aVar = new a();
        aVar.f4598a = this.f4597a;
        aVar.d = 0;
        aVar.e = false;
        return aVar;
    }

    public String toString() {
        return "Hashing.murmur3_32(" + this.f4597a + ")";
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof u) && this.f4597a == ((u) obj).f4597a;
    }

    public int hashCode() {
        return u.class.hashCode() ^ this.f4597a;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return c(d(this.f4597a, e(i)), 4);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        int i = (int) (j >>> 32);
        return c(d(d(this.f4597a, e((int) j)), e(i)), 8);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int iE = this.f4597a;
        for (int i = 1; i < charSequence.length(); i += 2) {
            iE = d(iE, e(charSequence.charAt(i - 1) | (charSequence.charAt(i) << 16)));
        }
        if ((charSequence.length() & 1) == 1) {
            iE ^= e(charSequence.charAt(charSequence.length() - 1));
        }
        return c(iE, charSequence.length() * 2);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        if (Charsets.UTF_8.equals(charset)) {
            int length = charSequence.length();
            int i = 0;
            int iD = this.f4597a;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = i2 + 4;
                if (i4 > length) {
                    break;
                }
                char cCharAt = charSequence.charAt(i2);
                char cCharAt2 = charSequence.charAt(i2 + 1);
                char cCharAt3 = charSequence.charAt(i2 + 2);
                char cCharAt4 = charSequence.charAt(i2 + 3);
                if (cCharAt >= 128 || cCharAt2 >= 128 || cCharAt3 >= 128 || cCharAt4 >= 128) {
                    break;
                }
                iD = d(iD, e((cCharAt2 << '\b') | cCharAt | (cCharAt3 << 16) | (cCharAt4 << 24)));
                i3 += 4;
                i2 = i4;
            }
            long jA = 0;
            while (i2 < length) {
                char cCharAt5 = charSequence.charAt(i2);
                if (cCharAt5 < 128) {
                    jA |= cCharAt5 << i;
                    i += 8;
                    i3++;
                } else if (cCharAt5 < 2048) {
                    jA |= ((((cCharAt5 & '?') | 128) << 8) | (((cCharAt5 >>> 6) | 960) & 255)) << i;
                    i += 16;
                    i3 += 2;
                } else if (cCharAt5 < 55296 || cCharAt5 > 57343) {
                    jA |= a(cCharAt5) << i;
                    i += 24;
                    i3 += 3;
                } else {
                    int iCodePointAt = Character.codePointAt(charSequence, i2);
                    if (iCodePointAt == cCharAt5) {
                        return hashBytes(charSequence.toString().getBytes(charset));
                    }
                    i2++;
                    jA |= b(iCodePointAt) << i;
                    i3 += 4;
                }
                if (i >= 32) {
                    iD = d(iD, e((int) jA));
                    jA >>>= 32;
                    i -= 32;
                }
                i2++;
            }
            return c(e((int) jA) ^ iD, i3);
        }
        return hashBytes(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        int iD = this.f4597a;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4 + 4;
            if (i5 > i2) {
                break;
            }
            int i6 = i4 + i;
            iD = d(iD, e(Ints.fromBytes(bArr[i6 + 3], bArr[i6 + 2], bArr[i6 + 1], bArr[i6])));
            i4 = i5;
        }
        int i7 = i4;
        int i8 = 0;
        while (i7 < i2) {
            i3 ^= UnsignedBytes.toInt(bArr[i + i7]) << i8;
            i7++;
            i8 += 8;
        }
        return c(e(i3) ^ iD, i2);
    }

    public static int e(int i) {
        return Integer.rotateLeft(i * (-862048943), 15) * 461845907;
    }

    public static int d(int i, int i2) {
        return (Integer.rotateLeft(i ^ i2, 13) * 5) - 430675100;
    }

    public static HashCode c(int i, int i2) {
        int i3 = i ^ i2;
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return HashCode.fromInt(i5 ^ (i5 >>> 16));
    }

    @CanIgnoreReturnValue
    public static final class a extends e {

        /* renamed from: a, reason: collision with root package name */
        public int f4598a;

        /* renamed from: b, reason: collision with root package name */
        public long f4599b;
        public int c;
        public int d;
        public boolean e;

        public final void a(int i, long j) {
            long j2 = this.f4599b;
            int i2 = this.c;
            long j3 = ((j & 4294967295L) << i2) | j2;
            this.f4599b = j3;
            int i3 = (i * 8) + i2;
            this.c = i3;
            this.d += i;
            if (i3 >= 32) {
                this.f4598a = u.d(this.f4598a, u.e((int) j3));
                this.f4599b >>>= 32;
                this.c -= 32;
            }
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b2) {
            a(1, b2 & 255);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (true) {
                int i4 = i3 + 4;
                if (i4 > i2) {
                    break;
                }
                int i5 = i3 + i;
                HashFunction hashFunction = u.f4596b;
                a(4, Ints.fromBytes(bArr[i5 + 3], bArr[i5 + 2], bArr[i5 + 1], bArr[i5]));
                i3 = i4;
            }
            while (i3 < i2) {
                putByte(bArr[i + i3]);
                i3++;
            }
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            ByteOrder byteOrderOrder = byteBuffer.order();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            while (byteBuffer.remaining() >= 4) {
                putInt(byteBuffer.getInt());
            }
            while (byteBuffer.hasRemaining()) {
                putByte(byteBuffer.get());
            }
            byteBuffer.order(byteOrderOrder);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putInt(int i) {
            a(4, i);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putLong(long j) {
            a(4, (int) j);
            a(4, j >>> 32);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putChar(char c) {
            a(2, c);
            return this;
        }

        @Override // com.google.common.hash.e, com.google.common.hash.PrimitiveSink
        public Hasher putString(CharSequence charSequence, Charset charset) {
            if (Charsets.UTF_8.equals(charset)) {
                int length = charSequence.length();
                int i = 0;
                while (true) {
                    int i2 = i + 4;
                    if (i2 > length) {
                        break;
                    }
                    char cCharAt = charSequence.charAt(i);
                    char cCharAt2 = charSequence.charAt(i + 1);
                    char cCharAt3 = charSequence.charAt(i + 2);
                    char cCharAt4 = charSequence.charAt(i + 3);
                    if (cCharAt >= 128 || cCharAt2 >= 128 || cCharAt3 >= 128 || cCharAt4 >= 128) {
                        break;
                    }
                    a(4, (cCharAt2 << '\b') | cCharAt | (cCharAt3 << 16) | (cCharAt4 << 24));
                    i = i2;
                }
                while (i < length) {
                    char cCharAt5 = charSequence.charAt(i);
                    if (cCharAt5 < 128) {
                        a(1, cCharAt5);
                    } else if (cCharAt5 < 2048) {
                        HashFunction hashFunction = u.f4596b;
                        a(2, (((cCharAt5 & '?') | 128) << 8) | (((cCharAt5 >>> 6) | 960) & 255));
                    } else if (cCharAt5 < 55296 || cCharAt5 > 57343) {
                        a(3, u.a(cCharAt5));
                    } else {
                        int iCodePointAt = Character.codePointAt(charSequence, i);
                        if (iCodePointAt == cCharAt5) {
                            putBytes(charSequence.subSequence(i, length).toString().getBytes(charset));
                            return this;
                        }
                        i++;
                        a(4, u.b(iCodePointAt));
                    }
                    i++;
                }
                return this;
            }
            return super.putString(charSequence, charset);
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            Preconditions.checkState(!this.e);
            this.e = true;
            int iE = this.f4598a ^ u.e((int) this.f4599b);
            this.f4598a = iE;
            return u.c(iE, this.d);
        }
    }
}
