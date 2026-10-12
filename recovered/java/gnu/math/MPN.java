package gnu.math;

/* loaded from: classes2.dex */
class MPN {
    public static int chars_per_word(int i) {
        if (i < 10) {
            if (i >= 8) {
                return 10;
            }
            if (i <= 2) {
                return 32;
            }
            if (i == 3) {
                return 20;
            }
            if (i == 4) {
                return 16;
            }
            return 18 - i;
        }
        if (i < 12) {
            return 9;
        }
        if (i <= 16) {
            return 8;
        }
        if (i <= 23) {
            return 7;
        }
        if (i <= 40) {
            return 6;
        }
        return i <= 256 ? 4 : 1;
    }

    public static int count_leading_zeros(int i) {
        if (i == 0) {
            return 32;
        }
        int i2 = 0;
        for (int i3 = 16; i3 > 0; i3 >>= 1) {
            int i4 = i >>> i3;
            if (i4 == 0) {
                i2 += i3;
            } else {
                i = i4;
            }
        }
        return i2;
    }

    public static int findLowestBit(int i) {
        int i2 = 0;
        while ((i & 15) == 0) {
            i >>= 4;
            i2 += 4;
        }
        if ((i & 3) == 0) {
            i >>= 2;
            i2 += 2;
        }
        return (i & 1) == 0 ? i2 + 1 : i2;
    }

