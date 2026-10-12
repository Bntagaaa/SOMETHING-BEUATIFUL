package gnu.math;

/* loaded from: classes2.dex */
public class BitOps {
    static final byte[] bit4_count = {0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4};

    public static int lowestBitSet(int i) {
        if (i == 0) {
            return -1;
        }
        int i2 = 0;
        while ((i & 255) == 0) {
            i >>>= 8;
            i2 += 8;
        }
        while ((i & 3) == 0) {
            i >>>= 2;
            i2 += 2;
        }
        return (i & 1) == 0 ? i2 + 1 : i2;
    }

    private BitOps() {
    }

    public static boolean bitValue(IntNum intNum, int i) {
        int i2 = intNum.ival;
        int[] iArr = intNum.words;
        if (iArr == null) {
            return i >= 32 ? i2 < 0 : ((i2 >> i) & 1) != 0;
        }
        int i3 = i >> 5;
        return i3 >= i2 ? iArr[i2 - 1] < 0 : ((iArr[i3] >> i) & 1) != 0;
    }

    public static int[] dataBufferFor(IntNum intNum, int i) {
        int i2 = intNum.ival;
        int i3 = (i + 1) >> 5;
        if (intNum.words == null) {
            if (i3 == 0) {
                i3 = 1;
            }
            int[] iArr = new int[i3];
            iArr[0] = i2;
            if (i2 < 0) {
                for (int i4 = 1; i4 < i3; i4++) {
                    iArr[i4] = -1;
                }
            }
            return iArr;
        }
        int[] iArr2 = new int[i3 > i2 ? i3 : i2];
        int i5 = i2;
        while (true) {
            i5--;
            if (i5 < 0) {
                break;
            }
            iArr2[i5] = intNum.words[i5];
        }
        if (iArr2[i2 - 1] < 0) {
            while (i2 < i3) {
                iArr2[i2] = -1;
                i2++;
            }
        }
        return iArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        if (r1 == r7) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.math.IntNum setBitValue(gnu.math.IntNum r5, int r6, int r7) {
        /*
            r0 = 1
            r7 = r7 & r0
            int r1 = r5.ival
            int[] r2 = r5.words
            r3 = 31
            if (r2 != 0) goto L24
            if (r6 >= r3) goto Le
            r2 = r6
            goto L10
        Le:
            r2 = 31
        L10:
            int r2 = r1 >> r2
            r2 = r2 & r0
            if (r2 != r7) goto L16
            goto L37
        L16:
            r7 = 63
            if (r6 >= r7) goto L38
            long r1 = (long) r1
            int r5 = r0 << r6
            long r5 = (long) r5
            long r5 = r5 ^ r1
            gnu.math.IntNum r5 = gnu.math.IntNum.make(r5)
            return r5
        L24:
            int r4 = r6 >> 5
            if (r4 < r1) goto L31
            int r1 = r1 - r0
            r1 = r2[r1]
            if (r1 >= 0) goto L2f
            r1 = 1
            goto L35
        L2f:
            r1 = 0
            goto L35
        L31:
            r1 = r2[r4]
            int r1 = r1 >> r6
            r1 = r1 & r0
        L35:
            if (r1 != r7) goto L38
        L37:
            return r5
        L38:
            int[] r5 = dataBufferFor(r5, r6)
            int r7 = r6 >> 5
            r1 = r5[r7]
            r6 = r6 & r3
            int r6 = r0 << r6
            r6 = r6 ^ r1
            r5[r7] = r6
            int r6 = r5.length
            gnu.math.IntNum r5 = gnu.math.IntNum.make(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.BitOps.setBitValue(gnu.math.IntNum, int, int):gnu.math.IntNum");
    }

    public static boolean test(IntNum intNum, int i) {
        int[] iArr = intNum.words;
        return iArr == null ? (intNum.ival & i) != 0 : i < 0 || (iArr[0] & i) != 0;
    }

    public static boolean test(IntNum intNum, IntNum intNum2) {
        if (intNum2.words == null) {
            return test(intNum, intNum2.ival);
        }
        if (intNum.words == null) {
            return test(intNum2, intNum.ival);
        }
        if (intNum.ival < intNum2.ival) {
            intNum2 = intNum;
            intNum = intNum2;
        }
        for (int i = 0; i < intNum2.ival; i++) {
            if ((intNum.words[i] & intNum2.words[i]) != 0) {
                return true;
            }
        }
        return intNum2.isNegative();
    }

    public static IntNum and(IntNum intNum, int i) {
        int[] iArr = intNum.words;
        if (iArr == null) {
            return IntNum.make(intNum.ival & i);
        }
        if (i >= 0) {
            return IntNum.make(iArr[0] & i);
        }
        int i2 = intNum.ival;
        int[] iArr2 = new int[i2];
        iArr2[0] = i & iArr[0];
        while (true) {
            i2--;
            if (i2 > 0) {
                iArr2[i2] = intNum.words[i2];
            } else {
                return IntNum.make(iArr2, intNum.ival);
            }
        }
    }

    public static IntNum and(IntNum intNum, IntNum intNum2) {
        if (intNum2.words == null) {
            return and(intNum, intNum2.ival);
        }
        if (intNum.words == null) {
            return and(intNum2, intNum.ival);
        }
        if (intNum.ival >= intNum2.ival) {
            intNum2 = intNum;
            intNum = intNum2;
        }
        int i = intNum.isNegative() ? intNum2.ival : intNum.ival;
        int[] iArr = new int[i];
        int i2 = 0;
        while (i2 < intNum.ival) {
            iArr[i2] = intNum2.words[i2] & intNum.words[i2];
            i2++;
        }
        while (i2 < i) {
            iArr[i2] = intNum2.words[i2];
            i2++;
        }
        return IntNum.make(iArr, i);
    }

    public static IntNum ior(IntNum intNum, IntNum intNum2) {
        return bitOp(7, intNum, intNum2);
    }

    public static IntNum xor(IntNum intNum, IntNum intNum2) {
        return bitOp(6, intNum, intNum2);
    }

    public static IntNum not(IntNum intNum) {
        return bitOp(12, intNum, IntNum.zero());
    }

    public static int swappedOp(int i) {
        return "\u0000\u0001\u0004\u0005\u0002\u0003\u0006\u0007\b\t\f\r\n\u000b\u000e\u000f".charAt(i);
    }

    public static IntNum bitOp(int i, IntNum intNum, IntNum intNum2) {
        if (i == 0) {
            return IntNum.zero();
        }
        if (i == 1) {
            return and(intNum, intNum2);
        }
        if (i == 3) {
            return intNum;
        }
        if (i == 5) {
            return intNum2;
        }
        if (i == 15) {
            return IntNum.minusOne();
        }
        IntNum intNum3 = new IntNum();
        setBitOp(intNum3, i, intNum, intNum2);
        return intNum3.canonicalize();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x003f A[PHI: r4 r11
      0x003f: PHI (r4v46 int) = 
      (r4v5 int)
      (r4v8 int)
      (r4v12 int)
      (r4v15 int)
      (r4v20 int)
      (r4v24 int)
      (r4v30 int)
      (r4v33 int)
      (r4v38 int)
      (r4v43 int)
      (r4v47 int)
     binds: [B:95:0x0142, B:89:0x012c, B:82:0x0112, B:77:0x00fc, B:65:0x00d2, B:59:0x00bd, B:127:0x003f, B:42:0x007a, B:35:0x0061, B:29:0x0049, B:24:0x003d] A[DONT_GENERATE, DONT_INLINE]
      0x003f: PHI (r11v77 int) = 
      (r11v4 int)
      (r11v9 int)
      (r11v15 int)
      (r11v20 int)
      (r11v31 int)
      (r11v36 int)
      (r11v46 int)
      (r11v54 int)
      (r11v60 int)
      (r11v66 int)
      (r11v78 int)
     binds: [B:95:0x0142, B:89:0x012c, B:82:0x0112, B:77:0x00fc, B:65:0x00d2, B:59:0x00bd, B:127:0x003f, B:42:0x007a, B:35:0x0061, B:29:0x0049, B:24:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004b A[PHI: r4 r11
      0x004b: PHI (r4v40 int) = (r4v12 int), (r4v17 int), (r4v24 int), (r4v28 int), (r4v35 int), (r4v38 int), (r4v43 int) binds: [B:82:0x0112, B:71:0x00e7, B:59:0x00bd, B:53:0x00a7, B:38:0x0070, B:35:0x0061, B:29:0x0049] A[DONT_GENERATE, DONT_INLINE]
      0x004b: PHI (r11v64 int) = (r11v15 int), (r11v26 int), (r11v36 int), (r11v41 int), (r11v58 int), (r11v60 int), (r11v66 int) binds: [B:82:0x0112, B:71:0x00e7, B:59:0x00bd, B:53:0x00a7, B:38:0x0070, B:35:0x0061, B:29:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007c A[PHI: r4 r11
      0x007c: PHI (r4v31 int) = (r4v5 int), (r4v8 int), (r4v2 int), (r4v17 int), (r4v20 int), (r4v28 int), (r4v33 int) binds: [B:95:0x0142, B:89:0x012c, B:85:0x0122, B:71:0x00e7, B:65:0x00d2, B:53:0x00a7, B:42:0x007a] A[DONT_GENERATE, DONT_INLINE]
      0x007c: PHI (r11v52 int) = (r11v4 int), (r11v9 int), (r11v13 int), (r11v26 int), (r11v31 int), (r11v41 int), (r11v54 int) binds: [B:95:0x0142, B:89:0x012c, B:85:0x0122, B:71:0x00e7, B:65:0x00d2, B:53:0x00a7, B:42:0x007a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setBitOp(gnu.math.IntNum r10, int r11, gnu.math.IntNum r12, gnu.math.IntNum r13) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.BitOps.setBitOp(gnu.math.IntNum, int, gnu.math.IntNum, gnu.math.IntNum):void");
    }

    public static IntNum extract(IntNum intNum, int i, int i2) {
        int i3;
        long jRshift_long;
        if (i2 < 32) {
            int[] iArr = intNum.words;
            return IntNum.make(((iArr == null ? intNum.ival : iArr[0]) & (~((-1) << i2))) >> i);
        }
        if (intNum.words == null) {
            int i4 = intNum.ival;
            if (i4 >= 0) {
                return IntNum.make(i < 31 ? i4 >> i : 0);
            }
            i3 = 1;
        } else {
            i3 = intNum.ival;
        }
        boolean zIsNegative = intNum.isNegative();
        int i5 = i3 * 32;
        if (i2 <= i5) {
            i3 = (i2 + 31) >> 5;
        } else {
            if (!zIsNegative && i == 0) {
                return intNum;
            }
            i2 = i5;
        }
        int i6 = i2 - i;
        if (i6 < 64) {
            int[] iArr2 = intNum.words;
            if (iArr2 == null) {
                int i7 = intNum.ival;
                if (i >= 32) {
                    i = 31;
                }
                jRshift_long = i7 >> i;
            } else {
                jRshift_long = MPN.rshift_long(iArr2, i3, i);
            }
            return IntNum.make(jRshift_long & (~((-1) << i6)));
        }
        int i8 = i >> 5;
        int[] iArr3 = new int[((i2 >> 5) + 1) - i8];
        int[] iArr4 = intNum.words;
        if (iArr4 == null) {
            iArr3[0] = i >= 32 ? -1 : intNum.ival >> i;
        } else {
            MPN.rshift0(iArr3, iArr4, i8, i3 - i8, i & 31);
        }
        int i9 = i6 >> 5;
        iArr3[i9] = iArr3[i9] & (~((-1) << i6));
        return IntNum.make(iArr3, i9 + 1);
    }

    public static int lowestBitSet(IntNum intNum) {
        int[] iArr = intNum.words;
        if (iArr == null) {
            return lowestBitSet(intNum.ival);
        }
        int i = intNum.ival;
        while (i > 0) {
            int iLowestBitSet = lowestBitSet(iArr[0]);
            if (iLowestBitSet >= 0) {
                return iLowestBitSet;
            }
        }
        return -1;
    }

    public static int bitCount(int i) {
        int i2 = 0;
        while (i != 0) {
            i2 += bit4_count[i & 15];
            i >>>= 4;
        }
        return i2;
    }

    public static int bitCount(int[] iArr, int i) {
        int iBitCount = 0;
        while (true) {
            i--;
            if (i < 0) {
                return iBitCount;
            }
            iBitCount += bitCount(iArr[i]);
        }
    }

    public static int bitCount(IntNum intNum) {
        int i;
        int iBitCount;
        int[] iArr = intNum.words;
        if (iArr == null) {
            iBitCount = bitCount(intNum.ival);
            i = 1;
        } else {
            i = intNum.ival;
            iBitCount = bitCount(iArr, i);
        }
        return intNum.isNegative() ? (i * 32) - iBitCount : iBitCount;
    }

    public static IntNum reverseBits(IntNum intNum, int i, int i2) {
        int i3;
        int i4 = intNum.ival;
        if (intNum.words == null && i2 < 63) {
            long j = i4;
            for (int i5 = i2 - 1; i < i5; i5--) {
                j = (j & (~((1 << i) | (1 << i5)))) | (((j >> i) & 1) << i5) | (((j >> i5) & 1) << i);
                i++;
            }
            return IntNum.make(j);
        }
        int i6 = i2 - 1;
        int[] iArrDataBufferFor = dataBufferFor(intNum, i6);
        while (i < i6) {
            int i7 = i >> 5;
            int i8 = i6 >> 5;
            int i9 = iArrDataBufferFor[i7];
            int i10 = (i9 >> i) & 1;
            if (i7 == i8) {
                i3 = (((i9 >> i6) & 1) << i) | ((int) (i9 & (~((1 << i) | (1 << i6))))) | (i10 << i6);
            } else {
                int i11 = iArrDataBufferFor[i8];
                int i12 = i6 & 31;
                int i13 = i & 31;
                int i14 = i9 & (~(1 << i13));
                iArrDataBufferFor[i8] = (i10 << i12) | (i11 & (~(1 << i12)));
                i3 = i14 | (((i11 >> i12) & 1) << i13);
            }
            iArrDataBufferFor[i7] = i3;
            i++;
            i6--;
        }
        return IntNum.make(iArrDataBufferFor, iArrDataBufferFor.length);
    }
}
