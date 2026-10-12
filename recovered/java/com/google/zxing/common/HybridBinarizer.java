package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    public BitMatrix e;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.e;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width >= 40 && height >= 40) {
            byte[] matrix = luminanceSource.getMatrix();
            int i = width >> 3;
            if ((width & 7) != 0) {
                i++;
            }
            int i2 = height >> 3;
            if ((height & 7) != 0) {
                i2++;
            }
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i);
            int i3 = 0;
            while (true) {
                int i4 = 8;
                if (i3 >= i2) {
                    break;
                }
                int i5 = i3 << 3;
                int i6 = height - 8;
                if (i5 > i6) {
                    i5 = i6;
                }
                int i7 = 0;
                while (i7 < i) {
                    int i8 = i7 << 3;
                    int i9 = width - 8;
                    if (i8 > i9) {
                        i8 = i9;
                    }
                    int i10 = (i5 * width) + i8;
                    int i11 = 255;
                    int i12 = 0;
                    int i13 = 0;
                    int i14 = 0;
                    while (i12 < i4) {
                        int i15 = i14;
                        int i16 = 0;
                        while (i16 < i4) {
                            byte[] bArr = matrix;
                            int i17 = matrix[i10 + i16] & 255;
                            i13 += i17;
                            if (i17 < i11) {
                                i11 = i17;
                            }
                            if (i17 > i15) {
                                i15 = i17;
                            }
                            i16++;
                            matrix = bArr;
                            i4 = 8;
                        }
                        byte[] bArr2 = matrix;
                        if (i15 - i11 > 24) {
                            while (true) {
                                i12++;
                                i10 += width;
                                if (i12 < 8) {
                                    int i18 = 0;
                                    for (int i19 = 8; i18 < i19; i19 = 8) {
                                        i13 += bArr2[i10 + i18] & 255;
                                        i18++;
                                    }
                                }
                            }
                        }
                        i12++;
                        i10 += width;
                        i14 = i15;
                        matrix = bArr2;
                        i4 = 8;
                    }
                    byte[] bArr3 = matrix;
                    int i20 = i13 >> 6;
                    if (i14 - i11 <= 24) {
                        i20 = i11 >> 1;
                        if (i3 > 0 && i7 > 0) {
                            int[] iArr2 = iArr[i3 - 1];
                            int i21 = i7 - 1;
                            int i22 = (((iArr[i3][i21] * 2) + iArr2[i7]) + iArr2[i21]) >> 2;
                            if (i11 < i22) {
                                i20 = i22;
                            }
                        }
                    }
                    iArr[i3][i7] = i20;
                    i7++;
                    matrix = bArr3;
                    i4 = 8;
                }
                i3++;
            }
            byte[] bArr4 = matrix;
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            for (int i23 = 0; i23 < i2; i23++) {
                int i24 = i23 << 3;
                int i25 = height - 8;
                if (i24 > i25) {
                    i24 = i25;
                }
                for (int i26 = 0; i26 < i; i26++) {
                    int i27 = i26 << 3;
                    int i28 = width - 8;
                    if (i27 > i28) {
                        i27 = i28;
                    }
                    int i29 = i - 3;
                    if (i26 < 2) {
                        i29 = 2;
                    } else if (i26 <= i29) {
                        i29 = i26;
                    }
                    int i30 = i2 - 3;
                    if (i23 < 2) {
                        i30 = 2;
                    } else if (i23 <= i30) {
                        i30 = i23;
                    }
                    int i31 = -2;
                    int i32 = 0;
                    for (int i33 = 2; i31 <= i33; i33 = 2) {
                        int[] iArr3 = iArr[i30 + i31];
                        i32 = iArr3[i29 - 2] + iArr3[i29 - 1] + iArr3[i29] + iArr3[i29 + 1] + iArr3[i29 + 2] + i32;
                        i31++;
                    }
                    int i34 = i32 / 25;
                    int i35 = (i24 * width) + i27;
                    int i36 = 0;
                    while (true) {
                        if (i36 < 8) {
                            int i37 = 0;
                            for (int i38 = 8; i37 < i38; i38 = 8) {
                                int i39 = width;
                                if ((bArr4[i35 + i37] & 255) <= i34) {
                                    bitMatrix2.set(i27 + i37, i24 + i36);
                                }
                                i37++;
                                width = i39;
                            }
                            i36++;
                            i35 += width;
                        }
                    }
                }
            }
            this.e = bitMatrix2;
        } else {
            this.e = super.getBlackMatrix();
        }
        return this.e;
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }
}