    public static int add_1(int[] iArr, int[] iArr2, int i, int i2) {
        long j = i2 & 4294967295L;
        for (int i3 = 0; i3 < i; i3++) {
            long j2 = j + (iArr2[i3] & 4294967295L);
            iArr[i3] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int add_n(int[] iArr, int[] iArr2, int[] iArr3, int i) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = (iArr2[i2] & 4294967295L) + (4294967295L & iArr3[i2]) + j;
            iArr[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int sub_n(int[] iArr, int[] iArr2, int[] iArr3, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr3[i3];
            int i5 = iArr2[i3];
            int i6 = i4 + i2;
            int i7 = 1;
            int i8 = (i6 ^ Integer.MIN_VALUE) < (i2 ^ Integer.MIN_VALUE) ? 1 : 0;
            int i9 = i5 - i6;
            if ((i9 ^ Integer.MIN_VALUE) <= (i5 ^ Integer.MIN_VALUE)) {
                i7 = 0;
            }
            i2 = i8 + i7;
            iArr[i3] = i9;
        }
        return i2;
    }

    public static int mul_1(int[] iArr, int[] iArr2, int i, int i2) {
        long j = i2 & 4294967295L;
        long j2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long j3 = ((iArr2[i3] & 4294967295L) * j) + j2;
            iArr[i3] = (int) j3;
            j2 = j3 >>> 32;
        }
        return (int) j2;
    }

    public static void mul(int[] iArr, int[] iArr2, int i, int[] iArr3, int i2) {
        iArr[i] = mul_1(iArr, iArr2, i, iArr3[0]);
        for (int i3 = 1; i3 < i2; i3++) {
            long j = 4294967295L;
            long j2 = iArr3[i3] & 4294967295L;
            long j3 = 0;
            int i4 = 0;
            while (i4 < i) {
                long j4 = j;
                long j5 = ((iArr2[i4] & j) * j2) + (iArr[r15] & j4) + j3;
                iArr[i3 + i4] = (int) j5;
                j3 = j5 >>> 32;
                i4++;
                j = j4;
            }
            iArr[i3 + i] = (int) j3;
        }
    }

    public static long udiv_qrnnd(long j, int i) {
        long j2;
        long j3;
        char c;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9 = j >>> 32;
        long j10 = j & 4294967295L;
        if (i >= 0) {
            long j11 = i;
            if (j9 < (((j11 - j9) - (j10 >>> 31)) & 4294967295L)) {
                j4 = j / j11;
                j5 = j % j11;
                c = ' ';
            } else {
                long j12 = j - (j11 << 31);
                long j13 = j12 / j11;
                j8 = j12 % j11;
                j3 = j13 - 2147483648L;
                long j14 = j3;
                j5 = j8;
                j4 = j14;
                c = ' ';
            }
        } else {
            long j15 = i >>> 1;
            long j16 = j >>> 1;
            if (j9 < j15 || (j9 >> 1) < j15) {
                if (j9 < j15) {
                    j3 = j16 / j15;
                    j2 = j16 % j15;
                } else {
                    long j17 = ~(j16 - (j15 << 32));
                    j2 = (j15 - 1) - (j17 % j15);
                    j3 = (~(j17 / j15)) & 4294967295L;
                }
                long j18 = (j2 * 2) + (j & 1);
                if ((i & 1) == 0) {
                    c = ' ';
                    j4 = j3;
                    j5 = j18;
                } else if (j18 >= j3) {
                    j8 = j18 - j3;
                    long j142 = j3;
                    j5 = j8;
                    j4 = j142;
                    c = ' ';
                } else {
                    c = ' ';
                    long j19 = i;
                    if (j3 - j18 <= (j19 & 4294967295L)) {
                        j6 = j19 + (j18 - j3);
                        j7 = j3 - 1;
                    } else {
                        j6 = j19 + (j18 - j3) + j19;
                        j7 = j3 - 2;
                    }
                    long j20 = j7;
                    j5 = j6;
                    j4 = j20;
                }
            } else {
                if (j10 >= ((-i) & 4294967295L)) {
                    j5 = j10 + i;
                    j4 = -1;
                } else {
                    long j21 = i;
                    j5 = j10 + j21 + j21;
                    j4 = -2;
                }
                c = ' ';
            }
        }
        return (j5 << c) | (j4 & 4294967295L);
    }

    public static int divmod_1(int[] iArr, int[] iArr2, int i, int i2) {
        long jUdiv_qrnnd;
        int i3 = i - 1;
        long j = iArr2[i3];
        if ((j & 4294967295L) >= (i2 & 4294967295L)) {
            jUdiv_qrnnd = 0;
        } else {
            iArr[i3] = 0;
            jUdiv_qrnnd = j << 32;
            i3 = i - 2;
        }
        while (i3 >= 0) {
            jUdiv_qrnnd = udiv_qrnnd((jUdiv_qrnnd & (-4294967296L)) | (iArr2[i3] & 4294967295L), i2);
            iArr[i3] = (int) jUdiv_qrnnd;
            i3--;
        }
        return (int) (jUdiv_qrnnd >> 32);
    }

    public static int submul_1(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = i3 & 4294967295L;
        int i4 = 0;
        int i5 = 0;
        do {
            long j2 = (iArr2[i4] & 4294967295L) * j;
            int i6 = ((int) j2) + i5;
            i5 = ((i6 ^ Integer.MIN_VALUE) < (i5 ^ Integer.MIN_VALUE) ? 1 : 0) + ((int) (j2 >> 32));
            int i7 = i + i4;
            int i8 = iArr[i7];
            int i9 = i8 - i6;
            if ((i9 ^ Integer.MIN_VALUE) > (Integer.MIN_VALUE ^ i8)) {
                i5++;
            }
            iArr[i7] = i9;
            i4++;
        } while (i4 < i2);
        return i5;
    }

    public static void divide(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = i;
        do {
            int i4 = iArr[i3];
            int i5 = iArr2[i2 - 1];
            long j = 4294967295L;
            int iUdiv_qrnnd = i4 == i5 ? -1 : (int) udiv_qrnnd((i4 << 32) + (iArr[i3 - 1] & 4294967295L), i5);
            if (iUdiv_qrnnd != 0) {
                int i6 = i3 - i2;
                long jSubmul_1 = (iArr[i3] & 4294967295L) - (submul_1(iArr, i6, iArr2, i2, iUdiv_qrnnd) & 4294967295L);
                while (true) {
                    long j2 = 0;
                    if (jSubmul_1 == 0) {
                        break;
                    }
                    iUdiv_qrnnd--;
                    int i7 = 0;
                    while (i7 < i2) {
                        long j3 = j;
                        long j4 = (iArr[r10] & j) + (iArr2[i7] & j3) + j2;
                        iArr[i6 + i7] = (int) j4;
                        j2 = j4 >>> 32;
                        i7++;
                        j = j3;
                    }
                    iArr[i3] = (int) (iArr[i3] + j2);
                    jSubmul_1 = j2 - 1;
                    j = j;
                }
            }
            iArr[i3] = iUdiv_qrnnd;
            i3--;
        } while (i3 >= i2);
    }

    public static int set_str(int[] iArr, byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (((i2 - 1) & i2) == 0) {
            int i4 = 0;
            while (true) {
                i2 >>= 1;
                if (i2 == 0) {
                    break;
                }
                i4++;
            }
            int i5 = 0;
            int i6 = 0;
            while (true) {
                i--;
                if (i < 0) {
                    break;
                }
                int i7 = bArr[i];
                i3 |= i7 << i5;
                i5 += i4;
                if (i5 >= 32) {
                    iArr[i6] = i3;
                    i5 -= 32;
                    i3 = i7 >> (i4 - i5);
                    i6++;
                }
            }
            if (i3 == 0) {
                return i6;
            }
            int i8 = i6 + 1;
            iArr[i6] = i3;
            return i8;
        }
        int iChars_per_word = chars_per_word(i2);
        int i9 = 0;
        while (i3 < i) {
            int i10 = i - i3;
            if (i10 > iChars_per_word) {
                i10 = iChars_per_word;
            }
            int i11 = i3 + 1;
            int iAdd_1 = bArr[i3];
            int i12 = i2;
            while (true) {
                i10--;
                if (i10 <= 0) {
                    break;
                }
                iAdd_1 = (iAdd_1 * i2) + bArr[i11];
                i12 *= i2;
                i11++;
            }
            if (i9 != 0) {
                iAdd_1 = add_1(iArr, iArr, i9, iAdd_1) + mul_1(iArr, iArr, i9, i12);
            }
            if (iAdd_1 != 0) {
                iArr[i9] = iAdd_1;
                i9++;
            }
            i3 = i11;
        }
        return i9;
    }

    public static int cmp(int[] iArr, int[] iArr2, int i) {
        int i2;
        int i3;
        do {
            i--;
            if (i < 0) {
                return 0;
            }
            i2 = iArr[i];
            i3 = iArr2[i];
        } while (i2 == i3);
        return (i2 ^ Integer.MIN_VALUE) > (Integer.MIN_VALUE ^ i3) ? 1 : -1;
    }

    public static int cmp(int[] iArr, int i, int[] iArr2, int i2) {
        if (i > i2) {
            return 1;
        }
        if (i < i2) {
            return -1;
        }
        return cmp(iArr, iArr2, i);
    }

    public static int rshift(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        int i4 = 32 - i3;
        int i5 = iArr2[i];
        int i6 = i5 << i4;
        int i7 = 1;
        while (i7 < i2) {
            int i8 = iArr2[i + i7];
            iArr[i7 - 1] = (i5 >>> i3) | (i8 << i4);
            i7++;
            i5 = i8;
        }
        iArr[i7 - 1] = i5 >>> i3;
        return i6;
    }

    public static void rshift0(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        if (i3 > 0) {
            rshift(iArr, iArr2, i, i2, i3);
            return;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            iArr[i4] = iArr2[i4 + i];
        }
    }

    public static long rshift_long(int[] iArr, int i, int i2) {
        int i3 = i2 >> 5;
        int i4 = i2 & 31;
        int i5 = iArr[i + (-1)] < 0 ? -1 : 0;
        int i6 = i3 >= i ? i5 : iArr[i3];
        int i7 = i3 + 1;
        int i8 = i7 >= i ? i5 : iArr[i7];
        if (i4 != 0) {
            int i9 = i3 + 2;
            if (i9 < i) {
                i5 = iArr[i9];
            }
            int i10 = 32 - i4;
            i6 = (i6 >>> i4) | (i8 << i10);
            i8 = (i8 >>> i4) | (i5 << i10);
        }
        return (i8 << 32) | (i6 & 4294967295L);
    }

    public static int lshift(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        int i4 = 32 - i3;
        int i5 = i2 - 1;
        int i6 = iArr2[i5];
        int i7 = i6 >>> i4;
        int i8 = i + 1;
        while (true) {
            i5--;
            if (i5 >= 0) {
                int i9 = iArr2[i5];
                iArr[i8 + i5] = (i6 << i3) | (i9 >>> i4);
                i6 = i9;
            } else {
                iArr[i8 + i5] = i6 << i3;
                return i7;
            }
        }
    }

    public static int findLowestBit(int[] iArr) {
        int i = 0;
        while (true) {
            int i2 = iArr[i];
            if (i2 != 0) {
                return (i * 32) + findLowestBit(i2);
            }
            i++;
        }
    }

    public static int gcd(int[] iArr, int[] iArr2, int i) {
        int i2;
        int i3;
        int[] iArr3;
        int i4 = 0;
        while (true) {
            i2 = iArr[i4] | iArr2[i4];
            if (i2 != 0) {
                break;
            }
            i4++;
        }
        int iFindLowestBit = findLowestBit(i2);
        int i5 = i - i4;
        rshift0(iArr, iArr, i4, i5, iFindLowestBit);
        rshift0(iArr2, iArr2, i4, i5, iFindLowestBit);
        if ((iArr[0] & 1) != 0) {
            i3 = i5;
            iArr3 = iArr;
        } else {
            i3 = i5;
            iArr3 = iArr2;
            iArr2 = iArr;
        }
        while (true) {
            int i6 = 0;
            while (iArr2[i6] == 0) {
                i6++;
            }
            if (i6 > 0) {
                int i7 = 0;
                while (i7 < i3 - i6) {
                    iArr2[i7] = iArr2[i7 + i6];
                    i7++;
                }
                while (i7 < i3) {
                    iArr2[i7] = 0;
                    i7++;
                }
            }
            int iFindLowestBit2 = findLowestBit(iArr2[0]);
            if (iFindLowestBit2 > 0) {
                rshift(iArr2, iArr2, 0, i3, iFindLowestBit2);
            }
            int iCmp = cmp(iArr3, iArr2, i3);
            if (iCmp == 0) {
                break;
            }
            if (iCmp > 0) {
                sub_n(iArr3, iArr3, iArr2, i3);
                int[] iArr4 = iArr3;
                iArr3 = iArr2;
                iArr2 = iArr4;
            } else {
                sub_n(iArr2, iArr2, iArr3, i3);
            }
            while (true) {
                int i8 = i3 - 1;
                if (iArr3[i8] != 0 || iArr2[i8] != 0) {
                    break;
                }
                i3--;
            }
        }
        if (i4 + iFindLowestBit <= 0) {
            return i3;
        }
        if (iFindLowestBit <= 0) {
            int i9 = i3;
            while (true) {
                i9--;
                if (i9 < 0) {
                    break;
                }
                iArr[i9 + i4] = iArr[i9];
            }
        } else {
            int iLshift = lshift(iArr, i4, iArr, i3, iFindLowestBit);
            if (iLshift != 0) {
                iArr[i3 + i4] = iLshift;
                i3++;
            }
        }
        int i10 = i4;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i3 + i4;
            }
            iArr[i10] = 0;
        }
    }

    public static int intLength(int i) {
        if (i < 0) {
            i = ~i;
        }
        return 32 - count_leading_zeros(i);
    }

    public static int intLength(int[] iArr, int i) {
        int i2 = i - 1;
        return (i2 * 32) + intLength(iArr[i2]);
    }
}
