package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@Immutable
/* loaded from: classes.dex */
final class s extends d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final MessageDigest f4591a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4592b;
    public final boolean c;
    public final String d;

    public static final class c implements Serializable {
    }

    public s(String str, String str2) throws NoSuchAlgorithmException, CloneNotSupportedException {
        boolean z;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            this.f4591a = messageDigest;
            this.f4592b = messageDigest.getDigestLength();
            this.d = (String) Preconditions.checkNotNull(str2);
            try {
                messageDigest.clone();
                z = true;
            } catch (CloneNotSupportedException unused) {
                z = false;
            }
            this.c = z;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.f4592b * 8;
    }

    public String toString() {
        return this.d;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        boolean z = this.c;
        int i = this.f4592b;
        MessageDigest messageDigest = this.f4591a;
        if (z) {
            try {
                return new b((MessageDigest) messageDigest.clone(), i);
            } catch (CloneNotSupportedException unused) {
            }
        }
        try {
            return new b(MessageDigest.getInstance(messageDigest.getAlgorithm()), i);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static final class b extends com.google.common.hash.a {

        /* renamed from: b, reason: collision with root package name */
        public final MessageDigest f4593b;
        public final int c;
        public boolean d;

        public b(MessageDigest messageDigest, int i) {
            this.f4593b = messageDigest;
            this.c = i;
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            Preconditions.checkState(!this.d, "Cannot re-use a Hasher after calling hash() on it");
            this.d = true;
            MessageDigest messageDigest = this.f4593b;
            int digestLength = messageDigest.getDigestLength();
            int i = this.c;
            if (i == digestLength) {
                byte[] bArrDigest = messageDigest.digest();
                char[] cArr = HashCode.f4550a;
                return new HashCode.a(bArrDigest);
            }
            byte[] bArrCopyOf = Arrays.copyOf(messageDigest.digest(), i);
            char[] cArr2 = HashCode.f4550a;
            return new HashCode.a(bArrCopyOf);
        }

        @Override // com.google.common.hash.a
        public void update(byte b2) {
            Preconditions.checkState(!this.d, "Cannot re-use a Hasher after calling hash() on it");
            this.f4593b.update(b2);
        }

        @Override // com.google.common.hash.a
        public void update(ByteBuffer byteBuffer) {
            Preconditions.checkState(!this.d, "Cannot re-use a Hasher after calling hash() on it");
            this.f4593b.update(byteBuffer);
        }

        @Override // com.google.common.hash.a
        public void update(byte[] bArr, int i, int i2) {
            Preconditions.checkState(!this.d, "Cannot re-use a Hasher after calling hash() on it");
            this.f4593b.update(bArr, i, i2);
        }
    }
}
