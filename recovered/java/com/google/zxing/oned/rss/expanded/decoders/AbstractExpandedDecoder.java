package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes2.dex */
public abstract class AbstractExpandedDecoder {

    /* renamed from: a, reason: collision with root package name */
    public final BitArray f5262a;

    /* renamed from: b, reason: collision with root package name */
    public final r f5263b;

    public abstract String parseInformation() throws NotFoundException;

    public AbstractExpandedDecoder(BitArray bitArray) {
        this.f5262a = bitArray;
        this.f5263b = new r(bitArray);
    }

    public final BitArray getInformation() {
        return this.f5262a;
    }

    public final r getGeneralDecoder() {
        return this.f5263b;
    }

    public static AbstractExpandedDecoder createDecoder(BitArray bitArray) {
        if (bitArray.get(1)) {
            return new g(bitArray);
        }
        if (!bitArray.get(2)) {
            return new j(bitArray);
        }
        int iC = r.c(1, 4, bitArray);
        if (iC == 4) {
            return new a(bitArray);
        }
        if (iC == 5) {
            return new b(bitArray);
        }
        int iC2 = r.c(1, 5, bitArray);
        if (iC2 == 12) {
            return new c(bitArray);
        }
        if (iC2 == 13) {
            return new d(bitArray);
        }
        switch (r.c(1, 7, bitArray)) {
            case 56:
                return new e(bitArray, "310", "11");
            case 57:
                return new e(bitArray, "320", "11");
            case 58:
                return new e(bitArray, "310", "13");
            case 59:
                return new e(bitArray, "320", "13");
            case 60:
                return new e(bitArray, "310", "15");
            case 61:
                return new e(bitArray, "320", "15");
            case 62:
                return new e(bitArray, "310", "17");
            case 63:
                return new e(bitArray, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: " + bitArray);
        }
    }
}
