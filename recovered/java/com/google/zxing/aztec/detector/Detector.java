package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* loaded from: classes.dex */
public final class Detector {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5096a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5097b;
    public int c;
    public int d;
    public int e;
    public int f;

    public Detector(BitMatrix bitMatrix) {
        this.f5096a = bitMatrix;
    }

    public AztecDetectorResult detect() throws NotFoundException {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        float f;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        char c2;
        boolean[] zArr;
        int i5;
        int i6;
        int i7;
        int i8;
        b bVar;
        b bVar2;
        int i9 = 9;
        int i10 = 2;
        int i11 = 1;
        BitMatrix bitMatrix = this.f5096a;
        int i12 = -1;
        try {
            ResultPoint[] resultPointArrDetect = new WhiteRectangleDetector(bitMatrix).detect();
            resultPoint3 = resultPointArrDetect[0];
            resultPoint4 = resultPointArrDetect[1];
            resultPoint = resultPointArrDetect[2];
            resultPoint2 = resultPointArrDetect[3];
        } catch (NotFoundException unused) {
            int width = bitMatrix.getWidth() / 2;
            int height = bitMatrix.getHeight() / 2;
            int i13 = width + 7;
            int i14 = height - 7;
            ResultPoint resultPoint9 = b(new b(i13, i14), false, 1, -1).toResultPoint();
            int i15 = height + 7;
            ResultPoint resultPoint10 = b(new b(i13, i15), false, 1, 1).toResultPoint();
            int i16 = width - 7;
            resultPoint = b(new b(i16, i15), false, -1, 1).toResultPoint();
            resultPoint2 = b(new b(i16, i14), false, -1, -1).toResultPoint();
            resultPoint3 = resultPoint9;
            resultPoint4 = resultPoint10;
        }
        int iRound = MathUtils.round((resultPoint.getX() + (resultPoint4.getX() + (resultPoint2.getX() + resultPoint3.getX()))) / 4.0f);
        int iRound2 = MathUtils.round((resultPoint.getY() + (resultPoint4.getY() + (resultPoint2.getY() + resultPoint3.getY()))) / 4.0f);
        try {
            ResultPoint[] resultPointArrDetect2 = new WhiteRectangleDetector(bitMatrix, 15, iRound, iRound2).detect();
            resultPoint6 = resultPointArrDetect2[0];
            resultPoint8 = resultPointArrDetect2[1];
            ResultPoint resultPoint11 = resultPointArrDetect2[2];
            resultPoint7 = resultPointArrDetect2[3];
            resultPoint5 = resultPoint11;
            f = 4.0f;
        } catch (NotFoundException unused2) {
            int i17 = iRound + 7;
            int i18 = iRound2 - 7;
            ResultPoint resultPoint12 = b(new b(i17, i18), false, 1, -1).toResultPoint();
            f = 4.0f;
            int i19 = iRound2 + 7;
            ResultPoint resultPoint13 = b(new b(i17, i19), false, 1, 1).toResultPoint();
            int i20 = iRound - 7;
            resultPoint5 = b(new b(i20, i19), false, -1, 1).toResultPoint();
            resultPoint6 = resultPoint12;
            resultPoint7 = b(new b(i20, i18), false, -1, -1).toResultPoint();
            resultPoint8 = resultPoint13;
        }
        b bVar3 = new b(MathUtils.round((resultPoint5.getX() + (resultPoint8.getX() + (resultPoint7.getX() + resultPoint6.getX()))) / f), MathUtils.round((resultPoint5.getY() + (resultPoint8.getY() + (resultPoint7.getY() + resultPoint6.getY()))) / f));
        this.e = 1;
        b bVar4 = bVar3;
        b bVar5 = bVar4;
        b bVarB = bVar5;
        boolean z = true;
        while (true) {
            int i21 = this.e;
            i = bVarB.f5099b;
            i2 = bVarB.f5098a;
            i3 = bVar3.f5099b;
            i4 = bVar3.f5098a;
            if (i21 >= i9) {
                c = 2;
                c2 = 1;
                break;
            }
            b bVarB2 = b(bVar3, z, i11, i12);
            b bVarB3 = b(bVar4, z, i11, i11);
            b bVarB4 = b(bVar5, z, i12, i11);
            bVarB = b(bVarB, z, i12, i12);
            if (this.e > i10) {
                int i22 = bVarB.f5098a;
                c = 2;
                int i23 = bVarB.f5099b;
                c2 = 1;
                int i24 = bVarB2.f5098a;
                int i25 = bVarB2.f5099b;
                double dDistance = (MathUtils.distance(i22, i23, i24, i25) * this.e) / ((this.e + 2) * MathUtils.distance(i2, i, i4, i3));
                if (dDistance < 0.75d || dDistance > 1.25d) {
                    break;
                }
                b bVar6 = new b(i24 - 3, i25 + 3);
                b bVar7 = new b(bVarB3.f5098a - 3, bVarB3.f5099b - 3);
                bVar2 = bVarB2;
                b bVar8 = new b(bVarB4.f5098a + 3, bVarB4.f5099b - 3);
                bVar = bVarB4;
                b bVar9 = new b(i22 + 3, i23 + 3);
                int iA = a(bVar9, bVar6);
                if (iA == 0 || a(bVar6, bVar7) != iA || a(bVar7, bVar8) != iA || a(bVar8, bVar9) != iA) {
                    break;
                }
            } else {
                bVar = bVarB4;
                bVar2 = bVarB2;
            }
            z = !z;
            this.e++;
            bVar4 = bVarB3;
            bVar5 = bVar;
            bVar3 = bVar2;
            i9 = 9;
            i10 = 2;
            i11 = 1;
            i12 = -1;
        }
        int i26 = this.e;
        int i27 = 5;
        if (i26 != 5 && i26 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.f5097b = i26 == 5;
        float f2 = 1.5f / ((i26 * 2) - 3);
        int i28 = bVar5.f5098a;
        int i29 = bVar5.f5099b;
        float f3 = (i4 - i28) * f2;
        int iRound3 = MathUtils.round(i28 - f3);
        float f4 = (i3 - i29) * f2;
        int iRound4 = MathUtils.round(i29 - f4);
        int iRound5 = MathUtils.round(i4 + f3);
        int iRound6 = MathUtils.round(i3 + f4);
        int i30 = bVar4.f5098a;
        int i31 = bVar4.f5099b;
        float f5 = (i30 - i2) * f2;
        int iRound7 = MathUtils.round(i2 - f5);
        float f6 = f2 * (i31 - i);
        int iRound8 = MathUtils.round(i - f6);
        int iRound9 = MathUtils.round(i30 + f5);
        int iRound10 = MathUtils.round(i31 + f6);
        if (!c(iRound5, iRound6) || !c(iRound9, iRound10) || !c(iRound3, iRound4) || !c(iRound7, iRound8)) {
            throw NotFoundException.getNotFoundInstance();
        }
        b bVar10 = new b(iRound5, iRound6);
        b bVar11 = new b(iRound9, iRound10);
        b bVar12 = new b(iRound3, iRound4);
        b bVar13 = new b(iRound7, iRound8);
        b[] bVarArr = new b[4];
        bVarArr[0] = bVar10;
        bVarArr[c2] = bVar11;
        bVarArr[c] = bVar12;
        bVarArr[3] = bVar13;
        boolean[] zArrD = d(bVarArr[0], bVarArr[c2], (this.e * 2) + 1);
        boolean[] zArrD2 = d(bVarArr[c2], bVarArr[c], (this.e * 2) + 1);
        boolean[] zArrD3 = d(bVarArr[c], bVarArr[3], (this.e * 2) + 1);
        boolean[] zArrD4 = d(bVarArr[3], bVarArr[0], (this.e * 2) + 1);
        if (zArrD[0] && zArrD[this.e * 2]) {
            this.f = 0;
        } else if (zArrD2[0] && zArrD2[this.e * 2]) {
            this.f = 1;
        } else if (zArrD3[0] && zArrD3[this.e * 2]) {
            this.f = 2;
        } else if (zArrD4[0] && zArrD4[this.e * 2]) {
            this.f = 3;
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.f5097b) {
            boolean[] zArr2 = new boolean[28];
            for (int i32 = 0; i32 < 7; i32++) {
                int i33 = i32 + 2;
                zArr2[i32] = zArrD[i33];
                zArr2[i32 + 7] = zArrD2[i33];
                zArr2[i32 + 14] = zArrD3[i33];
                zArr2[i32 + 21] = zArrD4[i33];
            }
            zArr = new boolean[28];
            for (int i34 = 0; i34 < 28; i34++) {
                zArr[i34] = zArr2[((this.f * 7) + i34) % 28];
            }
        } else {
            boolean[] zArr3 = new boolean[40];
            for (int i35 = 0; i35 < 11; i35++) {
                if (i35 < 5) {
                    int i36 = i35 + 2;
                    zArr3[i35] = zArrD[i36];
                    zArr3[i35 + 10] = zArrD2[i36];
                    zArr3[i35 + 20] = zArrD3[i36];
                    zArr3[i35 + 30] = zArrD4[i36];
                }
                if (i35 > 5) {
                    int i37 = i35 + 2;
                    zArr3[i35 - 1] = zArrD[i37];
                    zArr3[i35 + 9] = zArrD2[i37];
                    zArr3[i35 + 19] = zArrD3[i37];
                    zArr3[i35 + 29] = zArrD4[i37];
                }
            }
            zArr = new boolean[40];
            for (int i38 = 0; i38 < 40; i38++) {
                zArr[i38] = zArr3[((this.f * 10) + i38) % 40];
            }
        }
        if (this.f5097b) {
            i5 = 7;
            i6 = 2;
        } else {
            i5 = 10;
            i6 = 4;
        }
        int i39 = i5 - i6;
        int[] iArr = new int[i5];
        for (int i40 = 0; i40 < i5; i40++) {
            int i41 = 1;
            for (int i42 = 1; i42 <= 4; i42++) {
                if (zArr[((4 * i40) + 4) - i42]) {
                    iArr[i40] = iArr[i40] + i41;
                }
                i41 <<= 1;
            }
        }
        try {
            new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i39);
            for (int i43 = 0; i43 < i6; i43++) {
                int i44 = 1;
                for (int i45 = 1; i45 <= 4; i45++) {
                    zArr[((i43 * 4) + 4) - i45] = (iArr[i43] & i44) == i44;
                    i44 <<= 1;
                }
            }
            if (this.f5097b) {
                i7 = 6;
                i27 = 2;
            } else {
                i7 = 11;
            }
            for (int i46 = 0; i46 < i27; i46++) {
                int i47 = this.c << 1;
                this.c = i47;
                if (zArr[i46]) {
                    this.c = i47 + 1;
                }
            }
            for (int i48 = i27; i48 < i27 + i7; i48++) {
                int i49 = this.d << 1;
                this.d = i49;
                if (zArr[i48]) {
                    this.d = i49 + 1;
                }
            }
            int i50 = this.c + 1;
            this.c = i50;
            this.d++;
            float f7 = (((r1 - 3) / 8) + ((i50 * 2) + (i50 > 4 ? 1 : 0))) / (this.e * 2.0f);
            b bVar14 = bVarArr[0];
            int i51 = bVar14.f5098a;
            b bVar15 = bVarArr[2];
            int i52 = bVar15.f5098a;
            int i53 = i51 - i52;
            int i54 = i53 + (i53 > 0 ? 1 : -1);
            int i55 = bVar14.f5099b - bVar15.f5099b;
            int i56 = i55 + (i55 > 0 ? 1 : -1);
            float f8 = i54 * f7;
            int iRound11 = MathUtils.round(i52 - f8);
            float f9 = i56 * f7;
            int iRound12 = MathUtils.round(bVarArr[2].f5099b - f9);
            int iRound13 = MathUtils.round(bVarArr[0].f5098a + f8);
            int iRound14 = MathUtils.round(bVarArr[0].f5099b + f9);
            b bVar16 = bVarArr[1];
            int i57 = bVar16.f5098a;
            b bVar17 = bVarArr[3];
            int i58 = bVar17.f5098a;
            int i59 = i57 - i58;
            int i60 = i59 + (i59 > 0 ? 1 : -1);
            int i61 = bVar16.f5099b - bVar17.f5099b;
            int i62 = i61 + (i61 > 0 ? 1 : -1);
            float f10 = i60 * f7;
            int iRound15 = MathUtils.round(i58 - f10);
            float f11 = f7 * i62;
            int iRound16 = MathUtils.round(bVarArr[3].f5099b - f11);
            int iRound17 = MathUtils.round(bVarArr[1].f5098a + f10);
            int iRound18 = MathUtils.round(bVarArr[1].f5099b + f11);
            if (!c(iRound13, iRound14) || !c(iRound17, iRound18) || !c(iRound11, iRound12) || !c(iRound15, iRound16)) {
                throw NotFoundException.getNotFoundInstance();
            }
            ResultPoint[] resultPointArr = {new ResultPoint(iRound13, iRound14), new ResultPoint(iRound17, iRound18), new ResultPoint(iRound11, iRound12), new ResultPoint(iRound15, iRound16)};
            int i63 = this.f;
            ResultPoint resultPoint14 = resultPointArr[i63 % 4];
            ResultPoint resultPoint15 = resultPointArr[(i63 + 3) % 4];
            ResultPoint resultPoint16 = resultPointArr[(i63 + 2) % 4];
            ResultPoint resultPoint17 = resultPointArr[(i63 + 1) % 4];
            if (this.f5097b) {
                i8 = (this.c * 4) + 11;
            } else {
                int i64 = this.c;
                i8 = (i64 <= 4 ? i64 * 4 : ((((i64 - 4) / 8) + 1) * 2) + (i64 * 4)) + 15;
            }
            int i65 = i8;
            float f12 = i65 - 0.5f;
            return new AztecDetectorResult(GridSampler.getInstance().sampleGrid(this.f5096a, i65, i65, 0.5f, 0.5f, f12, 0.5f, f12, f12, 0.5f, f12, resultPoint14.getX(), resultPoint14.getY(), resultPoint17.getX(), resultPoint17.getY(), resultPoint16.getX(), resultPoint16.getY(), resultPoint15.getX(), resultPoint15.getY()), resultPointArr, this.f5097b, this.d, this.c);
        } catch (ReedSolomonException unused3) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    public final boolean[] d(b bVar, b bVar2, int i) {
        boolean[] zArr = new boolean[i];
        int i2 = bVar.f5098a;
        int i3 = bVar2.f5098a;
        int i4 = bVar.f5099b;
        float fDistance = MathUtils.distance(i2, i4, i3, bVar2.f5099b);
        float f = fDistance / (i - 1);
        int i5 = bVar2.f5098a;
        float f2 = ((i5 - r8) * f) / fDistance;
        float f3 = (f * (r4 - i4)) / fDistance;
        float f4 = bVar.f5098a;
        float f5 = i4;
        for (int i6 = 0; i6 < i; i6++) {
            zArr[i6] = this.f5096a.get(MathUtils.round(f4), MathUtils.round(f5));
            f4 += f2;
            f5 += f3;
        }
        return zArr;
    }

    public final b b(b bVar, boolean z, int i, int i2) {
        BitMatrix bitMatrix;
        int i3 = bVar.f5098a + i;
        int i4 = bVar.f5099b;
        while (true) {
            i4 += i2;
            boolean zC = c(i3, i4);
            bitMatrix = this.f5096a;
            if (!zC || bitMatrix.get(i3, i4) != z) {
                break;
            }
            i3 += i;
        }
        int i5 = i3 - i;
        int i6 = i4 - i2;
        while (c(i5, i6) && bitMatrix.get(i5, i6) == z) {
            i5 += i;
        }
        int i7 = i5 - i;
        while (c(i7, i6) && bitMatrix.get(i7, i6) == z) {
            i6 += i2;
        }
        return new b(i7, i6 - i2);
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f5098a;

        /* renamed from: b, reason: collision with root package name */
        public final int f5099b;

        public ResultPoint toResultPoint() {
            return new ResultPoint(this.f5098a, this.f5099b);
        }

        public b(int i, int i2) {
            this.f5098a = i;
            this.f5099b = i2;
        }
    }

    public final boolean c(int i, int i2) {
        if (i < 0) {
            return false;
        }
        BitMatrix bitMatrix = this.f5096a;
        return i < bitMatrix.getWidth() && i2 > 0 && i2 < bitMatrix.getHeight();
    }

    public final int a(b bVar, b bVar2) {
        int i = bVar.f5098a;
        int i2 = bVar.f5099b;
        float fDistance = MathUtils.distance(i, i2, bVar2.f5098a, bVar2.f5099b);
        float f = (r1 - i) / fDistance;
        float f2 = (r12 - i2) / fDistance;
        float f3 = i;
        float f4 = i2;
        BitMatrix bitMatrix = this.f5096a;
        boolean z = bitMatrix.get(i, i2);
        int i3 = 0;
        for (int i4 = 0; i4 < fDistance; i4++) {
            f3 += f;
            f4 += f2;
            if (bitMatrix.get(MathUtils.round(f3), MathUtils.round(f4)) != z) {
                i3++;
            }
        }
        double d = i3 / fDistance;
        if (d <= 0.1d || d >= 0.9d) {
            return d <= 0.1d ? z ? 1 : -1 : z ? -1 : 1;
        }
        return 0;
    }
}
