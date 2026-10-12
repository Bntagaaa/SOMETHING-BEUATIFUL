package com.google.zxing.common;

/* loaded from: classes.dex */
public final class BitArray {

    /* renamed from: a, reason: collision with root package name */
    public int[] f5162a;

    /* renamed from: b, reason: collision with root package name */
    public int f5163b;

    public BitArray() {
        this.f5163b = 0;
        this.f5162a = new int[1];
    }

    public BitArray(int i) {
        this.f5163b = i;
        this.f5162a = new int[(i + 31) >> 5];
    }

    public int getSize() {
        return this.f5163b;
    }

    public int getSizeInBytes() {
        return (this.f5163b + 7) >> 3;
    }

    public final void a(int i) {
        int[] iArr = this.f5162a;
        if (i > (iArr.length << 5)) {
            int[] iArr2 = new int[(i + 31) >> 5];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f5162a = iArr2;
        }
    }

    public boolean get(int i) {
        return ((1 << (i & 31)) & this.f5162a[i >> 5]) != 0;
    }

    public void set(int i) {
        int[] iArr = this.f5162a;
        int i2 = i >> 5;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public void flip(int i) {
        int[] iArr = this.f5162a;
        int i2 = i >> 5;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public int getNextSet(int i) {
        int i2 = this.f5163b;
        if (i >= i2) {
            return i2;
        }
        int i3 = i >> 5;
        int i4 = (~((1 << (i & 31)) - 1)) & this.f5162a[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f5162a;
            if (i3 == iArr.length) {
                return this.f5163b;
            }
            i4 = iArr[i3];
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i4) + (i3 << 5);
        int i5 = this.f5163b;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    public int getNextUnset(int i) {
        int i2 = this.f5163b;
        if (i >= i2) {
            return i2;
        }
        int i3 = i >> 5;
        int i4 = (~((1 << (i & 31)) - 1)) & (~this.f5162a[i3]);
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f5162a;
            if (i3 == iArr.length) {
                return this.f5163b;
            }
            i4 = ~iArr[i3];
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i4) + (i3 << 5);
        int i5 = this.f5163b;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    public void setBulk(int i, int i2) {
        this.f5162a[i >> 5] = i2;
    }

    public void setRange(int i, int i2) {
        if (i2 < i) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i >> 5;
        int i5 = i3 >> 5;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 0;
            int i8 = i6 > i4 ? 0 : i & 31;
            int i9 = i6 < i5 ? 31 : i3 & 31;
            if (i8 == 0 && i9 == 31) {
                i7 = -1;
            } else {
                while (i8 <= i9) {
                    i7 |= 1 << i8;
                    i8++;
                }
            }
            int[] iArr = this.f5162a;
            iArr[i6] = i7 | iArr[i6];
            i6++;
        }
    }

    public void clear() {
        int length = this.f5162a.length;
        for (int i = 0; i < length; i++) {
            this.f5162a[i] = 0;
        }
    }

    public boolean isRange(int i, int i2, boolean z) {
        int i3;
        if (i2 < i) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i4 = i2 - 1;
        int i5 = i >> 5;
        int i6 = i4 >> 5;
        int i7 = i5;
        while (i7 <= i6) {
            int i8 = i7 > i5 ? 0 : i & 31;
            int i9 = i7 < i6 ? 31 : i4 & 31;
            if (i8 == 0 && i9 == 31) {
                i3 = -1;
            } else {
                i3 = 0;
                while (i8 <= i9) {
                    i3 |= 1 << i8;
                    i8++;
                }
            }
            int i10 = this.f5162a[i7] & i3;
            if (!z) {
                i3 = 0;
            }
            if (i10 != i3) {
                return false;
            }
            i7++;
        }
        return true;
    }

    public void appendBit(boolean z) {
        a(this.f5163b + 1);
        if (z) {
            int[] iArr = this.f5162a;
            int i = this.f5163b;
            int i2 = i >> 5;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f5163b++;
    }

    public void appendBits(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        a(this.f5163b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            appendBit(z);
            i2--;
        }
    }

    public void appendBitArray(BitArray bitArray) {
        int i = bitArray.f5163b;
        a(this.f5163b + i);
        for (int i2 = 0; i2 < i; i2++) {
            appendBit(bitArray.get(i2));
        }
    }

    public void xor(BitArray bitArray) {
        if (this.f5162a.length != bitArray.f5162a.length) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f5162a;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ bitArray.f5162a[i];
            i++;
        }
    }

    public void toBytes(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (get(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public int[] getBitArray() {
        return this.f5162a;
    }

    public void reverse() {
        int[] iArr = new int[this.f5162a.length];
        int i = this.f5163b;
        for (int i2 = 0; i2 < i; i2++) {
            if (get((i - i2) - 1)) {
                int i3 = i2 >> 5;
                iArr[i3] = (1 << (i2 & 31)) | iArr[i3];
            }
        }
        this.f5162a = iArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f5163b);
        for (int i = 0; i < this.f5163b; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(get(i) ? 'X' : '.');
        }
        return sb.toString();
    }
}
