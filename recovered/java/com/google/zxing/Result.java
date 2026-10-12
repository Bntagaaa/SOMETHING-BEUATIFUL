package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class Result {

    /* renamed from: a, reason: collision with root package name */
    public final String f5084a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5085b;
    public ResultPoint[] c;
    public final BarcodeFormat d;
    public Map e;
    public final long f;

    public Result(String str, byte[] bArr, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, resultPointArr, barcodeFormat, System.currentTimeMillis());
    }

    public Result(String str, byte[] bArr, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat, long j) {
        this.f5084a = str;
        this.f5085b = bArr;
        this.c = resultPointArr;
        this.d = barcodeFormat;
        this.e = null;
        this.f = j;
    }

    public String getText() {
        return this.f5084a;
    }

    public byte[] getRawBytes() {
        return this.f5085b;
    }

    public ResultPoint[] getResultPoints() {
        return this.c;
    }

    public BarcodeFormat getBarcodeFormat() {
        return this.d;
    }

    public Map<ResultMetadataType, Object> getResultMetadata() {
        return this.e;
    }

    public void putMetadata(ResultMetadataType resultMetadataType, Object obj) {
        if (this.e == null) {
            this.e = new EnumMap(ResultMetadataType.class);
        }
        this.e.put(resultMetadataType, obj);
    }

    public void putAllMetadata(Map<ResultMetadataType, Object> map) {
        if (map != null) {
            Map map2 = this.e;
            if (map2 == null) {
                this.e = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public void addResultPoints(ResultPoint[] resultPointArr) {
        ResultPoint[] resultPointArr2 = this.c;
        if (resultPointArr2 == null) {
            this.c = resultPointArr;
            return;
        }
        if (resultPointArr == null || resultPointArr.length <= 0) {
            return;
        }
        ResultPoint[] resultPointArr3 = new ResultPoint[resultPointArr2.length + resultPointArr.length];
        System.arraycopy(resultPointArr2, 0, resultPointArr3, 0, resultPointArr2.length);
        System.arraycopy(resultPointArr, 0, resultPointArr3, resultPointArr2.length, resultPointArr.length);
        this.c = resultPointArr3;
    }

    public long getTimestamp() {
        return this.f;
    }

    public String toString() {
        return this.f5084a;
    }
}
