package gnu.math;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

/* loaded from: classes2.dex */
public class FixedRealFormat extends Format {
    private int d;
    private int i;
    public boolean internalPad;
    public char overflowChar;
    public char padChar;
    public int scale;
    public boolean showPlus;
    public int width;

    public int getMaximumFractionDigits() {
        return this.d;
    }

    public int getMinimumIntegerDigits() {
        return this.i;
    }

    public void setMaximumFractionDigits(int i) {
        this.d = i;
    }

    public void setMinimumIntegerDigits(int i) {
        this.i = i;
    }

    public void format(RealNum realNum, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        int maximumFractionDigits;
        int i;
        if ((realNum instanceof RatNum) && (maximumFractionDigits = getMaximumFractionDigits()) >= 0) {
            RatNum ratNumRneg = (RatNum) realNum;
            boolean zIsNegative = ratNumRneg.isNegative();
            if (zIsNegative) {
                ratNumRneg = ratNumRneg.rneg();
            }
            int length = stringBuffer.length();
            if (zIsNegative) {
                stringBuffer.append('-');
            } else if (this.showPlus) {
                stringBuffer.append('+');
            } else {
                i = 0;
                String string = RealNum.toScaledInt(ratNumRneg, this.scale + maximumFractionDigits).toString();
                stringBuffer.append(string);
                int length2 = string.length();
                format(stringBuffer, fieldPosition, length2, length2 - maximumFractionDigits, maximumFractionDigits, i, length);
                return;
            }
            i = 1;
            String string2 = RealNum.toScaledInt(ratNumRneg, this.scale + maximumFractionDigits).toString();
            stringBuffer.append(string2);
            int length22 = string2.length();
            format(stringBuffer, fieldPosition, length22, length22 - maximumFractionDigits, maximumFractionDigits, i, length);
            return;
        }
        format(realNum.doubleValue(), stringBuffer, fieldPosition);
    }

    public StringBuffer format(long j, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        format((RealNum) IntNum.make(j), stringBuffer, fieldPosition);
        return stringBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b7 A[ADDED_TO_REGION, LOOP:1: B:42:0x00b7->B:43:0x00b9, LOOP_START, PHI: r11
      0x00b7: PHI (r11v9 int) = (r11v5 int), (r11v10 int) binds: [B:41:0x00b5, B:43:0x00b9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4 A[LOOP:2: B:52:0x00d2->B:53:0x00d4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.StringBuffer format(double r17, java.lang.StringBuffer r19, java.text.FieldPosition r20) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.FixedRealFormat.format(double, java.lang.StringBuffer, java.text.FieldPosition):java.lang.StringBuffer");
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        RealNum realNumAsRealNumOrNull = RealNum.asRealNumOrNull(obj);
        if (realNumAsRealNumOrNull == null) {
            if (obj instanceof Complex) {
                String string = obj.toString();
                int length = this.width - string.length();
                while (true) {
                    length--;
                    if (length >= 0) {
                        stringBuffer.append(' ');
                    } else {
                        stringBuffer.append(string);
                        return stringBuffer;
                    }
                }
            } else {
                realNumAsRealNumOrNull = (RealNum) obj;
            }
        }
        return format(realNumAsRealNumOrNull.doubleValue(), stringBuffer, fieldPosition);
    }

    private void format(StringBuffer stringBuffer, FieldPosition fieldPosition, int i, int i2, int i3, int i4, int i5) {
        int i6;
        int minimumIntegerDigits = getMinimumIntegerDigits();
        int i7 = (i2 < 0 || i2 <= minimumIntegerDigits) ? minimumIntegerDigits - i2 : 0;
        if (i2 + i7 <= 0 && ((i6 = this.width) <= 0 || i6 > i3 + 1 + i4)) {
            i7++;
        }
        int i8 = this.width - (((i + i4) + i7) + 1);
        while (true) {
            i7--;
            if (i7 < 0) {
                break;
            } else {
                stringBuffer.insert(i5 + i4, '0');
            }
        }
        if (i8 >= 0) {
            if (this.internalPad && i4 > 0) {
                i5++;
            }
            while (true) {
                i8--;
                if (i8 < 0) {
                    break;
                } else {
                    stringBuffer.insert(i5, this.padChar);
                }
            }
        } else if (this.overflowChar != 0) {
            stringBuffer.setLength(i5);
            this.i = this.width;
            while (true) {
                int i9 = this.i - 1;
                this.i = i9;
                if (i9 < 0) {
                    return;
                } else {
                    stringBuffer.append(this.overflowChar);
                }
            }
        }
        stringBuffer.insert(stringBuffer.length() - i3, '.');
    }

    public Number parse(String str, ParsePosition parsePosition) {
        throw new Error("RealFixedFormat.parse - not implemented");
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new Error("RealFixedFormat.parseObject - not implemented");
    }
}
