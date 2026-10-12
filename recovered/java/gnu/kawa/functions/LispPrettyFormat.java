package gnu.kawa.functions;

import gnu.mapping.OutPort;
import gnu.text.ReportFormat;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
class LispPrettyFormat extends ReportFormat {
    java.text.Format body;
    boolean perLine;
    String prefix;
    boolean seenAt;
    java.text.Format[] segments;
    String suffix;

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        int i2;
        String str = this.prefix;
        String str2 = this.suffix;
        OutPort outPort = writer instanceof OutPort ? (OutPort) writer : null;
        try {
            if (this.seenAt) {
                if (outPort != null) {
                    outPort.startLogicalBlock(str, this.perLine, str2);
                }
                i2 = ReportFormat.format(this.body, objArr, i, writer, fieldPosition);
            } else {
                Object obj = objArr[i];
                Object[] objArrAsArray = LispFormat.asArray(obj);
                if (objArrAsArray == null) {
                    str = "";
                    str2 = "";
                }
                if (outPort != null) {
                    outPort.startLogicalBlock(str, this.perLine, this.suffix);
                }
                if (objArrAsArray == null) {
                    ObjectFormat.format(obj, writer, -1, true);
                } else {
                    ReportFormat.format(this.body, objArrAsArray, 0, writer, fieldPosition);
                }
                i2 = i + 1;
            }
            if (outPort != null) {
                outPort.endLogicalBlock(str2);
            }
            return i2;
        } catch (Throwable th) {
            if (outPort != null) {
                outPort.endLogicalBlock(str2);
            }
            throw th;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("LispPrettyFormat[prefix: \"");
        stringBuffer.append(this.prefix);
        stringBuffer.append("\", suffix: \"");
        stringBuffer.append(this.suffix);
        stringBuffer.append("\", body: ");
        stringBuffer.append(this.body);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
