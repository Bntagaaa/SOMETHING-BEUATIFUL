package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.EnumMap;

/* loaded from: classes2.dex */
final class d {
    public static final int[] c = {1, 1, 2};

    /* renamed from: a, reason: collision with root package name */
    public final b f5250a = new b();

    /* renamed from: b, reason: collision with root package name */
    public final c f5251b = new c();

    public final Result a(int i, int i2, BitArray bitArray) throws NotFoundException {
        EnumMap enumMap;
        int i3 = 0;
        int[] iArrD = UPCEANReader.d(bitArray, i2, false, c, new int[3]);
        try {
            return this.f5251b.a(bitArray, i, iArrD);
        } catch (ReaderException unused) {
            b bVar = this.f5250a;
            StringBuilder sb = bVar.f5247b;
            sb.setLength(0);
            int[] iArr = bVar.f5246a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            int size = bitArray.getSize();
            int nextUnset = iArrD[1];
            int i4 = 0;
            int i5 = 0;
            while (i4 < 2 && nextUnset < size) {
                int iC = UPCEANReader.c(bitArray, iArr, nextUnset, UPCEANReader.f5241g);
                sb.append((char) ((iC % 10) + 48));
                int length = iArr.length;
                while (i3 < length) {
                    nextUnset += iArr[i3];
                    i3++;
                }
                if (iC >= 10) {
                    i5 |= 1 << (1 - i4);
                }
                if (i4 != 1) {
                    nextUnset = bitArray.getNextUnset(bitArray.getNextSet(nextUnset));
                }
                i4++;
                i3 = 0;
            }
            if (sb.length() != 2) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (Integer.parseInt(sb.toString()) % 4 == i5) {
                String string = sb.toString();
                if (string.length() != 2) {
                    enumMap = null;
                } else {
                    enumMap = new EnumMap(ResultMetadataType.class);
                    enumMap.put((EnumMap) ResultMetadataType.ISSUE_NUMBER, (ResultMetadataType) Integer.valueOf(string));
                }
                float f = i;
                Result result = new Result(string, null, new ResultPoint[]{new ResultPoint((iArrD[0] + iArrD[1]) / 2.0f, f), new ResultPoint(nextUnset, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
                if (enumMap != null) {
                    result.putAllMetadata(enumMap);
                }
                return result;
            }
            throw NotFoundException.getNotFoundInstance();
        }
    }
}
