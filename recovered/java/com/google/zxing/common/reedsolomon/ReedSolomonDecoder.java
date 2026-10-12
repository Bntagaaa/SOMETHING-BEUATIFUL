package com.google.zxing.common.reedsolomon;

/* loaded from: classes.dex */
public final class ReedSolomonDecoder {

    /* renamed from: a, reason: collision with root package name */
    public final GenericGF f5188a;

    public ReedSolomonDecoder(GenericGF genericGF) {
        this.f5188a = genericGF;
    }

    public void decode(int[] iArr, int i) throws ReedSolomonException {
        int[] iArr2;
        GenericGF genericGF = this.f5188a;
        a aVar = new a(genericGF, iArr);
        int[] iArr3 = new int[i];
        boolean zEquals = genericGF.equals(GenericGF.DATA_MATRIX_FIELD_256);
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = zEquals ? i2 + 1 : i2;
            genericGF.b();
            int iB = aVar.b(genericGF.f5185a[i3]);
            iArr3[(i - 1) - i2] = iB;
            if (iB != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        a aVar2 = new a(genericGF, iArr3);
        a aVarA = genericGF.a(i, 1);
        if (aVarA.d() >= aVar2.d()) {
            aVarA = aVar2;
            aVar2 = aVarA;
        }
        genericGF.b();
        a aVar3 = genericGF.c;
        genericGF.b();
        a aVar4 = aVarA;
        a aVarA2 = aVar2;
        a aVar5 = aVar4;
        a aVar6 = aVar3;
        a aVar7 = genericGF.d;
        while (aVar5.d() >= i / 2) {
            if (!aVar5.e()) {
                genericGF.b();
                a aVarA3 = genericGF.c;
                int iD = genericGF.d(aVar5.c(aVar5.d()));
                while (aVarA2.d() >= aVar5.d() && !aVarA2.e()) {
                    int iD2 = aVarA2.d() - aVar5.d();
                    int iE = genericGF.e(aVarA2.c(aVarA2.d()), iD);
                    aVarA3 = aVarA3.a(genericGF.a(iD2, iE));
                    aVarA2 = aVarA2.a(aVar5.h(iD2, iE));
                }
                a aVarA4 = aVarA3.g(aVar7).a(aVar6);
                a aVar8 = aVarA2;
                aVarA2 = aVar5;
                aVar5 = aVar8;
                aVar6 = aVar7;
                aVar7 = aVarA4;
            } else {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
        }
        int iC = aVar7.c(0);
        if (iC == 0) {
            throw new ReedSolomonException("sigmaTilde(0) was zero");
        }
        int iD3 = genericGF.d(iC);
        a[] aVarArr = {aVar7.f(iD3), aVar5.f(iD3)};
        a aVar9 = aVarArr[0];
        a aVar10 = aVarArr[1];
        int iD4 = aVar9.d();
        if (iD4 == 1) {
            iArr2 = new int[]{aVar9.c(1)};
        } else {
            int[] iArr4 = new int[iD4];
            int i4 = 0;
            for (int i5 = 1; i5 < genericGF.getSize() && i4 < iD4; i5++) {
                if (aVar9.b(i5) == 0) {
                    iArr4[i4] = genericGF.d(i5);
                    i4++;
                }
            }
            if (i4 != iD4) {
                throw new ReedSolomonException("Error locator degree does not match number of roots");
            }
            iArr2 = iArr4;
        }
        int length = iArr2.length;
        int[] iArr5 = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            int iD5 = genericGF.d(iArr2[i6]);
            int iE2 = 1;
            for (int i7 = 0; i7 < length; i7++) {
                if (i6 != i7) {
                    int iE3 = genericGF.e(iArr2[i7], iD5);
                    iE2 = genericGF.e(iE2, (iE3 & 1) == 0 ? iE3 | 1 : iE3 & (-2));
                }
            }
            int iE4 = genericGF.e(aVar10.b(iD5), genericGF.d(iE2));
            iArr5[i6] = iE4;
            if (zEquals) {
                iArr5[i6] = genericGF.e(iE4, iD5);
            }
        }
        for (int i8 = 0; i8 < iArr2.length; i8++) {
            int length2 = iArr.length - 1;
            int i9 = iArr2[i8];
            genericGF.b();
            if (i9 == 0) {
                throw new IllegalArgumentException();
            }
            int i10 = length2 - genericGF.f5186b[i9];
            if (i10 < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[i10] = iArr[i10] ^ iArr5[i8];
        }
    }
}
