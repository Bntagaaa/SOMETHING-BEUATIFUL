package gnu.text;

import java.io.IOException;
import java.io.Writer;
import java.math.BigInteger;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
public class IntegerFormat extends ReportFormat {
    public static final int MIN_DIGITS = 64;
    public static final int PAD_RIGHT = 16;
    public static final int SHOW_BASE = 8;
    public static final int SHOW_GROUPS = 1;
    public static final int SHOW_PLUS = 2;
    public static final int SHOW_SPACE = 4;
    public static final int UPPERCASE = 32;
    public int base = 10;
    public int minWidth = 1;
    public int padChar = 32;
    public int commaChar = 44;
    public int commaInterval = 3;
    public int flags = 0;

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        return format((Object) objArr, i, writer, fieldPosition);
    }

    @Override // gnu.text.ReportFormat
    public int format(Object obj, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        int i2;
        int i3;
        Object obj2 = obj;
        int i4 = i;
        Object[] objArr = obj2 instanceof Object[] ? obj2 : null;
        int param = ReportFormat.getParam(this.minWidth, 1, objArr, i4);
        if (this.minWidth == -1610612736) {
            i4++;
        }
        char param2 = ReportFormat.getParam(this.padChar, ' ', objArr, i4);
        if (this.padChar == -1610612736) {
            i4++;
        }
        char param3 = ReportFormat.getParam(this.commaChar, ',', objArr, i4);
        if (this.commaChar == -1610612736) {
            i4++;
        }
        int param4 = ReportFormat.getParam(this.commaInterval, 3, objArr, i4);
        if (this.commaInterval == -1610612736) {
            i4++;
        }
        int i5 = this.flags;
        boolean z = (i5 & 1) != 0;
        boolean z2 = (i5 & 16) != 0;
        boolean z3 = param2 == '0';
        if (objArr != null) {
            if (i4 >= objArr.length) {
                writer.write("#<missing format argument>");
                return i4;
            }
            obj2 = objArr[i4];
        }
        String strConvertToIntegerString = convertToIntegerString(obj2, this.base);
        if (strConvertToIntegerString != null) {
            char cCharAt = strConvertToIntegerString.charAt(0);
            boolean z4 = cCharAt == '-';
            int length = strConvertToIntegerString.length();
            int i6 = z4 ? length - 1 : length;
            int i7 = i6 + (z ? (i6 - 1) / param4 : 0);
            if (z4 || (this.flags & 6) != 0) {
                i7++;
            }
            int i8 = this.flags;
            if ((i8 & 8) != 0) {
                int i9 = this.base;
                if (i9 == 16) {
                    i7 += 2;
                } else if (i9 == 8 && cCharAt != '0') {
                    i7++;
                }
            }
            if ((i8 & 64) == 0) {
                i2 = i7;
            } else if (length == 1 && cCharAt == '0' && param == 0) {
                i2 = i6;
                length = 0;
            } else {
                i2 = i6;
            }
            if (!z2 && !z3) {
                while (param > i2) {
                    writer.write(param2);
                    param--;
                }
            }
            if (z4) {
                writer.write(45);
                length--;
                i3 = 1;
            } else {
                int i10 = this.flags;
                if ((i10 & 2) != 0) {
                    writer.write(43);
                } else {
                    if ((i10 & 4) != 0) {
                        writer.write(32);
                    }
                    i3 = 0;
                }
                i3 = 0;
            }
            int i11 = this.base;
            boolean z5 = i11 > 10 && (this.flags & 32) != 0;
            if ((this.flags & 8) != 0) {
                if (i11 == 16) {
                    writer.write(48);
                    writer.write(z5 ? 88 : 120);
                } else if (i11 == 8 && cCharAt != '0') {
                    writer.write(48);
                }
            }
            if (z3) {
                while (param > i2) {
                    writer.write(param2);
                    param--;
                }
            }
            while (true) {
                int i12 = i3;
                if (length == 0) {
                    break;
                }
                i3 = i12 + 1;
                char cCharAt2 = strConvertToIntegerString.charAt(i12);
                if (z5) {
                    cCharAt2 = Character.toUpperCase(cCharAt2);
                }
                writer.write(cCharAt2);
                length--;
                if (z && length > 0 && length % param4 == 0) {
                    writer.write(param3);
                }
            }
            if (z2) {
                while (param > i2) {
                    writer.write(param2);
                    param--;
                }
            }
        } else {
            ReportFormat.print(writer, obj2.toString());
        }
        return i4 + 1;
    }

    public String convertToIntegerString(Object obj, int i) {
        if (!(obj instanceof Number)) {
            return null;
        }
        if (obj instanceof BigInteger) {
            return ((BigInteger) obj).toString(i);
        }
        return Long.toString(((Number) obj).longValue(), i);
    }
}
