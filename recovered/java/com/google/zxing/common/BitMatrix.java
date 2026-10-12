package com.google.zxing.common;

import _COROUTINE.a;

/* loaded from: classes.dex */
public final class BitMatrix {

    /* renamed from: a, reason: collision with root package name */
    public final int f5164a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5165b;
    public final int c;
    public final int[] d;

    public BitMatrix(int i) {
        this(i, i);
    }

    public BitMatrix(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f5164a = i;
        this.f5165b = i2;
        int i3 = (i + 31) >> 5;
        this.c = i3;
        this.d = new int[i3 * i2];
    }

    public boolean get(int i, int i2) {
        return ((this.d[(i2 * this.c) + (i >> 5)] >>> (i & 31)) & 1) != 0;
    }

    public void set(int i, int i2) {
        int i3 = (i2 * this.c) + (i >> 5);
        int[] iArr = this.d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public void flip(int i, int i2) {
        int i3 = (i2 * this.c) + (i >> 5);
        int[] iArr = this.d;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public void clear() {
        int[] iArr = this.d;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = 0;
        }
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 < 1 || i3 < 1) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f5165b || i5 > this.f5164a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.c * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int i9 = (i8 >> 5) + i7;
                int[] iArr = this.d;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public BitArray getRow(int i, BitArray bitArray) {
        int i2 = this.f5164a;
        if (bitArray == null || bitArray.getSize() < i2) {
            bitArray = new BitArray(i2);
        }
        int i3 = this.c;
        int i4 = i * i3;
        for (int i5 = 0; i5 < i3; i5++) {
            bitArray.setBulk(i5 << 5, this.d[i4 + i5]);
        }
        return bitArray;
    }

    public void setRow(int i, BitArray bitArray) {
        int[] bitArray2 = bitArray.getBitArray();
        int i2 = this.c;
        System.arraycopy(bitArray2, 0, this.d, i * i2, i2);
    }

    public int[] getEnclosingRectangle() {
        int i = this.f5164a;
        int i2 = this.f5165b;
        int i3 = -1;
        int i4 = i2;
        int i5 = -1;
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = 0;
            while (true) {
                int i8 = this.c;
                if (i7 < i8) {
                    int i9 = this.d[(i8 * i6) + i7];
                    if (i9 != 0) {
                        if (i6 < i4) {
                            i4 = i6;
                        }
                        if (i6 > i5) {
                            i5 = i6;
                        }
                        int i10 = i7 * 32;
                        if (i10 < i) {
                            int i11 = 0;
                            while ((i9 << (31 - i11)) == 0) {
                                i11++;
                            }
                            int i12 = i11 + i10;
                            if (i12 < i) {
                                i = i12;
                            }
                        }
                        if (i10 + 31 > i3) {
                            int i13 = 31;
                            while ((i9 >>> i13) == 0) {
                                i13--;
                            }
                            int i14 = i10 + i13;
                            if (i14 > i3) {
                                i3 = i14;
                            }
                        }
                    }
                    i7++;
                }
            }
        }
        int i15 = i3 - i;
        int i16 = i5 - i4;
        if (i15 < 0 || i16 < 0) {
            return null;
        }
        return new int[]{i, i4, i15, i16};
    }

    public int[] getTopLeftOnBit() {
        int[] iArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            iArr = this.d;
            if (i2 >= iArr.length || iArr[i2] != 0) {
                break;
            }
            i2++;
        }
        if (i2 == iArr.length) {
            return null;
        }
        int i3 = this.c;
        int i4 = i2 / i3;
        int i5 = (i2 % i3) << 5;
        while ((iArr[i2] << (31 - i)) == 0) {
            i++;
        }
        return new int[]{i5 + i, i4};
    }

    public int[] getBottomRightOnBit() {
        int[] iArr = this.d;
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.c;
        int i2 = length / i;
        int i3 = (length % i) << 5;
        int i4 = iArr[length];
        int i5 = 31;
        while ((i4 >>> i5) == 0) {
            i5--;
        }
        return new int[]{i3 + i5, i2};
    }

    public int getWidth() {
        return this.f5164a;
    }

    public int getHeight() {
        return this.f5165b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        if (this.f5164a == bitMatrix.f5164a && this.f5165b == bitMatrix.f5165b && this.c == bitMatrix.c) {
            int[] iArr = this.d;
            int length = iArr.length;
            int[] iArr2 = bitMatrix.d;
            if (length == iArr2.length) {
                for (int i = 0; i < iArr.length; i++) {
                    if (iArr[i] != iArr2[i]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f5164a;
        int iB = ((a.b(i, 31, i, 31) + this.f5165b) * 31) + this.c;
        for (int i2 : this.d) {
            iB = (iB * 31) + i2;
        }
        return iB;
    }

    public String toString() {
        int i = this.f5164a;
        int i2 = this.f5165b;
        StringBuilder sb = new StringBuilder((i + 1) * i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                sb.append(get(i4, i3) ? "X " : "  ");
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
