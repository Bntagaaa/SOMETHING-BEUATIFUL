package gnu.kawa.functions;

import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.text.Char;
import gnu.text.ReportFormat;

/* loaded from: classes2.dex */
class LispEscapeFormat extends ReportFormat {
    public static final int ESCAPE_ALL = 242;
    public static final int ESCAPE_NORMAL = 241;
    public static final LispEscapeFormat alwaysTerminate = new LispEscapeFormat(0, -1073741824);
    boolean escapeAll;
    int param1;
    int param2;
    int param3;

    public LispEscapeFormat(int i, int i2) {
        this.param1 = i;
        this.param2 = i2;
        this.param3 = -1073741824;
    }

    public LispEscapeFormat(int i, int i2, int i3) {
        this.param1 = i;
        this.param2 = i2;
        this.param3 = i3;
    }

    public static Numeric getParam(int i, Object[] objArr, int i2) {
        if (i == -1342177280) {
            return IntNum.make(objArr.length - i2);
        }
        if (i == -1610612736) {
            Object obj = objArr[i2];
            if (obj instanceof Numeric) {
                return (Numeric) obj;
            }
            if (obj instanceof Number) {
                if ((obj instanceof Float) || (obj instanceof Double)) {
                    return new DFloNum(((Number) obj).doubleValue());
                }
                return IntNum.make(((Number) obj).longValue());
            }
            if (obj instanceof Char) {
                return new IntNum(((Char) obj).intValue());
            }
            if (obj instanceof Character) {
                return new IntNum(((Character) obj).charValue());
            }
            return new DFloNum(Double.NaN);
        }
        return IntNum.make(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000c A[PHI: r7
      0x000c: PHI (r7v8 int) = (r7v3 int), (r7v3 int), (r7v0 int) binds: [B:28:0x004b, B:30:0x0051, B:5:0x0009] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // gnu.text.ReportFormat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int format(java.lang.Object[] r6, int r7, java.io.Writer r8, java.text.FieldPosition r9) throws java.io.IOException {
        /*
            r5 = this;
            int r8 = r5.param1
            r9 = 0
            r0 = 1
            r1 = -1073741824(0xffffffffc0000000, float:-2.0)
            if (r8 != r1) goto Le
            int r6 = r6.length
            if (r7 != r6) goto Lc
            goto L53
        Lc:
            r0 = 0
            goto L53
        Le:
            int r2 = r5.param2
            if (r2 != r1) goto L15
            if (r8 != 0) goto L15
            goto L53
        L15:
            gnu.math.Numeric r8 = getParam(r8, r6, r7)
            int r2 = r5.param1
            r3 = -1610612736(0xffffffffa0000000, float:-1.0842022E-19)
            if (r2 != r3) goto L21
            int r7 = r7 + 1
        L21:
            int r2 = r5.param2
            if (r2 != r1) goto L2a
            boolean r0 = r8.isZero()
            goto L53
        L2a:
            gnu.math.Numeric r2 = getParam(r2, r6, r7)
            int r4 = r5.param2
            if (r4 != r3) goto L34
            int r7 = r7 + 1
        L34:
            int r4 = r5.param3
            if (r4 != r1) goto L3d
            boolean r0 = r8.equals(r2)
            goto L53
        L3d:
            gnu.math.Numeric r6 = getParam(r4, r6, r7)
            int r1 = r5.param3
            if (r1 != r3) goto L47
            int r7 = r7 + 1
        L47:
            boolean r8 = r2.geq(r8)
            if (r8 == 0) goto Lc
            boolean r6 = r6.geq(r2)
            if (r6 == 0) goto Lc
        L53:
            if (r0 != 0) goto L56
            goto L5f
        L56:
            boolean r6 = r5.escapeAll
            if (r6 == 0) goto L5d
            r9 = 242(0xf2, float:3.39E-43)
            goto L5f
        L5d:
            r9 = 241(0xf1, float:3.38E-43)
        L5f:
            int r6 = gnu.text.ReportFormat.result(r9, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.LispEscapeFormat.format(java.lang.Object[], int, java.io.Writer, java.text.FieldPosition):int");
    }
}
