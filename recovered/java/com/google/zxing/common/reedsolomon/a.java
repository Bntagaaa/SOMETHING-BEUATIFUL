package com.google.zxing.common.reedsolomon;

/* loaded from: classes.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final GenericGF f5191a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5192b;

    public a(GenericGF genericGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f5191a = genericGF;
        int length = iArr.length;
        int i = 1;
        if (length > 1 && iArr[0] == 0) {
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i != length) {
                int[] iArr2 = new int[length - i];
                this.f5192b = iArr2;
                System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
                return;
            } else {
                genericGF.b();
                this.f5192b = genericGF.c.f5192b;
                return;
            }
        }
        this.f5192b = iArr;
    }

    public final int d() {
        return this.f5192b.length - 1;
    }

    public final boolean e() {
        return this.f5192b[0] == 0;
    }

    public final int c(int i) {
        return this.f5192b[(r0.length - 1) - i];
    }

    public final int b(int i) {
        if (i == 0) {
            return c(0);
        }
        int[] iArr = this.f5192b;
        int length = iArr.length;
        if (i == 1) {
            int i2 = 0;
            for (int i3 : iArr) {
                GenericGF genericGF = GenericGF.AZTEC_DATA_12;
                i2 ^= i3;
            }
            return i2;
        }
        int iE = iArr[0];
        for (int i4 = 1; i4 < length; i4++) {
            iE = this.f5191a.e(i, iE) ^ iArr[i4];
        }
        return iE;
    }

    public final a a(a aVar) {
        GenericGF genericGF = aVar.f5191a;
        GenericGF genericGF2 = this.f5191a;
        if (!genericGF2.equals(genericGF)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (e()) {
            return aVar;
        }
        if (aVar.e()) {
            return this;
        }
        int[] iArr = this.f5192b;
        int length = iArr.length;
        int[] iArr2 = aVar.f5192b;
        if (length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length2 = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length2);
        for (int i = length2; i < iArr.length; i++) {
            iArr3[i] = iArr2[i - length2] ^ iArr[i];
        }
        return new a(genericGF2, iArr3);
    }

    public final a g(a aVar) {
        GenericGF genericGF = aVar.f5191a;
        GenericGF genericGF2 = this.f5191a;
        if (!genericGF2.equals(genericGF)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (e() || aVar.e()) {
            genericGF2.b();
            return genericGF2.c;
        }
        int[] iArr = this.f5192b;
        int length = iArr.length;
        int[] iArr2 = aVar.f5192b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = iArr3[i4] ^ genericGF2.e(i2, iArr2[i3]);
            }
        }
        return new a(genericGF2, iArr3);
    }

    public final a f(int i) {
        GenericGF genericGF = this.f5191a;
        if (i == 0) {
            genericGF.b();
            return genericGF.c;
        }
        if (i == 1) {
            return this;
        }
        int[] iArr = this.f5192b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = genericGF.e(iArr[i2], i);
        }
        return new a(genericGF, iArr2);
    }

    public final a h(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        GenericGF genericGF = this.f5191a;
        if (i2 == 0) {
            genericGF.b();
            return genericGF.c;
        }
        int[] iArr = this.f5192b;
        int length = iArr.length;
        int[] iArr2 = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr2[i3] = genericGF.e(iArr[i3], i2);
        }
        return new a(genericGF, iArr2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(d() * 8);
        for (int iD = d(); iD >= 0; iD--) {
            int iC = c(iD);
            if (iC != 0) {
                if (iC < 0) {
                    sb.append(" - ");
                    iC = -iC;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iD == 0 || iC != 1) {
                    GenericGF genericGF = this.f5191a;
                    genericGF.b();
                    if (iC == 0) {
                        throw new IllegalArgumentException();
                    }
                    int i = genericGF.f5186b[iC];
                    if (i == 0) {
                        sb.append('1');
                    } else if (i == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i);
                    }
                }
                if (iD != 0) {
                    if (iD == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iD);
                    }
                }
            }
        }
        return sb.toString();
    }
}
