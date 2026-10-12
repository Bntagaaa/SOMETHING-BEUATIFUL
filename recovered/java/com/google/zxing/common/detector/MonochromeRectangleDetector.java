package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
public final class MonochromeRectangleDetector {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5181a;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.f5181a = bitMatrix;
    }

    public ResultPoint[] detect() throws NotFoundException {
        BitMatrix bitMatrix = this.f5181a;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        int i = height >> 1;
        int i2 = width >> 1;
        int iMax = Math.max(1, height / 256);
        int iMax2 = Math.max(1, width / 256);
        int i3 = -iMax;
        int i4 = width >> 2;
        int y = ((int) b(i2, 0, 0, width, i, i3, 0, height, i4).getY()) - 1;
        int i5 = height >> 2;
        ResultPoint resultPointB = b(i2, -iMax2, 0, width, i, 0, y, height, i5);
        int x = ((int) resultPointB.getX()) - 1;
        ResultPoint resultPointB2 = b(i2, iMax2, x, width, i, 0, y, height, i5);
        int x2 = ((int) resultPointB2.getX()) + 1;
        ResultPoint resultPointB3 = b(i2, 0, x, x2, i, iMax, y, height, i4);
        return new ResultPoint[]{b(i2, 0, x, x2, i, i3, y, ((int) resultPointB3.getY()) + 1, width >> 3), resultPointB, resultPointB2, resultPointB3};
    }

    public final ResultPoint b(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws NotFoundException {
        int[] iArrA;
        int[] iArr = null;
        int i10 = i;
        int i11 = i5;
        while (i11 < i8 && i11 >= i7 && i10 < i4 && i10 >= i3) {
            if (i2 == 0) {
                iArrA = a(i11, i9, i3, i4, true);
            } else {
                iArrA = a(i10, i9, i7, i8, false);
            }
            if (iArrA == null) {
                if (iArr == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i12 = i11 - i6;
                    int i13 = iArr[0];
                    if (i13 < i) {
                        int i14 = iArr[1];
                        if (i14 > i) {
                            return new ResultPoint(i6 > 0 ? i13 : i14, i12);
                        }
                        return new ResultPoint(i13, i12);
                    }
                    return new ResultPoint(iArr[1], i12);
                }
                int i15 = i10 - i2;
                int i16 = iArr[0];
                if (i16 < i5) {
                    int i17 = iArr[1];
                    if (i17 > i5) {
                        return new ResultPoint(i15, i2 < 0 ? i16 : i17);
                    }
                    return new ResultPoint(i15, i16);
                }
                return new ResultPoint(i15, iArr[1]);
            }
            i11 += i6;
            i10 += i2;
            iArr = iArrA;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x002f A[EDGE_INSN: B:66:0x002f->B:21:0x002f BREAK  A[LOOP:1: B:13:0x001c->B:70:0x001c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0062 A[EDGE_INSN: B:83:0x0062->B:44:0x0062 BREAK  A[LOOP:3: B:36:0x004f->B:88:0x004f], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] a(int r6, int r7, int r8, int r9, boolean r10) {
        /*
            r5 = this;
            int r0 = r8 + r9
            int r0 = r0 >> 1
            r1 = r0
        L5:
            com.google.zxing.common.BitMatrix r2 = r5.f5181a
            if (r1 < r8) goto L38
            if (r10 == 0) goto L12
            boolean r3 = r2.get(r1, r6)
            if (r3 == 0) goto L1b
            goto L18
        L12:
            boolean r3 = r2.get(r6, r1)
            if (r3 == 0) goto L1b
        L18:
            int r1 = r1 + (-1)
            goto L5
        L1b:
            r3 = r1
        L1c:
            int r3 = r3 + (-1)
            if (r3 < r8) goto L2f
            if (r10 == 0) goto L29
            boolean r4 = r2.get(r3, r6)
            if (r4 == 0) goto L1c
            goto L2f
        L29:
            boolean r4 = r2.get(r6, r3)
            if (r4 == 0) goto L1c
        L2f:
            int r4 = r1 - r3
            if (r3 < r8) goto L38
            if (r4 <= r7) goto L36
            goto L38
        L36:
            r1 = r3
            goto L5
        L38:
            int r1 = r1 + 1
        L3a:
            if (r0 >= r9) goto L6b
            if (r10 == 0) goto L45
            boolean r8 = r2.get(r0, r6)
            if (r8 == 0) goto L4e
            goto L4b
        L45:
            boolean r8 = r2.get(r6, r0)
            if (r8 == 0) goto L4e
        L4b:
            int r0 = r0 + 1
            goto L3a
        L4e:
            r8 = r0
        L4f:
            int r8 = r8 + 1
            if (r8 >= r9) goto L62
            if (r10 == 0) goto L5c
            boolean r3 = r2.get(r8, r6)
            if (r3 == 0) goto L4f
            goto L62
        L5c:
            boolean r3 = r2.get(r6, r8)
            if (r3 == 0) goto L4f
        L62:
            int r3 = r8 - r0
            if (r8 >= r9) goto L6b
            if (r3 <= r7) goto L69
            goto L6b
        L69:
            r0 = r8
            goto L3a
        L6b:
            int r0 = r0 + (-1)
            if (r0 <= r1) goto L74
            int[] r6 = new int[]{r1, r0}
            return r6
        L74:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.a(int, int, int, int, boolean):int[]");
    }
}
