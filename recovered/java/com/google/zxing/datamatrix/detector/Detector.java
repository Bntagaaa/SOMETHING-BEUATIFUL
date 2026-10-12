package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class Detector {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5213a;

    /* renamed from: b, reason: collision with root package name */
    public final WhiteRectangleDetector f5214b;

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.f5213a = bitMatrix;
        this.f5214b = new WhiteRectangleDetector(bitMatrix);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.DetectorResult detect() throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.detector.Detector.detect():com.google.zxing.common.DetectorResult");
    }

    public final boolean c(ResultPoint resultPoint) {
        if (resultPoint.getX() < 0.0f) {
            return false;
        }
        float x = resultPoint.getX();
        BitMatrix bitMatrix = this.f5213a;
        return x < ((float) bitMatrix.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) bitMatrix.getHeight());
    }

    public static int a(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2));
    }

    public static void b(HashMap map, ResultPoint resultPoint) {
        Integer num = (Integer) map.get(resultPoint);
        map.put(resultPoint, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public static BitMatrix d(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    public final b e(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int x = (int) resultPoint.getX();
        int y = (int) resultPoint.getY();
        int x2 = (int) resultPoint2.getX();
        int y2 = (int) resultPoint2.getY();
        int i = 0;
        boolean z = Math.abs(y2 - y) > Math.abs(x2 - x);
        if (z) {
            y = x;
            x = y;
            y2 = x2;
            x2 = y2;
        }
        int iAbs = Math.abs(x2 - x);
        int iAbs2 = Math.abs(y2 - y);
        int i2 = (-iAbs) >> 1;
        int i3 = y < y2 ? 1 : -1;
        int i4 = x >= x2 ? -1 : 1;
        int i5 = z ? y : x;
        int i6 = z ? x : y;
        BitMatrix bitMatrix = this.f5213a;
        boolean z2 = bitMatrix.get(i5, i6);
        while (x != x2) {
            boolean z3 = bitMatrix.get(z ? y : x, z ? x : y);
            if (z3 != z2) {
                i++;
                z2 = z3;
            }
            i2 += iAbs2;
            if (i2 > 0) {
                if (y == y2) {
                    break;
                }
                y += i3;
                i2 -= iAbs;
            }
            x += i4;
        }
        return new b(resultPoint, resultPoint2, i);
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final ResultPoint f5215a;

        /* renamed from: b, reason: collision with root package name */
        public final ResultPoint f5216b;
        public final int c;

        public b(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
            this.f5215a = resultPoint;
            this.f5216b = resultPoint2;
            this.c = i;
        }

        public int getTransitions() {
            return this.c;
        }

        public String toString() {
            return this.f5215a + "/" + this.f5216b + '/' + this.c;
        }
    }

    public static final class c implements Comparator<b>, Serializable {
        private c() {
        }

        public /* synthetic */ c(int i) {
            this();
        }

        @Override // java.util.Comparator
        public int compare(b bVar, b bVar2) {
            return bVar.getTransitions() - bVar2.getTransitions();
        }
    }
}
