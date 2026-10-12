package com.google.zxing.common;

import java.util.List;

/* loaded from: classes.dex */
public final class DecoderResult {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5170a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5171b;
    public final List c;
    public final String d;

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2) {
        this.f5170a = bArr;
        this.f5171b = str;
        this.c = list;
        this.d = str2;
    }

    public byte[] getRawBytes() {
        return this.f5170a;
    }

    public String getText() {
        return this.f5171b;
    }

    public List<byte[]> getByteSegments() {
        return this.c;
    }

    public String getECLevel() {
        return this.d;
    }
}
