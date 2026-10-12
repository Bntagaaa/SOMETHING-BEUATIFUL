package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.oned.OneDReader;

/* loaded from: classes2.dex */
public abstract class AbstractRSSReader extends OneDReader {

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5253b;
    public final int[] e;
    public final int[] f;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f5252a = new int[4];
    public final float[] c = new float[4];
    public final float[] d = new float[4];

    public AbstractRSSReader() {
        int[] iArr = new int[8];
        this.f5253b = iArr;
        this.e = new int[iArr.length / 2];
        this.f = new int[iArr.length / 2];
    }

    public final int[] getDecodeFinderCounters() {
        return this.f5252a;
    }

    public final int[] getDataCharacterCounters() {
        return this.f5253b;
    }

    public final float[] getOddRoundingErrors() {
        return this.c;
    }

    public final float[] getEvenRoundingErrors() {
        return this.d;
    }

    public final int[] getOddCounts() {
        return this.e;
    }

    public final int[] getEvenCounts() {
        return this.f;
    }

    public static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i = 0; i < iArr2.length; i++) {
            if (OneDReader.patternMatchVariance(iArr, iArr2[i], 102) < 51) {
                return i;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int count(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }

    public static void increment(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            float f2 = fArr[i2];
            if (f2 > f) {
                i = i2;
                f = f2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    public static void decrement(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            float f2 = fArr[i2];
            if (f2 < f) {
                i = i2;
                f = f2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    public static boolean isFinderPattern(int[] iArr) {
        float f = (iArr[0] + iArr[1]) / ((iArr[2] + r1) + iArr[3]);
        if (f >= 0.7916667f && f <= 0.89285713f) {
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            for (int i3 : iArr) {
                if (i3 > i2) {
                    i2 = i3;
                }
                if (i3 < i) {
                    i = i3;
                }
            }
            if (i2 < i * 10) {
                return true;
            }
        }
        return false;
    }
}
