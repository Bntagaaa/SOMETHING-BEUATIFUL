package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ITFReader extends OneDReader {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f5234b = {44, 24, 20, 18, 16, 14, 12, 10, 8, 6};
    public static final int[] c = {1, 1, 1, 1};
    public static final int[] d = {1, 1, 3};
    public static final int[][] e = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: a, reason: collision with root package name */
    public int f5235a = -1;

    public final void d(BitArray bitArray, int i) throws NotFoundException {
        int i2 = this.f5235a * 10;
        for (int i3 = i - 1; i2 > 0 && i3 >= 0 && !bitArray.get(i3); i3--) {
            i2--;
        }
        if (i2 != 0) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        int i2 = 0;
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            int[] iArrC = c(bitArray, nextSet, c);
            int i3 = iArrC[1];
            int i4 = iArrC[0];
            this.f5235a = (i3 - i4) >> 2;
            d(bitArray, i4);
            bitArray.reverse();
            try {
                int size2 = bitArray.getSize();
                int nextSet2 = bitArray.getNextSet(0);
                if (nextSet2 == size2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                int[] iArrC2 = c(bitArray, nextSet2, d);
                d(bitArray, iArrC2[0]);
                int i5 = iArrC2[0];
                iArrC2[0] = bitArray.getSize() - iArrC2[1];
                iArrC2[1] = bitArray.getSize() - i5;
                bitArray.reverse();
                StringBuilder sb = new StringBuilder(20);
                int i6 = iArrC[1];
                int i7 = iArrC2[0];
                int[] iArr = new int[10];
                int[] iArr2 = new int[5];
                int[] iArr3 = new int[5];
                while (i6 < i7) {
                    OneDReader.recordPattern(bitArray, i6, iArr);
                    while (i2 < 5) {
                        int i8 = i2 << 1;
                        iArr2[i2] = iArr[i8];
                        iArr3[i2] = iArr[i8 + 1];
                        i2++;
                    }
                    sb.append((char) (b(iArr2) + 48));
                    sb.append((char) (b(iArr3) + 48));
                    for (int i9 = 0; i9 < 10; i9++) {
                        i6 += iArr[i9];
                    }
                    i2 = 0;
                }
                String string = sb.toString();
                int[] iArr4 = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
                if (iArr4 == null) {
                    iArr4 = f5234b;
                }
                int length = string.length();
                for (int i10 : iArr4) {
                    if (length == i10) {
                        float f = i;
                        return new Result(string, null, new ResultPoint[]{new ResultPoint(iArrC[1], f), new ResultPoint(iArrC2[0], f)}, BarcodeFormat.ITF);
                    }
                }
                throw FormatException.getFormatInstance();
            } catch (Throwable th) {
                bitArray.reverse();
                throw th;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int[] c(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i2 = i;
        boolean z = false;
        int i3 = 0;
        while (i < size) {
            if (bitArray.get(i) ^ z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                int i4 = length - 1;
                if (i3 != i4) {
                    i3++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 204) < 107) {
                        return new int[]{i2, i};
                    }
                    i2 += iArr2[0] + iArr2[1];
                    int i5 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i3--;
                }
                iArr2[i3] = 1;
                z = !z;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int b(int[] iArr) throws NotFoundException {
        int i = 107;
        int i2 = -1;
        for (int i3 = 0; i3 < 10; i3++) {
            int iPatternMatchVariance = OneDReader.patternMatchVariance(iArr, e[i3], 204);
            if (iPatternMatchVariance < i) {
                i2 = i3;
                i = iPatternMatchVariance;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
