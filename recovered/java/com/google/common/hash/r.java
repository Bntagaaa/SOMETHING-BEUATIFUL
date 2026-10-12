package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

@Immutable
/* loaded from: classes.dex */
final class r extends d {

    /* renamed from: a, reason: collision with root package name */
    public final Mac f4588a;

    /* renamed from: b, reason: collision with root package name */
    public final Key f4589b;
    public final String c;
    public final int d;
    public final boolean e;

    public r(String str, Key key, String str2) throws NoSuchAlgorithmException, InvalidKeyException, CloneNotSupportedException {
        boolean z;
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(key);
            this.f4588a = mac;
            this.f4589b = (Key) Preconditions.checkNotNull(key);
            this.c = (String) Preconditions.checkNotNull(str2);
            this.d = mac.getMacLength() * 8;
            try {
                mac.clone();
                z = true;
            } catch (CloneNotSupportedException unused) {
                z = false;
            }
            this.e = z;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.d;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() throws NoSuchAlgorithmException, InvalidKeyException {
        boolean z = this.e;
        Mac mac = this.f4588a;
        if (z) {
            try {
                return new b((Mac) mac.clone());
            } catch (CloneNotSupportedException unused) {
            }
        }
        String algorithm = mac.getAlgorithm();
        Key key = this.f4589b;
        try {
            Mac mac2 = Mac.getInstance(algorithm);
            mac2.init(key);
            return new b(mac2);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public String toString() {
        return this.c;
    }

    public static final class b extends com.google.common.hash.a {

        /* renamed from: b, reason: collision with root package name */
        public final Mac f4590b;
        public boolean c;

        public b(Mac mac) {
            this.f4590b = mac;
        }

        @Override // com.google.common.hash.a
        public void update(byte b2) throws IllegalStateException {
            b();
            this.f4590b.update(b2);
        }

        @Override // com.google.common.hash.a
        public void update(byte[] bArr) throws IllegalStateException {
            b();
            this.f4590b.update(bArr);
        }

        @Override // com.google.common.hash.a
        public void update(byte[] bArr, int i, int i2) throws IllegalStateException {
            b();
            this.f4590b.update(bArr, i, i2);
        }

        @Override // com.google.common.hash.a
        public void update(ByteBuffer byteBuffer) {
            b();
            Preconditions.checkNotNull(byteBuffer);
            this.f4590b.update(byteBuffer);
        }

        public final void b() {
            Preconditions.checkState(!this.c, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() throws IllegalStateException {
            b();
            this.c = true;
            byte[] bArrDoFinal = this.f4590b.doFinal();
            char[] cArr = HashCode.f4550a;
            return new HashCode.a(bArrDoFinal);
        }
    }
}
