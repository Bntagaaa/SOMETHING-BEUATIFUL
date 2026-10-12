package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class IntNum extends RatNum implements Externalizable {
    static final int maxFixNum = 1024;
    static final int minFixNum = -100;
    static final int numFixNum = 1125;
    static final IntNum[] smallFixNums;
    public int ival;
    public int[] words;

    public static int shift(int i, int i2) {
        if (i2 >= 32) {
            return 0;
        }
        if (i2 >= 0) {
            return i << i2;
        }
        int i3 = -i2;
        return i3 >= 32 ? i < 0 ? -1 : 0 : i >> i3;
    }

    public static long shift(long j, int i) {
        if (i >= 32) {
            return 0L;
        }
        if (i >= 0) {
            return j << i;
        }
        int i2 = -i;
        return i2 >= 32 ? j < 0 ? -1L : 0L : j >> i2;
    }

    @Override // gnu.math.RatNum
    public final IntNum numerator() {
        return this;
    }

    @Override // gnu.math.RatNum, gnu.math.RealNum
    public IntNum toExactInt(int i) {
        return this;
    }

    @Override // gnu.math.RatNum, gnu.math.RealNum
    public RealNum toInt(int i) {
        return this;
    }

    static {
        int i = numFixNum;
        smallFixNums = new IntNum[numFixNum];
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return;
            }
            smallFixNums[i2] = new IntNum(i - 101);
            i = i2;
        }
    }

    public IntNum() {
    }

    public IntNum(int i) {
        this.ival = i;
    }

    public static IntNum make(int i) {
        if (i >= -100 && i <= 1024) {
            return smallFixNums[i - (-100)];
        }
        return new IntNum(i);
    }

    public static final IntNum zero() {
        return smallFixNums[100];
    }

    public static final IntNum one() {
        return smallFixNums[101];
    }

    public static final IntNum ten() {
        return smallFixNums[110];
    }

    public static IntNum minusOne() {
        return smallFixNums[99];
    }

    public static IntNum make(long j) {
        if (j >= -100 && j <= 1024) {
            return smallFixNums[((int) j) + 100];
        }
        int i = (int) j;
        if (i == j) {
            return new IntNum(i);
        }
        IntNum intNumAlloc = alloc(2);
        intNumAlloc.ival = 2;
        int[] iArr = intNumAlloc.words;
        iArr[0] = i;
        iArr[1] = (int) (j >> 32);
        return intNumAlloc;
    }

    public static IntNum asIntNumOrNull(Object obj) {
        if (obj instanceof IntNum) {
            return (IntNum) obj;
        }
        if (obj instanceof BigInteger) {
            return valueOf(obj.toString(), 10);
        }
        if (!(obj instanceof Number)) {
            return null;
        }
        if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Byte)) {
            return make(((Number) obj).longValue());
        }
        return null;
    }

    public static IntNum makeU(long j) {
        if (j >= 0) {
            return make(j);
        }
        IntNum intNumAlloc = alloc(3);
        intNumAlloc.ival = 3;
        int[] iArr = intNumAlloc.words;
        iArr[0] = (int) j;
        iArr[1] = (int) (j >> 32);
        iArr[2] = 0;
        return intNumAlloc;
    }

    public static IntNum make(int[] iArr, int i) {
        if (iArr == null) {
            return make(i);
        }
        int iWordsNeeded = wordsNeeded(iArr, i);
        if (iWordsNeeded <= 1) {
            return iWordsNeeded == 0 ? zero() : make(iArr[0]);
        }
        IntNum intNum = new IntNum();
        intNum.words = iArr;
        intNum.ival = iWordsNeeded;
        return intNum;
    }

    public static IntNum make(int[] iArr) {
        return make(iArr, iArr.length);
    }

    public static IntNum alloc(int i) {
        if (i <= 1) {
            return new IntNum();
        }
        IntNum intNum = new IntNum();
        intNum.words = new int[i];
        return intNum;
    }

    public void realloc(int i) {
        if (i == 0) {
            int[] iArr = this.words;
            if (iArr != null) {
                if (this.ival > 0) {
                    this.ival = iArr[0];
                }
                this.words = null;
                return;
            }
            return;
        }
        int[] iArr2 = this.words;
        if (iArr2 == null || iArr2.length < i || iArr2.length > i + 2) {
            int[] iArr3 = new int[i];
            if (iArr2 == null) {
                iArr3[0] = this.ival;
                this.ival = 1;
            } else {
                if (i < this.ival) {
                    this.ival = i;
                }
                System.arraycopy(iArr2, 0, iArr3, 0, this.ival);
            }
            this.words = iArr3;
        }
    }

    @Override // gnu.math.RatNum
    public final IntNum denominator() {
        return one();
    }

    @Override // gnu.math.RealNum
    public final boolean isNegative() {
        int[] iArr = this.words;
        return (iArr == null ? this.ival : iArr[this.ival - 1]) < 0;
    }

    @Override // gnu.math.RealNum
    public int sign() {
        int i = this.ival;
        int[] iArr = this.words;
        if (iArr == null) {
            if (i > 0) {
                return 1;
            }
            return i < 0 ? -1 : 0;
        }
        int i2 = i - 1;
        int i3 = iArr[i2];
        if (i3 > 0) {
            return 1;
        }
        if (i3 < 0) {
            return -1;
        }
        while (i2 != 0) {
            i2--;
            if (iArr[i2] != 0) {
                return 1;
            }
        }
        return 0;
    }

    public static int compare(IntNum intNum, IntNum intNum2) {
        if (intNum.words == null && intNum2.words == null) {
            int i = intNum.ival;
            int i2 = intNum2.ival;
            if (i < i2) {
                return -1;
            }
            return i > i2 ? 1 : 0;
        }
        boolean zIsNegative = intNum.isNegative();
        if (zIsNegative != intNum2.isNegative()) {
            return zIsNegative ? -1 : 1;
        }
        int[] iArr = intNum.words;
        int i3 = iArr == null ? 1 : intNum.ival;
        int[] iArr2 = intNum2.words;
        int i4 = iArr2 == null ? 1 : intNum2.ival;
        if (i3 != i4) {
            return (i3 > i4) != zIsNegative ? 1 : -1;
        }
        return MPN.cmp(iArr, iArr2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int compare(gnu.math.IntNum r7, long r8) {
        /*
            int[] r0 = r7.words
            r1 = -1
            r2 = 0
            r3 = 1
            if (r0 != 0) goto Lb
            int r7 = r7.ival
        L9:
            long r4 = (long) r7
            goto L32
        Lb:
            boolean r0 = r7.isNegative()
            r4 = 0
            int r6 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r6 >= 0) goto L17
            r4 = 1
            goto L18
        L17:
            r4 = 0
        L18:
            if (r0 == r4) goto L1e
            if (r0 == 0) goto L1d
            return r1
        L1d:
            return r3
        L1e:
            int[] r4 = r7.words
            if (r4 != 0) goto L24
            r5 = 1
            goto L26
        L24:
            int r5 = r7.ival
        L26:
            if (r5 != r3) goto L2b
            r7 = r4[r2]
            goto L9
        L2b:
            r4 = 2
            if (r5 != r4) goto L3b
            long r4 = r7.longValue()
        L32:
            int r7 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r7 >= 0) goto L37
            return r1
        L37:
            if (r7 <= 0) goto L3a
            return r3
        L3a:
            return r2
        L3b:
            if (r0 == 0) goto L3e
            return r1
        L3e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.IntNum.compare(gnu.math.IntNum, long):int");
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public int compare(Object obj) {
        if (obj instanceof IntNum) {
            return compare(this, (IntNum) obj);
        }
        return ((RealNum) obj).compareReversed(this);
    }

    public final boolean isOdd() {
        int[] iArr = this.words;
        return ((iArr == null ? this.ival : iArr[0]) & 1) != 0;
    }

    @Override // gnu.math.RatNum, gnu.math.RealNum, gnu.math.Complex, gnu.math.Numeric
    public final boolean isZero() {
        return this.words == null && this.ival == 0;
    }

    public final boolean isOne() {
        return this.words == null && this.ival == 1;
    }

    public final boolean isMinusOne() {
        return this.words == null && this.ival == -1;
    }

    public static int wordsNeeded(int[] iArr, int i) {
        if (i > 0) {
            i--;
            int i2 = iArr[i];
            if (i2 != -1) {
                while (i2 == 0 && i > 0) {
                    i2 = iArr[i - 1];
                    if (i2 < 0) {
                        break;
                    }
                    i--;
                }
            } else {
                while (i > 0) {
                    int i3 = iArr[i - 1];
                    if (i3 >= 0) {
                        break;
                    }
                    i--;
                    if (i3 != -1) {
                        break;
                    }
                }
            }
        }
        return i + 1;
    }

    public IntNum canonicalize() {
        int i;
        int[] iArr = this.words;
        if (iArr != null) {
            int iWordsNeeded = wordsNeeded(iArr, this.ival);
            this.ival = iWordsNeeded;
            if (iWordsNeeded <= 1) {
                if (iWordsNeeded == 1) {
                    this.ival = this.words[0];
                }
                this.words = null;
            }
        }
        return (this.words != null || (i = this.ival) < -100 || i > 1024) ? this : smallFixNums[i - (-100)];
    }

    public static final IntNum add(int i, int i2) {
        return make(i + i2);
    }

    public static IntNum add(IntNum intNum, int i) {
        if (intNum.words == null) {
            return add(intNum.ival, i);
        }
        IntNum intNum2 = new IntNum(0);
        intNum2.setAdd(intNum, i);
        return intNum2.canonicalize();
    }

    public void setAdd(IntNum intNum, int i) {
        if (intNum.words == null) {
            set(intNum.ival + i);
            return;
        }
        int i2 = intNum.ival;
        int i3 = i2 + 1;
        realloc(i3);
        long j = i;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = j + (intNum.words[i4] & 4294967295L);
            this.words[i4] = (int) j2;
            j = j2 >> 32;
        }
        if (intNum.words[i2 - 1] < 0) {
            j--;
        }
        int[] iArr = this.words;
        iArr[i2] = (int) j;
        this.ival = wordsNeeded(iArr, i3);
    }

    public final void setAdd(int i) {
        setAdd(this, i);
    }

    public final void set(int i) {
        this.words = null;
        this.ival = i;
    }

    public final void set(long j) {
        int i = (int) j;
        if (i == j) {
            this.ival = i;
            this.words = null;
            return;
        }
        realloc(2);
        int[] iArr = this.words;
        iArr[0] = i;
        iArr[1] = (int) (j >> 32);
        this.ival = 2;
    }

    public final void set(int[] iArr, int i) {
        this.ival = i;
        this.words = iArr;
    }

    public final void set(IntNum intNum) {
        if (intNum.words == null) {
            set(intNum.ival);
        } else if (this != intNum) {
            realloc(intNum.ival);
            System.arraycopy(intNum.words, 0, this.words, 0, intNum.ival);
            this.ival = intNum.ival;
        }
    }

    public static IntNum add(IntNum intNum, IntNum intNum2) {
        return add(intNum, intNum2, 1);
    }

    public static IntNum sub(IntNum intNum, IntNum intNum2) {
        return add(intNum, intNum2, -1);
    }

    public static IntNum add(IntNum intNum, IntNum intNum2, int i) {
        if (intNum.words == null && intNum2.words == null) {
            return make((i * intNum2.ival) + intNum.ival);
        }
        if (i != 1) {
            if (i == -1) {
                intNum2 = neg(intNum2);
            } else {
                intNum2 = times(intNum2, make(i));
            }
        }
        if (intNum.words == null) {
            return add(intNum2, intNum.ival);
        }
        if (intNum2.words == null) {
            return add(intNum, intNum2.ival);
        }
        if (intNum2.ival > intNum.ival) {
            IntNum intNum3 = intNum2;
            intNum2 = intNum;
            intNum = intNum3;
        }
        IntNum intNumAlloc = alloc(intNum.ival + 1);
        int i2 = intNum2.ival;
        long jAdd_n = MPN.add_n(intNumAlloc.words, intNum.words, intNum2.words, i2);
        long j = intNum2.words[i2 + (-1)] < 0 ? 4294967295L : 0L;
        while (i2 < intNum.ival) {
            long j2 = (intNum.words[i2] & 4294967295L) + j + jAdd_n;
            intNumAlloc.words[i2] = (int) j2;
            jAdd_n = j2 >>> 32;
            i2++;
        }
        if (intNum.words[i2 - 1] < 0) {
            j--;
        }
        intNumAlloc.words[i2] = (int) (jAdd_n + j);
        intNumAlloc.ival = i2 + 1;
        return intNumAlloc.canonicalize();
    }

    public static final IntNum times(int i, int i2) {
        return make(i * i2);
    }

    public static final IntNum times(IntNum intNum, int i) {
        if (i == 0) {
            return zero();
        }
        boolean z = true;
        if (i == 1) {
            return intNum;
        }
        int[] iArr = intNum.words;
        int i2 = intNum.ival;
        if (iArr == null) {
            return make(i2 * i);
        }
        int i3 = i2 + 1;
        IntNum intNumAlloc = alloc(i3);
        if (iArr[i2 - 1] < 0) {
            negate(intNumAlloc.words, iArr, i2);
            iArr = intNumAlloc.words;
        } else {
            z = false;
        }
        if (i < 0) {
            z = !z;
            i = -i;
        }
        int[] iArr2 = intNumAlloc.words;
        iArr2[i2] = MPN.mul_1(iArr2, iArr, i2, i);
        intNumAlloc.ival = i3;
        if (z) {
            intNumAlloc.setNegative();
        }
        return intNumAlloc.canonicalize();
    }

    public static final IntNum times(IntNum intNum, IntNum intNum2) {
        int[] iArr;
        boolean z;
        int[] iArr2;
        if (intNum2.words == null) {
            return times(intNum, intNum2.ival);
        }
        if (intNum.words == null) {
            return times(intNum2, intNum.ival);
        }
        int i = intNum.ival;
        int i2 = intNum2.ival;
        if (intNum.isNegative()) {
            iArr = new int[i];
            negate(iArr, intNum.words, i);
            z = true;
        } else {
            iArr = intNum.words;
            z = false;
        }
        if (intNum2.isNegative()) {
            z = !z;
            iArr2 = new int[i2];
            negate(iArr2, intNum2.words, i2);
        } else {
            iArr2 = intNum2.words;
        }
        if (i < i2) {
            i2 = i;
            i = i2;
            int[] iArr3 = iArr2;
            iArr2 = iArr;
            iArr = iArr3;
        }
        int i3 = i + i2;
        IntNum intNumAlloc = alloc(i3);
        MPN.mul(intNumAlloc.words, iArr, i, iArr2, i2);
        intNumAlloc.ival = i3;
        if (z) {
            intNumAlloc.setNegative();
        }
        return intNumAlloc.canonicalize();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void divide(long r19, long r21, gnu.math.IntNum r23, gnu.math.IntNum r24, int r25) {
        /*
            r0 = r19
            r2 = r21
            r4 = r23
            r5 = r24
            r6 = 5
            r7 = 2
            r8 = 0
            r10 = 1
            r11 = r25
            if (r11 != r6) goto L19
            int r6 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r6 >= 0) goto L17
            r6 = 2
            goto L18
        L17:
            r6 = 1
        L18:
            r11 = r6
        L19:
            r12 = -9223372036854775808
            r6 = 0
            int r14 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r14 >= 0) goto L33
            int r14 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r14 != 0) goto L30
            gnu.math.IntNum r0 = make(r0)
            gnu.math.IntNum r1 = make(r2)
            divide(r0, r1, r4, r5, r11)
            return
        L30:
            long r0 = -r0
            r14 = 1
            goto L34
        L33:
            r14 = 0
        L34:
            int r15 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r15 >= 0) goto L59
            int r15 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r15 != 0) goto L56
            r7 = 3
            if (r11 != r7) goto L4a
            if (r4 == 0) goto L44
            r4.set(r6)
        L44:
            if (r5 == 0) goto L9a
            r5.set(r0)
            return
        L4a:
            gnu.math.IntNum r0 = make(r0)
            gnu.math.IntNum r1 = make(r2)
            divide(r0, r1, r4, r5, r11)
            return
        L56:
            long r2 = -r2
            r12 = 1
            goto L5a
        L59:
            r12 = 0
        L5a:
            long r15 = r0 / r2
            long r0 = r0 % r2
            r12 = r12 ^ r14
            r17 = 1
            int r13 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r13 == 0) goto L7e
            if (r11 == r10) goto L76
            if (r11 == r7) goto L76
            r7 = 4
            if (r11 == r7) goto L6c
            goto L7e
        L6c:
            long r7 = r15 & r17
            long r7 = r2 - r7
            long r7 = r7 >> r10
            int r9 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r9 <= 0) goto L7e
            goto L7f
        L76:
            if (r11 != r10) goto L7a
            r7 = 1
            goto L7b
        L7a:
            r7 = 0
        L7b:
            if (r12 != r7) goto L7e
            goto L7f
        L7e:
            r10 = 0
        L7f:
            if (r4 == 0) goto L8c
            if (r10 == 0) goto L85
            long r15 = r15 + r17
        L85:
            r6 = r15
            if (r12 == 0) goto L89
            long r6 = -r6
        L89:
            r4.set(r6)
        L8c:
            if (r5 == 0) goto L9a
            if (r10 == 0) goto L94
            long r0 = r2 - r0
            r14 = r14 ^ 1
        L94:
            if (r14 == 0) goto L97
            long r0 = -r0
        L97:
            r5.set(r0)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.IntNum.divide(long, long, gnu.math.IntNum, gnu.math.IntNum, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void divide(gnu.math.IntNum r16, gnu.math.IntNum r17, gnu.math.IntNum r18, gnu.math.IntNum r19, int r20) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.IntNum.divide(gnu.math.IntNum, gnu.math.IntNum, gnu.math.IntNum, gnu.math.IntNum, int):void");
    }

    public static IntNum quotient(IntNum intNum, IntNum intNum2, int i) {
        IntNum intNum3 = new IntNum();
        divide(intNum, intNum2, intNum3, (IntNum) null, i);
        return intNum3.canonicalize();
    }

    public static IntNum quotient(IntNum intNum, IntNum intNum2) {
        return quotient(intNum, intNum2, 3);
    }

    public static IntNum remainder(IntNum intNum, IntNum intNum2, int i) {
        if (intNum2.isZero()) {
            return intNum;
        }
        IntNum intNum3 = new IntNum();
        divide(intNum, intNum2, (IntNum) null, intNum3, i);
        return intNum3.canonicalize();
    }

    public static IntNum remainder(IntNum intNum, IntNum intNum2) {
        return remainder(intNum, intNum2, 3);
    }

    public static IntNum modulo(IntNum intNum, IntNum intNum2) {
        return remainder(intNum, intNum2, 1);
    }

    @Override // gnu.math.RatNum, gnu.math.Numeric
    public Numeric power(IntNum intNum) {
        int i;
        if (!isOne()) {
            if (isMinusOne()) {
                if (!intNum.isOdd()) {
                    return one();
                }
            } else {
                if (intNum.words == null && (i = intNum.ival) >= 0) {
                    return power(this, i);
                }
                if (isZero()) {
                    if (intNum.isNegative()) {
                        return RatNum.infinity(-1);
                    }
                } else {
                    return super.power(intNum);
                }
            }
        }
        return this;
    }

    public static IntNum power(IntNum intNum, int i) {
        if (i <= 0) {
            if (i == 0) {
                return one();
            }
            throw new Error("negative exponent");
        }
        if (intNum.isZero()) {
            return intNum;
        }
        int i2 = 1;
        int i3 = intNum.words == null ? 1 : intNum.ival;
        int iIntLength = (i3 * 2) + ((intNum.intLength() * i) >> 5);
        boolean z = intNum.isNegative() && (i & 1) != 0;
        int[] iArr = new int[iIntLength];
        int[] iArr2 = new int[iIntLength];
        int[] iArr3 = new int[iIntLength];
        intNum.getAbsolute(iArr);
        iArr2[0] = 1;
        while (true) {
            if ((i & 1) != 0) {
                MPN.mul(iArr3, iArr, i3, iArr2, i2);
                i2 += i3;
                while (iArr3[i2 - 1] == 0) {
                    i2--;
                }
                int[] iArr4 = iArr2;
                iArr2 = iArr3;
                iArr3 = iArr4;
            }
            i >>= 1;
            if (i == 0) {
                break;
            }
            MPN.mul(iArr3, iArr, i3, iArr, i3);
            i3 *= 2;
            while (iArr3[i3 - 1] == 0) {
                i3--;
            }
            int[] iArr5 = iArr;
            iArr = iArr3;
            iArr3 = iArr5;
        }
        if (iArr2[i2 - 1] < 0) {
            i2++;
        }
        if (z) {
            negate(iArr2, iArr2, i2);
        }
        return make(iArr2, i2);
    }

    public static final int gcd(int i, int i2) {
        if (i2 <= i) {
            i2 = i;
            i = i2;
        }
        while (i != 0) {
            if (i == 1) {
                return i;
            }
            int i3 = i2 % i;
            i2 = i;
            i = i3;
        }
        return i2;
    }

    public static IntNum gcd(IntNum intNum, IntNum intNum2) {
        int i = intNum.ival;
        int i2 = intNum2.ival;
        if (intNum.words == null) {
            if (i == 0) {
                return abs(intNum2);
            }
            if (intNum2.words == null && i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE) {
                if (i < 0) {
                    i = -i;
                }
                if (i2 < 0) {
                    i2 = -i2;
                }
                return make(gcd(i, i2));
            }
            i = 1;
        }
        if (intNum2.words == null) {
            if (i2 == 0) {
                return abs(intNum);
            }
            i2 = 1;
        }
        if (i <= i2) {
            i = i2;
        }
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        intNum.getAbsolute(iArr);
        intNum2.getAbsolute(iArr2);
        int iGcd = MPN.gcd(iArr, iArr2, i);
        IntNum intNum3 = new IntNum(0);
        if (iArr[iGcd - 1] < 0) {
            iArr[iGcd] = 0;
            iGcd++;
        }
        intNum3.ival = iGcd;
        intNum3.words = iArr;
        return intNum3.canonicalize();
    }

    public static IntNum lcm(IntNum intNum, IntNum intNum2) {
        if (intNum.isZero() || intNum2.isZero()) {
            return zero();
        }
        IntNum intNumAbs = abs(intNum);
        IntNum intNumAbs2 = abs(intNum2);
        IntNum intNum3 = new IntNum();
        divide(times(intNumAbs, intNumAbs2), gcd(intNumAbs, intNumAbs2), intNum3, (IntNum) null, 3);
        return intNum3.canonicalize();
    }

    public void setInvert() {
        if (this.words == null) {
            this.ival = ~this.ival;
            return;
        }
        int i = this.ival;
        while (true) {
            i--;
            if (i < 0) {
                return;
            }
            int[] iArr = this.words;
            iArr[i] = ~iArr[i];
        }
    }

    public void setShiftLeft(IntNum intNum, int i) {
        int[] iArr;
        int i2;
        int[] iArr2 = intNum.words;
        if (iArr2 != null) {
            iArr = iArr2;
            i2 = intNum.ival;
        } else if (i < 32) {
            set(intNum.ival << i);
            return;
        } else {
            i2 = 1;
            iArr = new int[]{intNum.ival};
        }
        int i3 = i >> 5;
        int i4 = i & 31;
        int i5 = i2 + i3;
        if (i4 == 0) {
            realloc(i5);
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                } else {
                    this.words[i2 + i3] = iArr[i2];
                }
            }
        } else {
            int i6 = i5 + 1;
            realloc(i6);
            int i7 = 32 - i4;
            this.words[i5] = (MPN.lshift(this.words, i3, iArr, i2, i4) << i7) >> i7;
            i5 = i6;
        }
        this.ival = i5;
        while (true) {
            i3--;
            if (i3 < 0) {
                return;
            } else {
                this.words[i3] = 0;
            }
        }
    }

    public void setShiftRight(IntNum intNum, int i) {
        if (intNum.words == null) {
            int i2 = intNum.ival;
            if (i < 32) {
                i = i2 >> i;
            } else if (i2 < 0) {
                i = -1;
            }
            set(i);
            return;
        }
        if (i == 0) {
            set(intNum);
            return;
        }
        boolean zIsNegative = intNum.isNegative();
        int i3 = i >> 5;
        int i4 = i & 31;
        int i5 = intNum.ival - i3;
        if (i5 <= 0) {
            set(zIsNegative ? -1 : 0);
            return;
        }
        int[] iArr = this.words;
        if (iArr == null || iArr.length < i5) {
            realloc(i5);
        }
        MPN.rshift0(this.words, intNum.words, i3, i5, i4);
        this.ival = i5;
        if (zIsNegative) {
            int[] iArr2 = this.words;
            int i6 = i5 - 1;
            iArr2[i6] = ((-2) << (31 - i4)) | iArr2[i6];
        }
    }

    public void setShift(IntNum intNum, int i) {
        if (i > 0) {
            setShiftLeft(intNum, i);
        } else {
            setShiftRight(intNum, -i);
        }
    }

    public static IntNum shift(IntNum intNum, int i) {
        int i2 = 0;
        if (intNum.words == null) {
            if (i <= 0) {
                int i3 = intNum.ival;
                if (i > -32) {
                    i2 = i3 >> (-i);
                } else if (i3 < 0) {
                    i2 = -1;
                }
                return make(i2);
            }
            if (i < 32) {
                return make(intNum.ival << i);
            }
        }
        if (i == 0) {
            return intNum;
        }
        IntNum intNum2 = new IntNum(0);
        intNum2.setShift(intNum, i);
        return intNum2.canonicalize();
    }

    public void format(int i, StringBuffer stringBuffer) {
        if (i == 10) {
            if (this.words == null) {
                stringBuffer.append(this.ival);
                return;
            } else if (this.ival <= 2) {
                stringBuffer.append(longValue());
                return;
            }
        }
        stringBuffer.append(toString(i));
    }

    public void format(int i, StringBuilder sb) {
        int[] iArr;
        int i2;
        if (this.words == null) {
            if (i == 10) {
                sb.append(this.ival);
                return;
            } else {
                sb.append(Integer.toString(this.ival, i));
                return;
            }
        }
        if (this.ival <= 2) {
            long jLongValue = longValue();
            if (i == 10) {
                sb.append(jLongValue);
                return;
            } else {
                sb.append(Long.toString(jLongValue, i));
                return;
            }
        }
        boolean zIsNegative = isNegative();
        if (zIsNegative || i != 16) {
            iArr = new int[this.ival];
            getAbsolute(iArr);
        } else {
            iArr = this.words;
        }
        int i3 = this.ival;
        if (i == 16) {
            if (zIsNegative) {
                sb.append('-');
            }
            int length = sb.length();
            while (true) {
                i3--;
                if (i3 < 0) {
                    return;
                }
                int i4 = iArr[i3];
                int i5 = 8;
                while (true) {
                    i5--;
                    if (i5 >= 0) {
                        int i6 = (i4 >> (i5 * 4)) & 15;
                        if (i6 > 0 || sb.length() > length) {
                            sb.append(Character.forDigit(i6, 16));
                        }
                    }
                }
            }
        } else {
            int iChars_per_word = MPN.chars_per_word(i);
            int i7 = i;
            int i8 = iChars_per_word;
            while (true) {
                i8--;
                if (i8 <= 0) {
                    break;
                } else {
                    i7 *= i;
                }
            }
            int length2 = sb.length();
            do {
                int iDivmod_1 = MPN.divmod_1(iArr, iArr, i3, i7);
                while (i3 > 0 && iArr[i3 - 1] == 0) {
                    i3--;
                }
                int i9 = iChars_per_word;
                while (true) {
                    i9--;
                    if (i9 < 0 || (i3 == 0 && iDivmod_1 == 0)) {
                        break;
                    }
                    if (iDivmod_1 < 0) {
                        i2 = (int) (iDivmod_1 % i);
                    } else {
                        i2 = iDivmod_1 % i;
                    }
                    iDivmod_1 /= i;
                    sb.append(Character.forDigit(i2, i));
                }
            } while (i3 != 0);
            if (zIsNegative) {
                sb.append('-');
            }
            for (int length3 = sb.length() - 1; length2 < length3; length3--) {
                char cCharAt = sb.charAt(length2);
                sb.setCharAt(length2, sb.charAt(length3));
                sb.setCharAt(length3, cCharAt);
                length2++;
            }
        }
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public String toString(int i) {
        if (this.words == null) {
            return Integer.toString(this.ival, i);
        }
        int i2 = this.ival;
        if (i2 <= 2) {
            return Long.toString(longValue(), i);
        }
        StringBuilder sb = new StringBuilder((MPN.chars_per_word(i) + 1) * i2);
        format(i, sb);
        return sb.toString();
    }

    @Override // gnu.math.Numeric, java.lang.Number
    public int intValue() {
        int[] iArr = this.words;
        if (iArr == null) {
            return this.ival;
        }
        return iArr[0];
    }

    public static int intValue(Object obj) {
        IntNum intNum = (IntNum) obj;
        if (intNum.words != null) {
            throw new ClassCastException("integer too large");
        }
        return intNum.ival;
    }

    @Override // gnu.math.Complex, gnu.math.Numeric, java.lang.Number
    public long longValue() {
        int i;
        int[] iArr = this.words;
        if (iArr == null) {
            i = this.ival;
        } else if (this.ival == 1) {
            i = iArr[0];
        } else {
            return (iArr[1] << 32) + (iArr[0] & 4294967295L);
        }
        return i;
    }

    public int hashCode() {
        int[] iArr = this.words;
        return iArr == null ? this.ival : iArr[0] + iArr[this.ival - 1];
    }

    public static boolean equals(IntNum intNum, IntNum intNum2) {
        int i;
        int[] iArr = intNum.words;
        if (iArr == null && intNum2.words == null) {
            return intNum.ival == intNum2.ival;
        }
        if (iArr == null || intNum2.words == null || (i = intNum.ival) != intNum2.ival) {
            return false;
        }
        do {
            i--;
            if (i < 0) {
                return true;
            }
        } while (intNum.words[i] == intNum2.words[i]);
        return false;
    }

    @Override // gnu.math.RatNum, gnu.math.Complex, gnu.math.Numeric
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof IntNum)) {
            return false;
        }
        return equals(this, (IntNum) obj);
    }

    public static IntNum valueOf(char[] cArr, int i, int i2, int i3, boolean z) {
        byte[] bArr = new byte[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            char c = cArr[i + i5];
            if (c == '-') {
                z = true;
            } else if (c != '_' && (i4 != 0 || (c != ' ' && c != '\t'))) {
                int iDigit = Character.digit(c, i3);
                if (iDigit < 0) {
                    break;
                }
                bArr[i4] = (byte) iDigit;
                i4++;
            }
        }
        return valueOf(bArr, i4, z, i3);
    }

    public static IntNum valueOf(String str, int i) throws NumberFormatException {
        int length = str.length();
        if (length + i <= 28) {
            if (length > 1 && str.charAt(0) == '+' && Character.digit(str.charAt(1), i) >= 0) {
                str = str.substring(1);
            }
            return make(Long.parseLong(str, i));
        }
        byte[] bArr = new byte[length];
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '-' && i3 == 0) {
                z = true;
            } else if ((cCharAt != '+' || i3 != 0) && cCharAt != '_' && (i2 != 0 || (cCharAt != ' ' && cCharAt != '\t'))) {
                int iDigit = Character.digit(cCharAt, i);
                if (iDigit < 0) {
                    throw new NumberFormatException("For input string: \"" + str + Typography.quote);
                }
                bArr[i2] = (byte) iDigit;
                i2++;
            }
        }
        return valueOf(bArr, i2, z, i);
    }

    public static IntNum valueOf(byte[] bArr, int i, boolean z, int i2) {
        int[] iArr = new int[(i / MPN.chars_per_word(i2)) + 1];
        int i3 = MPN.set_str(iArr, bArr, i, i2);
        if (i3 == 0) {
            return zero();
        }
        if (iArr[i3 - 1] < 0) {
            iArr[i3] = 0;
            i3++;
        }
        if (z) {
            negate(iArr, iArr, i3);
        }
        return make(iArr, i3);
    }

    public static IntNum valueOf(String str) throws NumberFormatException {
        return valueOf(str, 10);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, java.lang.Number
    public double doubleValue() {
        if (this.words == null) {
            return this.ival;
        }
        if (this.ival <= 2) {
            return longValue();
        }
        if (isNegative()) {
            return neg(this).roundToDouble(0, true, false);
        }
        return roundToDouble(0, false, false);
    }

    public boolean checkBits(int i) {
        if (i <= 0) {
            return false;
        }
        if (this.words == null) {
            if (i <= 31) {
                if ((((1 << i) - 1) & this.ival) == 0) {
                    return false;
                }
            }
            return true;
        }
        int i2 = 0;
        while (i2 < (i >> 5)) {
            if (this.words[i2] != 0) {
                return true;
            }
            i2++;
        }
        int i3 = i & 31;
        if (i3 != 0) {
            if ((((1 << i3) - 1) & this.words[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    public double roundToDouble(int i, boolean z, boolean z2) {
        long jLongValue;
        int iIntLength = intLength();
        int i2 = (iIntLength - 1) + i;
        if (i2 < -1075) {
            return z ? -0.0d : 0.0d;
        }
        if (i2 > 1023) {
            return z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        int i3 = i2 >= -1022 ? 53 : i2 + 1075;
        int i4 = iIntLength - (i3 + 1);
        if (i4 > 0) {
            int[] iArr = this.words;
            jLongValue = iArr == null ? this.ival >> i4 : MPN.rshift_long(iArr, this.ival, i4);
        } else {
            jLongValue = longValue() << (-i4);
        }
        if (i2 == 1023 && (jLongValue >> 1) == 9007199254740991L) {
            return (z2 || checkBits(iIntLength - i3)) ? z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY : z ? -1.7976931348623157E308d : Double.MAX_VALUE;
        }
        if ((jLongValue & 1) == 1 && ((jLongValue & 2) == 2 || z2 || checkBits(i4))) {
            jLongValue += 2;
            if ((18014398509481984L & jLongValue) != 0) {
                i2++;
                jLongValue >>= 1;
            } else if (i3 == 52 && (9007199254740992L & jLongValue) != 0) {
                i2++;
            }
        }
        int i5 = i2 + 1023;
        return Double.longBitsToDouble(((-4503599627370497L) & (jLongValue >> 1)) | (z ? Long.MIN_VALUE : 0L) | (i5 > 0 ? i5 << 52 : 0L));
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof IntNum) {
            return add(this, (IntNum) obj, i);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).addReversed(this, i);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof IntNum) {
            return times(this, (IntNum) obj);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof RatNum) {
            RatNum ratNum = (RatNum) obj;
            return RatNum.make(times(this, ratNum.denominator()), ratNum.numerator());
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).divReversed(this);
    }

    public void getAbsolute(int[] iArr) {
        int i;
        if (this.words == null) {
            iArr[0] = this.ival;
            i = 1;
        } else {
            i = this.ival;
            int i2 = i;
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                } else {
                    iArr[i2] = this.words[i2];
                }
            }
        }
        if (iArr[i - 1] < 0) {
            negate(iArr, iArr, i);
        }
        int length = iArr.length;
        while (true) {
            length--;
            if (length <= i) {
                return;
            } else {
                iArr[length] = 0;
            }
        }
    }

    public static boolean negate(int[] iArr, int[] iArr2, int i) {
        int i2 = i - 1;
        boolean z = iArr2[i2] < 0;
        long j = 1;
        for (int i3 = 0; i3 < i; i3++) {
            long j2 = j + ((~iArr2[i3]) & 4294967295L);
            iArr[i3] = (int) j2;
            j = j2 >> 32;
        }
        return z && iArr[i2] < 0;
    }

    public void setNegative(IntNum intNum) {
        int i = intNum.ival;
        if (intNum.words == null) {
            if (i == Integer.MIN_VALUE) {
                set(-i);
                return;
            } else {
                set(-i);
                return;
            }
        }
        int i2 = i + 1;
        realloc(i2);
        if (negate(this.words, intNum.words, i)) {
            this.words[i] = 0;
            i = i2;
        }
        this.ival = i;
    }

    public final void setNegative() {
        setNegative(this);
    }

    public static IntNum abs(IntNum intNum) {
        return intNum.isNegative() ? neg(intNum) : intNum;
    }

    public static IntNum neg(IntNum intNum) {
        int i;
        if (intNum.words == null && (i = intNum.ival) != Integer.MIN_VALUE) {
            return make(-i);
        }
        IntNum intNum2 = new IntNum(0);
        intNum2.setNegative(intNum);
        return intNum2.canonicalize();
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric neg() {
        return neg(this);
    }

    public int intLength() {
        int[] iArr = this.words;
        if (iArr == null) {
            return MPN.intLength(this.ival);
        }
        return MPN.intLength(iArr, this.ival);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int[] iArr = this.words;
        int iWordsNeeded = iArr == null ? 1 : wordsNeeded(iArr, this.ival);
        if (iWordsNeeded <= 1) {
            int[] iArr2 = this.words;
            int i = iArr2 == null ? this.ival : iArr2.length == 0 ? 0 : iArr2[0];
            if (i >= -1073741824) {
                objectOutput.writeInt(i);
                return;
            } else {
                objectOutput.writeInt(-2147483647);
                objectOutput.writeInt(i);
                return;
            }
        }
        objectOutput.writeInt(Integer.MIN_VALUE | iWordsNeeded);
        while (true) {
            iWordsNeeded--;
            if (iWordsNeeded < 0) {
                return;
            } else {
                objectOutput.writeInt(this.words[iWordsNeeded]);
            }
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        if (i <= -1073741824) {
            i &= Integer.MAX_VALUE;
            if (i == 1) {
                i = objectInput.readInt();
            } else {
                int[] iArr = new int[i];
                int i2 = i;
                while (true) {
                    i2--;
                    if (i2 < 0) {
                        break;
                    } else {
                        iArr[i2] = objectInput.readInt();
                    }
                }
                this.words = iArr;
            }
        }
        this.ival = i;
    }

    public Object readResolve() throws ObjectStreamException {
        return canonicalize();
    }

    public BigInteger asBigInteger() {
        if (this.words == null || this.ival <= 2) {
            return BigInteger.valueOf(longValue());
        }
        return new BigInteger(toString());
    }

    @Override // gnu.math.RealNum
    public BigDecimal asBigDecimal() {
        if (this.words == null) {
            return new BigDecimal(this.ival);
        }
        if (this.ival <= 2) {
            return BigDecimal.valueOf(longValue());
        }
        return new BigDecimal(toString());
    }

    public boolean inRange(long j, long j2) {
        return compare(this, j) >= 0 && compare(this, j2) <= 0;
    }

    public boolean inIntRange() {
        return inRange(-2147483648L, 2147483647L);
    }

    public boolean inLongRange() {
        return inRange(Long.MIN_VALUE, Long.MAX_VALUE);
    }
}
