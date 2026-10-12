package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class FinderPatternFinder {
    protected static final int MAX_MODULES = 57;
    protected static final int MIN_SKIP = 3;

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5333a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5334b;
    public boolean c;
    public final int[] d;
    public final ResultPointCallback e;

    public static final class b implements Comparator<FinderPattern>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final float f5335a;

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            int i = finderPattern2.d;
            int i2 = finderPattern.d;
            if (i != i2) {
                return i - i2;
            }
            float estimatedModuleSize = finderPattern2.getEstimatedModuleSize();
            float f = this.f5335a;
            float fAbs = Math.abs(estimatedModuleSize - f);
            float fAbs2 = Math.abs(finderPattern.getEstimatedModuleSize() - f);
            if (fAbs < fAbs2) {
                return 1;
            }
            return fAbs == fAbs2 ? 0 : -1;
        }

        public b(float f) {
            this.f5335a = f;
        }
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.f5333a = bitMatrix;
        this.f5334b = new ArrayList();
        this.d = new int[5];
        this.e = resultPointCallback;
    }

    public final BitMatrix getImage() {
        return this.f5333a;
    }

    public final List<FinderPattern> getPossibleCenters() {
        return this.f5334b;
    }

    public static float a(int i, int[] iArr) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    public static boolean foundPatternCross(int[] iArr) {
        int i;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < 5; i4++) {
            int i5 = iArr[i4];
            if (i5 == 0) {
                return false;
            }
            i3 += i5;
        }
        return i3 >= 7 && Math.abs(i - (iArr[0] << 8)) < (i2 = (i = (i3 << 8) / 7) / 2) && Math.abs(i - (iArr[1] << 8)) < i2 && Math.abs((i * 3) - (iArr[2] << 8)) < i2 * 3 && Math.abs(i - (iArr[3] << 8)) < i2 && Math.abs(i - (iArr[4] << 8)) < i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x01fd, code lost:
    
        r7 = r5.d;
        r8 = r7 + 1;
        r7 = r7;
        r11 = r8;
        r3.set(r2, new com.google.zxing.qrcode.detector.FinderPattern(((r5.getX() * r7) + r14) / r11, ((r5.getY() * r7) + r9) / r11, ((r7 * r6) + r1) / r11, r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x021f, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handlePossibleCenter(int[] r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.handlePossibleCenter(int[], int, int):boolean");
    }

    public final boolean b() {
        ArrayList arrayList = this.f5334b;
        int size = arrayList.size();
        Iterator it = arrayList.iterator();
        float fAbs = 0.0f;
        int i = 0;
        float estimatedModuleSize = 0.0f;
        while (it.hasNext()) {
            FinderPattern finderPattern = (FinderPattern) it.next();
            if (finderPattern.d >= 2) {
                i++;
                estimatedModuleSize += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i >= 3) {
            float f = estimatedModuleSize / size;
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                fAbs += Math.abs(((FinderPattern) it2.next()).getEstimatedModuleSize() - f);
            }
            if (fAbs <= estimatedModuleSize * 0.05f) {
                return true;
            }
        }
        return false;
    }

    public static final class c implements Comparator<FinderPattern>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final float f5336a;

        public c(float f) {
            this.f5336a = f;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            float estimatedModuleSize = finderPattern2.getEstimatedModuleSize();
            float f = this.f5336a;
            float fAbs = Math.abs(estimatedModuleSize - f);
            float fAbs2 = Math.abs(finderPattern.getEstimatedModuleSize() - f);
            if (fAbs < fAbs2) {
                return -1;
            }
            return fAbs == fAbs2 ? 0 : 1;
        }
    }
}
