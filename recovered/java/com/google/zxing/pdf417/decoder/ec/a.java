package com.google.zxing.pdf417.decoder.ec;

/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final ModulusGF f5293a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5294b;

    public a(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f5293a = modulusGF;
        int length = iArr.length;
        int i = 1;
        if (length > 1 && iArr[0] == 0) {
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.f5294b = modulusGF.c.f5294b;
                return;
            }
            int[] iArr2 = new int[length - i];
            this.f5294b = iArr2;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        this.f5294b = iArr;
    }

    public final int d() {
        return this.f5294b.length - 1;
    }

    public final boolean e() {
        return this.f5294b[0] == 0;
    }

    public final int c(int i) {
        return this.f5294b[(r0.length - 1) - i];
    }

    public final int b(int i) {
        if (i == 0) {
            return c(0);
        }
        int[] iArr = this.f5294b;
        int length = iArr.length;
        ModulusGF modulusGF = this.f5293a;
        if (i == 1) {
            int i2 = 0;
            for (int i3 : iArr) {
                i2 = (i2 + i3) % modulusGF.e;
            }
            return i2;
        }
        int iB = iArr[0];
        for (int i4 = 1; i4 < length; i4++) {
            iB = (modulusGF.b(i, iB) + iArr[i4]) % modulusGF.e;
        }
        return iB;
    }

    public final a a(a aVar) {
        ModulusGF modulusGF = aVar.f5293a;
        ModulusGF modulusGF2 = this.f5293a;
        if (!modulusGF2.equals(modulusGF)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (e()) {
            return aVar;
        }
        if (aVar.e()) {
            return this;
        }
        int[] iArr = this.f5294b;
        int length = iArr.length;
        int[] iArr2 = aVar.f5294b;
        if (length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length2 = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length2);
        for (int i = length2; i < iArr.length; i++) {
            iArr3[i] = (iArr2[i - length2] + iArr[i]) % modulusGF2.e;
        }
        return new a(modulusGF2, iArr3);
    }

    public final a h(a aVar) {
        if (!this.f5293a.equals(aVar.f5293a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (aVar.e()) {
            return this;
        }
        int[] iArr = aVar.f5294b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i = 0;
        while (true) {
            ModulusGF modulusGF = aVar.f5293a;
            if (i >= length) {
                return a(new a(modulusGF, iArr2));
            }
            int i2 = iArr[i];
            int i3 = modulusGF.e;
            iArr2[i] = (i3 - i2) % i3;
            i++;
        }
    }

    public final a g(a aVar) {
        ModulusGF modulusGF = aVar.f5293a;
        ModulusGF modulusGF2 = this.f5293a;
        if (!modulusGF2.equals(modulusGF)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (e() || aVar.e()) {
            return modulusGF2.c;
        }
        int[] iArr = this.f5294b;
        int length = iArr.length;
        int[] iArr2 = aVar.f5294b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = (modulusGF2.b(i2, iArr2[i3]) + iArr3[i4]) % modulusGF2.e;
            }
        }
        return new a(modulusGF2, iArr3);
    }

    public final a f(int i) {
        ModulusGF modulusGF = this.f5293a;
        if (i == 0) {
            return modulusGF.c;
        }
        if (i == 1) {
            return this;
        }
        int[] iArr = this.f5294b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = modulusGF.b(iArr[i2], i);
        }
        return new a(modulusGF, iArr2);
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
                    sb.append(iC);
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
