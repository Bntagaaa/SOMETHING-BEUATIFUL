package com.google.zxing.qrcode.detector;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class Detector {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5331a;

    /* renamed from: b, reason: collision with root package name */
    public ResultPointCallback f5332b;

    public Detector(BitMatrix bitMatrix) {
        this.f5331a = bitMatrix;
    }

    public final BitMatrix getImage() {
        return this.f5331a;
    }

    public final ResultPointCallback getResultPointCallback() {
        return this.f5332b;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.zxing.common.DetectorResult detect(java.util.Map<com.google.zxing.DecodeHintType, ?> r19) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.Detector.detect(java.util.Map):com.google.zxing.common.DetectorResult");
    }

    public final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        AlignmentPattern alignmentPatternFindAlignmentInRegion;
        float x;
        float y;
        float f;
        ResultPoint[] resultPointArr;
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float fCalculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (fCalculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iRound = (MathUtils.round(ResultPoint.distance(topLeft, bottomLeft) / fCalculateModuleSize) + MathUtils.round(ResultPoint.distance(topLeft, topRight) / fCalculateModuleSize)) >> 1;
        int i = iRound + 7;
        int i2 = i & 3;
        if (i2 == 0) {
            i = iRound + 8;
        } else if (i2 == 2) {
            i = iRound + 6;
        } else if (i2 == 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(i);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
            float x2 = bottomLeft.getX() + (topRight.getX() - topLeft.getX());
            float y2 = bottomLeft.getY() + (topRight.getY() - topLeft.getY());
            float f2 = 1.0f - (3.0f / dimensionForVersion);
            int x3 = (int) (((x2 - topLeft.getX()) * f2) + topLeft.getX());
            int y3 = (int) (((y2 - topLeft.getY()) * f2) + topLeft.getY());
            for (int i3 = 4; i3 <= 16; i3 <<= 1) {
                try {
                    alignmentPatternFindAlignmentInRegion = findAlignmentInRegion(fCalculateModuleSize, x3, y3, i3);
                    break;
                } catch (NotFoundException unused) {
                }
            }
            alignmentPatternFindAlignmentInRegion = null;
        } else {
            alignmentPatternFindAlignmentInRegion = null;
        }
        float f3 = i - 3.5f;
        if (alignmentPatternFindAlignmentInRegion != null) {
            x = alignmentPatternFindAlignmentInRegion.getX();
            y = alignmentPatternFindAlignmentInRegion.getY();
            f = f3 - 3.0f;
        } else {
            x = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
            y = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
            f = f3;
        }
        BitMatrix bitMatrixSampleGrid = GridSampler.getInstance().sampleGrid(this.f5331a, i, i, PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f3, 3.5f, f, f, 3.5f, f3, topLeft.getX(), topLeft.getY(), topRight.getX(), topRight.getY(), x, y, bottomLeft.getX(), bottomLeft.getY()));
        if (alignmentPatternFindAlignmentInRegion == null) {
            resultPointArr = new ResultPoint[]{bottomLeft, topLeft, topRight};
        } else {
            resultPointArr = new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPatternFindAlignmentInRegion};
        }
        return new DetectorResult(bitMatrixSampleGrid, resultPointArr);
    }

    public final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (a(resultPoint, resultPoint3) + a(resultPoint, resultPoint2)) / 2.0f;
    }

    public final float a(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float fC = c((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float fC2 = c((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(fC) ? fC2 / 7.0f : Float.isNaN(fC2) ? fC / 7.0f : (fC + fC2) / 14.0f;
    }

    public final float c(int i, int i2, int i3, int i4) {
        float width;
        float height;
        float fB = b(i, i2, i3, i4);
        int width2 = i - (i3 - i);
        int height2 = 0;
        BitMatrix bitMatrix = this.f5331a;
        if (width2 < 0) {
            width = i / (i - width2);
            width2 = 0;
        } else if (width2 >= bitMatrix.getWidth()) {
            width = ((bitMatrix.getWidth() - 1) - i) / (width2 - i);
            width2 = bitMatrix.getWidth() - 1;
        } else {
            width = 1.0f;
        }
        float f = i2;
        int i5 = (int) (f - ((i4 - i2) * width));
        if (i5 < 0) {
            height = f / (i2 - i5);
        } else if (i5 >= bitMatrix.getHeight()) {
            height = ((bitMatrix.getHeight() - 1) - i2) / (i5 - i2);
            height2 = bitMatrix.getHeight() - 1;
        } else {
            height2 = i5;
            height = 1.0f;
        }
        return (b(i, i2, (int) (((width2 - i) * height) + i), height2) + fB) - 1.0f;
    }

    public final float b(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 1;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int iAbs = Math.abs(i7 - i5);
        int iAbs2 = Math.abs(i8 - i6);
        int i10 = (-iAbs) >> 1;
        int i11 = i5 < i7 ? 1 : -1;
        int i12 = i6 < i8 ? 1 : -1;
        int i13 = i7 + i11;
        int i14 = i5;
        int i15 = i6;
        int i16 = 0;
        while (i14 != i13) {
            boolean z2 = z;
            int i17 = iAbs;
            if ((i16 == i9) == this.f5331a.get(z ? i15 : i14, z ? i14 : i15)) {
                if (i16 == 2) {
                    return MathUtils.distance(i14, i15, i5, i6);
                }
                i16++;
            }
            i10 += iAbs2;
            if (i10 > 0) {
                if (i15 == i8) {
                    break;
                }
                i15 += i12;
                i10 -= i17;
            }
            i14 += i11;
            iAbs = i17;
            z = z2;
            i9 = 1;
        }
        if (i16 == 2) {
            return MathUtils.distance(i13, i8, i5, i6);
        }
        return Float.NaN;
    }

    public final AlignmentPattern findAlignmentInRegion(float f, int i, int i2, float f2) throws NotFoundException {
        BitMatrix bitMatrix;
        AlignmentPattern alignmentPatternB;
        AlignmentPattern alignmentPatternB2;
        int i3 = (int) (f2 * f);
        int iMax = Math.max(0, i - i3);
        BitMatrix bitMatrix2 = this.f5331a;
        int iMin = Math.min(bitMatrix2.getWidth() - 1, i + i3) - iMax;
        float f3 = 3.0f * f;
        if (iMin < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i2 - i3);
        int iMin2 = Math.min(bitMatrix2.getHeight() - 1, i2 + i3) - iMax2;
        if (iMin2 < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        a aVar = new a(this.f5331a, iMax, iMax2, iMin, iMin2, f, this.f5332b);
        int i4 = aVar.e;
        int i5 = aVar.c;
        int i6 = i4 + i5;
        int i7 = aVar.f;
        int i8 = aVar.d + (i7 >> 1);
        int[] iArr = new int[3];
        for (int i9 = 0; i9 < i7; i9++) {
            int i10 = ((i9 & 1) == 0 ? (i9 + 1) >> 1 : -((i9 + 1) >> 1)) + i8;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i11 = i5;
            while (true) {
                bitMatrix = aVar.f5339a;
                if (i11 >= i6 || bitMatrix.get(i11, i10)) {
                    break;
                }
                i11++;
            }
            int i12 = 0;
            while (i11 < i6) {
                if (!bitMatrix.get(i11, i10)) {
                    if (i12 == 1) {
                        i12++;
                    }
                    iArr[i12] = iArr[i12] + 1;
                } else if (i12 == 1) {
                    iArr[i12] = iArr[i12] + 1;
                } else if (i12 == 2) {
                    if (aVar.a(iArr) && (alignmentPatternB2 = aVar.b(i10, i11, iArr)) != null) {
                        return alignmentPatternB2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i12 = 1;
                } else {
                    i12++;
                    iArr[i12] = iArr[i12] + 1;
                }
                i11++;
            }
            if (aVar.a(iArr) && (alignmentPatternB = aVar.b(i10, i6, iArr)) != null) {
                return alignmentPatternB;
            }
        }
        ArrayList arrayList = aVar.f5340b;
        if (!arrayList.isEmpty()) {
            return (AlignmentPattern) arrayList.get(0);
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
