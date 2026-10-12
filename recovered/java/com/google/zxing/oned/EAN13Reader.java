package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes2.dex */
public final class EAN13Reader extends UPCEANReader {
    public static final int[] i = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};
    public final int[] h = new int[4];

    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i2 = iArr[1];
        int i3 = 0;
        for (int i4 = 0; i4 < 6 && i2 < size; i4++) {
            int iC = UPCEANReader.c(bitArray, iArr2, i2, UPCEANReader.f5241g);
            sb.append((char) ((iC % 10) + 48));
            for (int i5 : iArr2) {
                i2 += i5;
            }
            if (iC >= 10) {
                i3 |= 1 << (5 - i4);
            }
        }
        for (int i6 = 0; i6 < 10; i6++) {
            if (i3 == i[i6]) {
                sb.insert(0, (char) (i6 + 48));
                int i7 = UPCEANReader.d(bitArray, i2, true, UPCEANReader.e, new int[5])[1];
                for (int i8 = 0; i8 < 6 && i7 < size; i8++) {
                    sb.append((char) (UPCEANReader.c(bitArray, iArr2, i7, UPCEANReader.f) + 48));
                    for (int i9 : iArr2) {
                        i7 += i9;
                    }
                }
                return i7;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public final BarcodeFormat f() {
        return BarcodeFormat.EAN_13;
    }
}
