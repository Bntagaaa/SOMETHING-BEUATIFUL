package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5339a;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final float f5341g;
    public final ResultPointCallback i;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5340b = new ArrayList(5);
    public final int[] h = new int[3];

    public a(BitMatrix bitMatrix, int i, int i2, int i3, int i4, float f, ResultPointCallback resultPointCallback) {
        this.f5339a = bitMatrix;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.f5341g = f;
        this.i = resultPointCallback;
    }

    public final boolean a(int[] iArr) {
        float f = this.f5341g;
        float f2 = f / 2.0f;
        for (int i = 0; i < 3; i++) {
            if (Math.abs(f - iArr[i]) >= f2) {
                return false;
            }
        }
        return true;
    }

    public final AlignmentPattern b(int i, int i2, int[] iArr) {
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = i3 + i4 + iArr[2];
        float f = (i2 - r5) - (i4 / 2.0f);
        int i6 = (int) f;
        int i7 = i4 * 2;
        BitMatrix bitMatrix = this.f5339a;
        int height = bitMatrix.getHeight();
        int[] iArr2 = this.h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        int i8 = i;
        while (i8 >= 0 && bitMatrix.get(i6, i8)) {
            int i9 = iArr2[1];
            if (i9 > i7) {
                break;
            }
            iArr2[1] = i9 + 1;
            i8--;
        }
        float f2 = Float.NaN;
        if (i8 >= 0 && iArr2[1] <= i7) {
            while (i8 >= 0 && !bitMatrix.get(i6, i8)) {
                int i10 = iArr2[0];
                if (i10 > i7) {
                    break;
                }
                iArr2[0] = i10 + 1;
                i8--;
            }
            if (iArr2[0] <= i7) {
                int i11 = i + 1;
                while (i11 < height && bitMatrix.get(i6, i11)) {
                    int i12 = iArr2[1];
                    if (i12 > i7) {
                        break;
                    }
                    iArr2[1] = i12 + 1;
                    i11++;
                }
                if (i11 != height && iArr2[1] <= i7) {
                    while (i11 < height && !bitMatrix.get(i6, i11)) {
                        int i13 = iArr2[2];
                        if (i13 > i7) {
                            break;
                        }
                        iArr2[2] = i13 + 1;
                        i11++;
                    }
                    int i14 = iArr2[2];
                    if (i14 <= i7 && Math.abs(((iArr2[0] + iArr2[1]) + i14) - i5) * 5 < i5 * 2 && a(iArr2)) {
                        f2 = (i11 - iArr2[2]) - (iArr2[1] / 2.0f);
                    }
                }
            }
        }
        if (Float.isNaN(f2)) {
            return null;
        }
        float f3 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        ArrayList arrayList = this.f5340b;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AlignmentPattern alignmentPattern = (AlignmentPattern) it.next();
            if (Math.abs(f2 - alignmentPattern.getY()) <= f3 && Math.abs(f - alignmentPattern.getX()) <= f3) {
                float f4 = alignmentPattern.c;
                float fAbs = Math.abs(f3 - f4);
                if (fAbs <= 1.0f || fAbs <= f4) {
                    return new AlignmentPattern((alignmentPattern.getX() + f) / 2.0f, (alignmentPattern.getY() + f2) / 2.0f, (f4 + f3) / 2.0f);
                }
            }
        }
        AlignmentPattern alignmentPattern2 = new AlignmentPattern(f, f2, f3);
        arrayList.add(alignmentPattern2);
        ResultPointCallback resultPointCallback = this.i;
        if (resultPointCallback == null) {
            return null;
        }
        resultPointCallback.foundPossibleResultPoint(alignmentPattern2);
        return null;
    }
}
