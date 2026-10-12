package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
public final class WhiteRectangleDetector {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5182a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5183b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5184g;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this.f5182a = bitMatrix;
        int height = bitMatrix.getHeight();
        this.f5183b = height;
        int width = bitMatrix.getWidth();
        this.c = width;
        int i = (width - 30) >> 1;
        this.d = i;
        int i2 = (width + 30) >> 1;
        this.e = i2;
        int i3 = (height - 30) >> 1;
        this.f5184g = i3;
        int i4 = (height + 30) >> 1;
        this.f = i4;
        if (i3 < 0 || i < 0 || i4 >= height || i2 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i, int i2, int i3) throws NotFoundException {
        this.f5182a = bitMatrix;
        int height = bitMatrix.getHeight();
        this.f5183b = height;
        int width = bitMatrix.getWidth();
        this.c = width;
        int i4 = i >> 1;
        int i5 = i2 - i4;
        this.d = i5;
        int i6 = i2 + i4;
        this.e = i6;
        int i7 = i3 - i4;
        this.f5184g = i7;
        int i8 = i3 + i4;
        this.f = i8;
        if (i7 < 0 || i5 < 0 || i8 >= height || i6 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i;
        boolean z;
        char c;
        char c2;
        char c3;
        int i2;
        int i3 = this.d;
        int i4 = this.e;
        int i5 = this.f5184g;
        int i6 = this.f;
        boolean z2 = true;
        boolean z3 = false;
        while (true) {
            i = this.c;
            if (!z2) {
                z = false;
                break;
            }
            boolean zA = true;
            boolean z4 = false;
            while (zA && i4 < i) {
                zA = a(i5, i6, i4, false);
                if (zA) {
                    i4++;
                    z4 = true;
                }
            }
            if (i4 >= i) {
                break;
            }
            boolean zA2 = true;
            while (true) {
                i2 = this.f5183b;
                if (!zA2 || i6 >= i2) {
                    break;
                }
                zA2 = a(i3, i4, i6, true);
                if (zA2) {
                    i6++;
                    z4 = true;
                }
            }
            if (i6 >= i2) {
                break;
            }
            boolean zA3 = true;
            while (zA3 && i3 >= 0) {
                zA3 = a(i5, i6, i3, false);
                if (zA3) {
                    i3--;
                    z4 = true;
                }
            }
            if (i3 < 0) {
                break;
            }
            z2 = z4;
            boolean zA4 = true;
            while (zA4 && i5 >= 0) {
                zA4 = a(i3, i4, i5, true);
                if (zA4) {
                    i5--;
                    z2 = true;
                }
            }
            if (i5 < 0) {
                break;
            }
            if (z2) {
                z3 = true;
            }
        }
        z = true;
        if (z || !z3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i7 = i4 - i3;
        ResultPoint resultPointB = null;
        ResultPoint resultPointB2 = null;
        int i8 = 1;
        while (true) {
            if (i8 >= i7) {
                c = 3;
                c2 = 2;
                break;
            }
            c = 3;
            c2 = 2;
            resultPointB2 = b(i3, i6 - i8, i3 + i8, i6);
            if (resultPointB2 != null) {
                break;
            }
            i8++;
        }
        if (resultPointB2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint resultPointB3 = null;
        int i9 = 1;
        while (true) {
            if (i9 >= i7) {
                c3 = 0;
                break;
            }
            c3 = 0;
            resultPointB3 = b(i3, i5 + i9, i3 + i9, i5);
            if (resultPointB3 != null) {
                break;
            }
            i9++;
        }
        if (resultPointB3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint resultPointB4 = null;
        for (int i10 = 1; i10 < i7; i10++) {
            resultPointB4 = b(i4, i5 + i10, i4 - i10, i5);
            if (resultPointB4 != null) {
                break;
            }
        }
        if (resultPointB4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i11 = 1; i11 < i7; i11++) {
            resultPointB = b(i4, i6 - i11, i4 - i11, i6);
            if (resultPointB != null) {
                break;
            }
        }
        if (resultPointB == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float x = resultPointB.getX();
        float y = resultPointB.getY();
        float x2 = resultPointB2.getX();
        float y2 = resultPointB2.getY();
        float x3 = resultPointB4.getX();
        float y3 = resultPointB4.getY();
        float x4 = resultPointB3.getX();
        float y4 = resultPointB3.getY();
        if (x < i / 2) {
            ResultPoint resultPoint = new ResultPoint(x4 - 1.0f, y4 + 1.0f);
            ResultPoint resultPoint2 = new ResultPoint(x2 + 1.0f, y2 + 1.0f);
            ResultPoint resultPoint3 = new ResultPoint(x3 - 1.0f, y3 - 1.0f);
            ResultPoint resultPoint4 = new ResultPoint(x + 1.0f, y - 1.0f);
            ResultPoint[] resultPointArr = new ResultPoint[4];
            resultPointArr[c3] = resultPoint;
            resultPointArr[1] = resultPoint2;
            resultPointArr[c2] = resultPoint3;
            resultPointArr[c] = resultPoint4;
            return resultPointArr;
        }
        ResultPoint resultPoint5 = new ResultPoint(x4 + 1.0f, y4 + 1.0f);
        ResultPoint resultPoint6 = new ResultPoint(x2 + 1.0f, y2 - 1.0f);
        ResultPoint resultPoint7 = new ResultPoint(x3 - 1.0f, y3 + 1.0f);
        ResultPoint resultPoint8 = new ResultPoint(x - 1.0f, y - 1.0f);
        ResultPoint[] resultPointArr2 = new ResultPoint[4];
        resultPointArr2[c3] = resultPoint5;
        resultPointArr2[1] = resultPoint6;
        resultPointArr2[c2] = resultPoint7;
        resultPointArr2[c] = resultPoint8;
        return resultPointArr2;
    }

    public final ResultPoint b(float f, float f2, float f3, float f4) {
        int iRound = MathUtils.round(MathUtils.distance(f, f2, f3, f4));
        float f5 = iRound;
        float f6 = (f3 - f) / f5;
        float f7 = (f4 - f2) / f5;
        for (int i = 0; i < iRound; i++) {
            float f8 = i;
            int iRound2 = MathUtils.round((f8 * f6) + f);
            int iRound3 = MathUtils.round((f8 * f7) + f2);
            if (this.f5182a.get(iRound2, iRound3)) {
                return new ResultPoint(iRound2, iRound3);
            }
        }
        return null;
    }

    public final boolean a(int i, int i2, int i3, boolean z) {
        BitMatrix bitMatrix = this.f5182a;
        if (z) {
            while (i <= i2) {
                if (bitMatrix.get(i, i3)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        while (i <= i2) {
            if (bitMatrix.get(i3, i)) {
                return true;
            }
            i++;
        }
        return false;
    }
}
