package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ReedSolomonEncoder {

    /* renamed from: a, reason: collision with root package name */
    public final GenericGF f5189a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5190b;

    public ReedSolomonEncoder(GenericGF genericGF) {
        if (!GenericGF.QR_CODE_FIELD_256.equals(genericGF)) {
            throw new IllegalArgumentException("Only QR Code is supported at this time");
        }
        this.f5189a = genericGF;
        ArrayList arrayList = new ArrayList();
        this.f5190b = arrayList;
        arrayList.add(new a(genericGF, new int[]{1}));
    }

    public void encode(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length > 0) {
            ArrayList arrayList = this.f5190b;
            int size = arrayList.size();
            GenericGF genericGF = this.f5189a;
            if (i >= size) {
                a aVarG = (a) arrayList.get(arrayList.size() - 1);
                for (int size2 = arrayList.size(); size2 <= i; size2++) {
                    genericGF.b();
                    aVarG = aVarG.g(new a(genericGF, new int[]{1, genericGF.f5185a[size2 - 1]}));
                    arrayList.add(aVarG);
                }
            }
            a aVar = (a) arrayList.get(i);
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            a aVarH = new a(genericGF, iArr2).h(i, 1);
            aVarH.getClass();
            GenericGF genericGF2 = aVar.f5191a;
            GenericGF genericGF3 = aVarH.f5191a;
            if (!genericGF3.equals(genericGF2)) {
                throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
            }
            if (!aVar.e()) {
                genericGF3.b();
                a aVarA = genericGF3.c;
                int iD = genericGF3.d(aVar.c(aVar.d()));
                while (aVarH.d() >= aVar.d() && !aVarH.e()) {
                    int iD2 = aVarH.d() - aVar.d();
                    int iE = genericGF3.e(aVarH.c(aVarH.d()), iD);
                    a aVarH2 = aVar.h(iD2, iE);
                    aVarA = aVarA.a(genericGF3.a(iD2, iE));
                    aVarH = aVarH.a(aVarH2);
                }
                int[] iArr3 = new a[]{aVarA, aVarH}[1].f5192b;
                int length2 = i - iArr3.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    iArr[length + i2] = 0;
                }
                System.arraycopy(iArr3, 0, iArr, length + length2, iArr3.length);
                return;
            }
            throw new IllegalArgumentException("Divide by 0");
        }
        throw new IllegalArgumentException("No data bytes provided");
    }
}
