package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes2.dex */
public final class Detector {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f5295b = {8, 1, 1, 1, 1, 1, 1, 3};
    public static final int[] c = {3, 1, 1, 1, 1, 1, 1, 8};
    public static final int[] d = {7, 1, 1, 3, 1, 1, 1, 2, 1};
    public static final int[] e = {1, 2, 1, 1, 1, 3, 1, 1, 7};

    /* renamed from: a, reason: collision with root package name */
    public final BinaryBitmap f5296a;

    public Detector(BinaryBitmap binaryBitmap) {
        this.f5296a = binaryBitmap;
    }

    public DetectorResult detect() throws NotFoundException {
        return detect(null);
    }

    public DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException {
        int[] iArr;
        ResultPoint[] resultPointArr;
        int i;
        char c2;
        char c3;
        boolean z;
        ResultPoint[] resultPointArr2;
        int[] iArr2;
        ResultPoint[] resultPointArr3;
        boolean z2;
        BitMatrix blackMatrix = this.f5296a.getBlackMatrix();
        boolean z3 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int height = blackMatrix.getHeight();
        int width = blackMatrix.getWidth();
        ResultPoint[] resultPointArr4 = new ResultPoint[8];
        int[] iArr3 = new int[8];
        int iMax = Math.max(1, height >> (z3 ? 9 : 7));
        int i2 = 0;
        while (true) {
            iArr = f5295b;
            if (i2 >= height) {
                resultPointArr = resultPointArr4;
                i = 9;
                c2 = 3;
                c3 = 2;
                z = false;
                break;
            }
            resultPointArr = resultPointArr4;
            i = 9;
            c2 = 3;
            if (b(blackMatrix, 0, i2, width, false, iArr, iArr3) != null) {
                c3 = 2;
                float f = i2;
                resultPointArr[0] = new ResultPoint(r7[0], f);
                resultPointArr[4] = new ResultPoint(r7[1], f);
                z = true;
                break;
            }
            i2 += iMax;
            resultPointArr4 = resultPointArr;
        }
        if (z) {
            int i3 = height - 1;
            while (true) {
                if (i3 <= 0) {
                    z = false;
                    break;
                }
                if (b(blackMatrix, 0, i3, width, false, iArr, iArr3) != null) {
                    float f2 = i3;
                    resultPointArr[1] = new ResultPoint(r2[0], f2);
                    resultPointArr[5] = new ResultPoint(r2[1], f2);
                    z = true;
                    break;
                }
                i3 -= iMax;
            }
        }
        int[] iArr4 = new int[i];
        int[] iArr5 = d;
        if (z) {
            int i4 = 0;
            while (true) {
                if (i4 >= height) {
                    z = false;
                    break;
                }
                if (b(blackMatrix, 0, i4, width, false, iArr5, iArr4) != null) {
                    float f3 = i4;
                    resultPointArr[c3] = new ResultPoint(r2[1], f3);
                    resultPointArr[6] = new ResultPoint(r2[0], f3);
                    z = true;
                    break;
                }
                i4 += iMax;
            }
        }
        if (z) {
            int i5 = height - 1;
            while (true) {
                if (i5 <= 0) {
                    z = false;
                    break;
                }
                if (b(blackMatrix, 0, i5, width, false, iArr5, iArr4) != null) {
                    float f4 = i5;
                    resultPointArr[c2] = new ResultPoint(r2[1], f4);
                    resultPointArr[7] = new ResultPoint(r2[0], f4);
                    z = true;
                    break;
                }
                i5 -= iMax;
            }
        }
        ResultPoint[] resultPointArr5 = z ? resultPointArr : null;
        if (resultPointArr5 != null) {
            a(resultPointArr5, false);
            resultPointArr2 = resultPointArr5;
        } else {
            int height2 = blackMatrix.getHeight();
            int width2 = blackMatrix.getWidth() >> 1;
            ResultPoint[] resultPointArr6 = new ResultPoint[8];
            int[] iArr6 = new int[8];
            int iMax2 = Math.max(1, height2 >> (z3 ? 9 : 7));
            int i6 = height2 - 1;
            ResultPoint[] resultPointArr7 = resultPointArr6;
            int i7 = i6;
            while (true) {
                iArr2 = c;
                if (i7 <= 0) {
                    resultPointArr3 = resultPointArr7;
                    z2 = false;
                    break;
                }
                resultPointArr3 = resultPointArr7;
                if (b(blackMatrix, width2, i7, width2, true, iArr2, iArr6) != null) {
                    float f5 = i7;
                    resultPointArr3[0] = new ResultPoint(r9[1], f5);
                    resultPointArr3[4] = new ResultPoint(r9[0], f5);
                    z2 = true;
                    break;
                }
                i7 -= iMax2;
                resultPointArr7 = resultPointArr3;
            }
            if (z2) {
                int i8 = 0;
                while (true) {
                    if (i8 >= height2) {
                        z2 = false;
                        break;
                    }
                    if (b(blackMatrix, width2, i8, width2, true, iArr2, iArr6) != null) {
                        float f6 = i8;
                        resultPointArr3[1] = new ResultPoint(r9[1], f6);
                        resultPointArr3[5] = new ResultPoint(r9[0], f6);
                        z2 = true;
                        break;
                    }
                    i8 += iMax2;
                }
            }
            int[] iArr7 = new int[i];
            int[] iArr8 = e;
            if (z2) {
                int i9 = i6;
                while (true) {
                    if (i9 <= 0) {
                        z2 = false;
                        break;
                    }
                    int i10 = width2;
                    width2 = i10;
                    if (b(blackMatrix, 0, i9, i10, false, iArr8, iArr7) != null) {
                        float f7 = i9;
                        resultPointArr3[c3] = new ResultPoint(r1[0], f7);
                        resultPointArr3[6] = new ResultPoint(r1[1], f7);
                        z2 = true;
                        break;
                    }
                    i9 -= iMax2;
                }
            }
            if (z2) {
                int i11 = 0;
                while (true) {
                    if (i11 >= height2) {
                        z2 = false;
                        break;
                    }
                    int i12 = width2;
                    width2 = i12;
                    if (b(blackMatrix, 0, i11, i12, false, iArr8, iArr7) != null) {
                        float f8 = i11;
                        resultPointArr3[c2] = new ResultPoint(r1[0], f8);
                        resultPointArr3[7] = new ResultPoint(r1[1], f8);
                        z2 = true;
                        break;
                    }
                    i11 += iMax2;
                }
            }
            ResultPoint[] resultPointArr8 = z2 ? resultPointArr3 : null;
            if (resultPointArr8 != null) {
                a(resultPointArr8, true);
            }
            resultPointArr2 = resultPointArr8;
        }
        if (resultPointArr2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fDistance = (((ResultPoint.distance(resultPointArr2[7], resultPointArr2[c2]) + ResultPoint.distance(resultPointArr2[6], resultPointArr2[c3])) / 36.0f) + ((ResultPoint.distance(resultPointArr2[1], resultPointArr2[5]) + ResultPoint.distance(resultPointArr2[0], resultPointArr2[4])) / 34.0f)) / 2.0f;
        if (fDistance < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iRound = ((((MathUtils.round(ResultPoint.distance(resultPointArr2[5], resultPointArr2[7]) / fDistance) + MathUtils.round(ResultPoint.distance(resultPointArr2[4], resultPointArr2[6]) / fDistance)) >> 1) + 8) / 17) * 17;
        if (iRound < 1) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint resultPoint = resultPointArr2[4];
        int iRound2 = (MathUtils.round(ResultPoint.distance(resultPointArr2[6], resultPointArr2[7]) / fDistance) + MathUtils.round(ResultPoint.distance(resultPoint, resultPointArr2[5]) / fDistance)) >> 1;
        int i13 = iRound2 > iRound ? iRound2 : iRound;
        ResultPoint resultPoint2 = resultPointArr2[4];
        ResultPoint resultPoint3 = resultPointArr2[5];
        ResultPoint resultPoint4 = resultPointArr2[6];
        ResultPoint resultPoint5 = resultPointArr2[7];
        float f9 = iRound;
        float f10 = i13;
        BitMatrix bitMatrixSampleGrid = GridSampler.getInstance().sampleGrid(blackMatrix, iRound, i13, 0.0f, 0.0f, f9, 0.0f, f9, f10, 0.0f, f10, resultPoint2.getX(), resultPoint2.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint5.getX(), resultPoint5.getY(), resultPoint3.getX(), resultPoint3.getY());
        ResultPoint resultPoint6 = resultPointArr2[5];
        ResultPoint resultPoint7 = resultPointArr2[4];
        ResultPoint resultPoint8 = resultPointArr2[6];
        ResultPoint resultPoint9 = resultPointArr2[7];
        ResultPoint[] resultPointArr9 = new ResultPoint[4];
        resultPointArr9[0] = resultPoint6;
        resultPointArr9[1] = resultPoint7;
        resultPointArr9[c3] = resultPoint8;
        resultPointArr9[c2] = resultPoint9;
        return new DetectorResult(bitMatrixSampleGrid, resultPointArr9);
    }

    public static void a(ResultPoint[] resultPointArr, boolean z) {
        float x = resultPointArr[0].getX();
        float y = resultPointArr[0].getY();
        float x2 = resultPointArr[2].getX();
        float y2 = resultPointArr[2].getY();
        float x3 = resultPointArr[4].getX();
        float y3 = resultPointArr[4].getY();
        float x4 = resultPointArr[6].getX();
        float y4 = resultPointArr[6].getY();
        float f = y3 - y4;
        if (z) {
            f = -f;
        }
        if (f > 3.0f) {
            float f2 = x4 - x;
            float f3 = y4 - y;
            float f4 = (x3 - x) * f2;
            float f5 = f4 / ((f3 * f3) + (f2 * f2));
            resultPointArr[4] = new ResultPoint((f2 * f5) + x, (f5 * f3) + y);
        } else if ((-f) > 3.0f) {
            float f6 = x2 - x3;
            float f7 = y2 - y3;
            float f8 = ((x2 - x4) * f6) / ((f7 * f7) + (f6 * f6));
            resultPointArr[6] = new ResultPoint(x2 - (f6 * f8), y2 - (f8 * f7));
        }
        float x5 = resultPointArr[1].getX();
        float y5 = resultPointArr[1].getY();
        float x6 = resultPointArr[3].getX();
        float y6 = resultPointArr[3].getY();
        float x7 = resultPointArr[5].getX();
        float y7 = resultPointArr[5].getY();
        float x8 = resultPointArr[7].getX();
        float y8 = resultPointArr[7].getY();
        float f9 = y8 - y7;
        if (z) {
            f9 = -f9;
        }
        if (f9 > 3.0f) {
            float f10 = x8 - x5;
            float f11 = y8 - y5;
            float f12 = (x7 - x5) * f10;
            float f13 = f12 / ((f11 * f11) + (f10 * f10));
            resultPointArr[5] = new ResultPoint((f10 * f13) + x5, (f13 * f11) + y5);
            return;
        }
        if ((-f9) > 3.0f) {
            float f14 = x6 - x7;
            float f15 = y6 - y7;
            float f16 = ((x6 - x8) * f14) / ((f15 * f15) + (f14 * f14));
            resultPointArr[7] = new ResultPoint(x6 - (f14 * f16), y6 - (f16 * f15));
        }
    }

    public static int[] b(BitMatrix bitMatrix, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        int i4;
        char c2;
        int i5;
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int length = iArr.length;
        int i6 = i;
        int i7 = i6;
        boolean z2 = z;
        int i8 = 0;
        while (i6 < i + i3) {
            if (bitMatrix.get(i6, i2) ^ z2) {
                iArr2[i8] = iArr2[i8] + 1;
            } else {
                int i9 = length - 1;
                if (i8 == i9) {
                    int length2 = iArr2.length;
                    int i10 = 0;
                    int i11 = 0;
                    for (int i12 = 0; i12 < length2; i12++) {
                        i10 += iArr2[i12];
                        i11 += iArr[i12];
                    }
                    if (i10 >= i11) {
                        int i13 = (i10 << 8) / i11;
                        int i14 = (204 * i13) >> 8;
                        i4 = 1;
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            if (i15 < length2) {
                                int i17 = iArr2[i15] << 8;
                                c2 = 0;
                                int i18 = iArr[i15] * i13;
                                int i19 = i17 > i18 ? i17 - i18 : i18 - i17;
                                if (i19 > i14) {
                                    i5 = Integer.MAX_VALUE;
                                    break;
                                }
                                i16 += i19;
                                i15++;
                            } else {
                                c2 = 0;
                                i5 = i16 / i10;
                                break;
                            }
                        }
                    } else {
                        i4 = 1;
                        i5 = Integer.MAX_VALUE;
                        c2 = 0;
                    }
                    if (i5 < 107) {
                        return new int[]{i7, i6};
                    }
                    i7 += iArr2[c2] + iArr2[i4];
                    int i20 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i20);
                    iArr2[i20] = 0;
                    iArr2[i9] = 0;
                    i8--;
                } else {
                    i4 = 1;
                    i8++;
                }
                iArr2[i8] = i4;
                z2 = !z2;
            }
            i6++;
        }
        return null;
    }
}
