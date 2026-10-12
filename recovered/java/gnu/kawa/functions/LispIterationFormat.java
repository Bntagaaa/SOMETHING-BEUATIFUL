package gnu.kawa.functions;

import gnu.text.ReportFormat;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
class LispIterationFormat extends ReportFormat {
    boolean atLeastOnce;
    java.text.Format body;
    int maxIterations;
    boolean seenAt;
    boolean seenColon;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000f, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int format(java.text.Format r4, int r5, java.lang.Object[] r6, int r7, java.io.Writer r8, boolean r9, boolean r10) throws java.io.IOException {
        /*
            r0 = 0
            r1 = 0
        L2:
            if (r1 != r5) goto L8
            r2 = -1
            if (r5 == r2) goto L8
            goto Lf
        L8:
            int r2 = r6.length
            if (r7 != r2) goto L10
            if (r1 > 0) goto Lf
            if (r10 != 0) goto L10
        Lf:
            return r7
        L10:
            r2 = 0
            if (r9 == 0) goto L28
            r3 = r6[r7]
            java.lang.Object[] r3 = gnu.kawa.functions.LispFormat.asArray(r3)
            int r2 = gnu.text.ReportFormat.format(r4, r3, r0, r8, r2)
            int r7 = r7 + 1
            int r2 = gnu.text.ReportFormat.resultCode(r2)
            r3 = 242(0xf2, float:3.39E-43)
            if (r2 != r3) goto L33
            return r7
        L28:
            int r7 = gnu.text.ReportFormat.format(r4, r6, r7, r8, r2)
            if (r7 >= 0) goto L33
            int r4 = gnu.text.ReportFormat.nextArg(r7)
            return r4
        L33:
            int r1 = r1 + 1
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.LispIterationFormat.format(java.text.Format, int, java.lang.Object[], int, java.io.Writer, boolean, boolean):int");
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        int i2;
        java.text.Format lispFormat;
        int param = ReportFormat.getParam(this.maxIterations, -1, objArr, i);
        if (this.maxIterations == -1610612736) {
            i++;
        }
        java.text.Format format = this.body;
        if (format == null) {
            int i3 = i + 1;
            Object obj = objArr[i];
            if (obj instanceof java.text.Format) {
                lispFormat = (java.text.Format) obj;
                i2 = i3;
            } else {
                try {
                    i2 = i3;
                    lispFormat = new LispFormat(obj.toString());
                } catch (Exception unused) {
                    ReportFormat.print(writer, "<invalid argument for \"~{~}\" format>");
                    return objArr.length;
                }
            }
        } else {
            i2 = i;
            lispFormat = format;
        }
        if (this.seenAt) {
            return format(lispFormat, param, objArr, i2, writer, this.seenColon, this.atLeastOnce);
        }
        int i4 = i2;
        Object obj2 = objArr[i4];
        Object[] objArrAsArray = LispFormat.asArray(obj2);
        if (objArrAsArray == null) {
            writer.write("{" + obj2 + "}");
        } else {
            format(lispFormat, param, objArrAsArray, 0, writer, this.seenColon, this.atLeastOnce);
        }
        return i4 + 1;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("LispIterationFormat[");
        stringBuffer.append(this.body);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
