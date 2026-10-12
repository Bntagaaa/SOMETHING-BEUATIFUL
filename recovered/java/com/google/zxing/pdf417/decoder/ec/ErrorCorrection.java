package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.ChecksumException;

/* loaded from: classes2.dex */
public final class ErrorCorrection {

    /* renamed from: a, reason: collision with root package name */
    public final ModulusGF f5290a = ModulusGF.PDF417_GF;

    public void decode(int[] iArr, int i, int[] iArr2) throws ChecksumException {
        int i2;
        ModulusGF modulusGF;
        a aVar;
        a aVar2;
        a aVar3;
        int i3 = i;
        ModulusGF modulusGF2 = this.f5290a;
        a aVar4 = new a(modulusGF2, iArr);
        int[] iArr3 = new int[i3];
        char c = 0;
        boolean z = false;
        for (int i4 = i3; i4 > 0; i4--) {
            int iB = aVar4.b(modulusGF2.f5291a[i4]);
            iArr3[i3 - i4] = iB;
            if (iB != 0) {
                z = true;
            }
        }
        if (z) {
            a aVarG = modulusGF2.d;
            int length = iArr2.length;
            int i5 = 0;
            while (true) {
                i2 = modulusGF2.e;
                if (i5 >= length) {
                    break;
                }
                aVarG = aVarG.g(new a(modulusGF2, new int[]{(i2 - modulusGF2.f5291a[(iArr.length - 1) - iArr2[i5]]) % i2, 1}));
                i5++;
            }
            a aVar5 = new a(modulusGF2, iArr3);
            if (i3 < 0) {
                throw new IllegalArgumentException();
            }
            int[] iArr4 = new int[i3 + 1];
            iArr4[0] = 1;
            a aVar6 = new a(modulusGF2, iArr4);
            if (aVar6.d() >= aVar5.d()) {
                aVar6 = aVar5;
                aVar5 = aVar6;
            }
            a aVar7 = modulusGF2.c;
            a aVar8 = modulusGF2.d;
            a aVar9 = aVar6;
            a aVarH = aVar5;
            a aVar10 = aVar9;
            a aVar11 = aVar7;
            while (aVar10.d() >= i3 / 2) {
                if (aVar10.e()) {
                    throw ChecksumException.getChecksumInstance();
                }
                int iA = modulusGF2.a(aVar10.c(aVar10.d()));
                a aVarA = aVar7;
                while (aVarH.d() >= aVar10.d() && !aVarH.e()) {
                    int iD = aVarH.d() - aVar10.d();
                    int iB2 = modulusGF2.b(aVarH.c(aVarH.d()), iA);
                    if (iD < 0) {
                        throw new IllegalArgumentException();
                    }
                    if (iB2 == 0) {
                        aVar = aVar7;
                    } else {
                        int[] iArr5 = new int[iD + 1];
                        iArr5[c] = iB2;
                        aVar = new a(modulusGF2, iArr5);
                    }
                    aVarA = aVarA.a(aVar);
                    if (iD < 0) {
                        throw new IllegalArgumentException();
                    }
                    ModulusGF modulusGF3 = aVar10.f5293a;
                    if (iB2 == 0) {
                        aVar3 = modulusGF3.c;
                        aVar2 = aVar7;
                    } else {
                        int[] iArr6 = aVar10.f5294b;
                        int length2 = iArr6.length;
                        int[] iArr7 = new int[iD + length2];
                        aVar2 = aVar7;
                        int i6 = 0;
                        while (i6 < length2) {
                            iArr7[i6] = modulusGF3.b(iArr6[i6], iB2);
                            i6++;
                            length2 = length2;
                        }
                        aVar3 = new a(modulusGF3, iArr7);
                    }
                    aVarH = aVarH.h(aVar3);
                    aVar7 = aVar2;
                    c = 0;
                }
                a aVar12 = aVar7;
                a aVarH2 = aVarA.g(aVar8).h(aVar11);
                int[] iArr8 = aVarH2.f5294b;
                int length3 = iArr8.length;
                int[] iArr9 = new int[length3];
                int i7 = 0;
                while (true) {
                    modulusGF = aVarH2.f5293a;
                    if (i7 < length3) {
                        int i8 = iArr8[i7];
                        int i9 = modulusGF.e;
                        iArr9[i7] = (i9 - i8) % i9;
                        i7++;
                    }
                }
                a aVar13 = new a(modulusGF, iArr9);
                a aVar14 = aVarH;
                aVarH = aVar10;
                aVar10 = aVar14;
                aVar7 = aVar12;
                aVar11 = aVar8;
                c = 0;
                aVar8 = aVar13;
                i3 = i;
            }
            int iC = aVar8.c(0);
            if (iC == 0) {
                throw ChecksumException.getChecksumInstance();
            }
            int iA2 = modulusGF2.a(iC);
            a[] aVarArr = {aVar8.f(iA2), aVar10.f(iA2)};
            a aVar15 = aVarArr[0];
            a aVar16 = aVarArr[1];
            int iD2 = aVar15.d();
            int[] iArr10 = new int[iD2];
            int i10 = 0;
            for (int i11 = 1; i11 < i2 && i10 < iD2; i11++) {
                if (aVar15.b(i11) == 0) {
                    iArr10[i10] = modulusGF2.a(i11);
                    i10++;
                }
            }
            if (i10 != iD2) {
                throw ChecksumException.getChecksumInstance();
            }
            int iD3 = aVar15.d();
            int[] iArr11 = new int[iD3];
            for (int i12 = 1; i12 <= iD3; i12++) {
                iArr11[iD3 - i12] = modulusGF2.b(i12, aVar15.c(i12));
            }
            a aVar17 = new a(modulusGF2, iArr11);
            int[] iArr12 = new int[iD2];
            for (int i13 = 0; i13 < iD2; i13++) {
                int iA3 = modulusGF2.a(iArr10[i13]);
                iArr12[i13] = modulusGF2.b((i2 - aVar16.b(iA3)) % i2, modulusGF2.a(aVar17.b(iA3)));
            }
            for (int i14 = 0; i14 < iD2; i14++) {
                int length4 = iArr.length - 1;
                int i15 = iArr10[i14];
                if (i15 == 0) {
                    throw new IllegalArgumentException();
                }
                int i16 = length4 - modulusGF2.f5292b[i15];
                if (i16 < 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                iArr[i16] = ((iArr[i16] + i2) - iArr12[i14]) % i2;
            }
        }
    }
}
