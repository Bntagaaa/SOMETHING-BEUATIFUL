package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;

@Immutable
/* loaded from: classes.dex */
abstract class c extends d {

    /* renamed from: a, reason: collision with root package name */
    public final HashFunction[] f4568a;

    public abstract HashCode a(Hasher[] hasherArr);

    public c(HashFunction... hashFunctionArr) {
        for (HashFunction hashFunction : hashFunctionArr) {
            Preconditions.checkNotNull(hashFunction);
        }
        this.f4568a = hashFunctionArr;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        HashFunction[] hashFunctionArr = this.f4568a;
        int length = hashFunctionArr.length;
        Hasher[] hasherArr = new Hasher[length];
        for (int i = 0; i < length; i++) {
            hasherArr[i] = hashFunctionArr[i].newHasher();
        }
        return new b(this, hasherArr);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        Preconditions.checkArgument(i >= 0);
        HashFunction[] hashFunctionArr = this.f4568a;
        int length = hashFunctionArr.length;
        Hasher[] hasherArr = new Hasher[length];
        for (int i2 = 0; i2 < length; i2++) {
            hasherArr[i2] = hashFunctionArr[i2].newHasher(i);
        }
        return new b(this, hasherArr);
    }
}
