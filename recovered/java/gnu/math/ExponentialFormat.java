package gnu.math;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

/* loaded from: classes2.dex */
public class ExponentialFormat extends Format {
    static final double LOG10 = Math.log(10.0d);
    public int expDigits;
    public boolean exponentShowSign;
    public boolean general;
    public int intDigits;
    public char overflowChar;
    public char padChar;
    public boolean showPlus;
    public int width;
    public int fracDigits = -1;
    public char exponentChar = 'E';

    public static boolean addOne(StringBuffer stringBuffer, int i, int i2) {
        while (i2 != i) {
            i2--;
            char cCharAt = stringBuffer.charAt(i2);
            if (cCharAt != '9') {
                stringBuffer.setCharAt(i2, (char) (cCharAt + 1));
                return false;
            }
            stringBuffer.setCharAt(i2, '0');
        }
        stringBuffer.insert(i2, '1');
        return true;
    }

    public StringBuffer format(float f, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(f, this.fracDigits < 0 ? Float.toString(f) : null, stringBuffer, fieldPosition);
    }

    public StringBuffer format(double d, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(d, this.fracDigits < 0 ? Double.toString(d) : null, stringBuffer, fieldPosition);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x015b A[LOOP:0: B:117:0x0155->B:119:0x015b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0192 A[LOOP:6: B:137:0x0192->B:139:0x0198, LOOP_START, PHI: r5
      0x0192: PHI (r5v11 int) = (r5v10 int), (r5v12 int) binds: [B:131:0x0181, B:139:0x0198] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x022b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0242 A[LOOP:4: B:191:0x023e->B:193:0x0242, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x024e A[LOOP:5: B:194:0x024a->B:196:0x024e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x024a A[EDGE_INSN: B:202:0x024a->B:204:? BREAK  A[LOOP:4: B:191:0x023e->B:193:0x0242], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0254 A[EDGE_INSN: B:203:0x0254->B:197:0x0254 BREAK  A[LOOP:5: B:194:0x024a->B:196:0x024e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.StringBuffer format(double r23, java.lang.String r25, java.lang.StringBuffer r26, java.text.FieldPosition r27) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.ExponentialFormat.format(double, java.lang.String, java.lang.StringBuffer, java.text.FieldPosition):java.lang.StringBuffer");
    }

    public StringBuffer format(long j, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(j, stringBuffer, fieldPosition);
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(((RealNum) obj).doubleValue(), stringBuffer, fieldPosition);
    }

    public Number parse(String str, ParsePosition parsePosition) {
        throw new Error("ExponentialFormat.parse - not implemented");
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new Error("ExponentialFormat.parseObject - not implemented");
    }
}
