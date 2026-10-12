package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes2.dex */
public final class EAN8Reader extends UPCEANReader {
    public final int[] h = new int[4];

    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[][] iArr2;
        int[] iArr3 = this.h;
        iArr3[0] = 0;
        iArr3[1] = 0;
        iArr3[2] = 0;
        iArr3[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        while (true) {
            iArr2 = UPCEANReader.f;
            if (i2 >= 4 || i >= size) {
                break;
            }
            sb.append((char) (UPCEANReader.c(bitArray, iArr3, i, iArr2) + 48));
            for (int i3 : iArr3) {
                i += i3;
            }
            i2++;
        }
        int i4 = UPCEANReader.d(bitArray, i, true, UPCEANReader.e, new int[5])[1];
        for (int i5 = 0; i5 < 4 && i4 < size; i5++) {
            sb.append((char) (UPCEANReader.c(bitArray, iArr3, i4, iArr2) + 48));
            for (int i6 : iArr3) {
                i4 += i6;
            }
        }
        return i4;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public final BarcodeFormat f() {
        return BarcodeFormat.EAN_8;
    }
}
