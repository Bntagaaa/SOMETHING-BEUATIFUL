package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.Hashing;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.zip.Checksum;

@Immutable
/* loaded from: classes.dex */
final class i extends d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final l f4577a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4578b;
    public final String c;

    public i(Hashing.b bVar, String str) {
        this.f4577a = (l) Preconditions.checkNotNull(bVar);
        Preconditions.checkArgument(true, "bits (%s) must be either 32 or 64", 32);
        this.f4578b = 32;
        this.c = (String) Preconditions.checkNotNull(str);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.f4578b;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new b((Checksum) this.f4577a.get());
    }

    public String toString() {
        return this.c;
    }

    public final class b extends com.google.common.hash.a {

        /* renamed from: b, reason: collision with root package name */
        public final Checksum f4579b;

        public b(Checksum checksum) {
            this.f4579b = (Checksum) Preconditions.checkNotNull(checksum);
        }

        @Override // com.google.common.hash.a
        public void update(byte b2) {
            this.f4579b.update(b2);
        }

        @Override // com.google.common.hash.a
        public void update(byte[] bArr, int i, int i2) {
            this.f4579b.update(bArr, i, i2);
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            long value = this.f4579b.getValue();
            if (i.this.f4578b == 32) {
                return HashCode.fromInt((int) value);
            }
            return HashCode.fromLong(value);
        }
    }
}
