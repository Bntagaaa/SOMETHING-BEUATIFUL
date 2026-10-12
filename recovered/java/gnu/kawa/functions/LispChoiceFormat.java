package gnu.kawa.functions;

import gnu.text.ReportFormat;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
class LispChoiceFormat extends ReportFormat {
    java.text.Format[] choices;
    boolean lastIsDefault;
    int param;
    boolean skipIfFalse;
    boolean testBoolean;

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        java.text.Format format;
        if (this.testBoolean) {
            format = this.choices[objArr[i] != Boolean.FALSE ? (char) 1 : (char) 0];
            i++;
        } else if (!this.skipIfFalse) {
            int param = ReportFormat.getParam(this.param, -1610612736, objArr, i);
            if (this.param == -1610612736) {
                i++;
            }
            if (param < 0 || param >= this.choices.length) {
                if (!this.lastIsDefault) {
                    return i;
                }
                param = this.choices.length - 1;
            }
            format = this.choices[param];
        } else {
            if (objArr[i] == Boolean.FALSE) {
                return i + 1;
            }
            format = this.choices[0];
        }
        return ReportFormat.format(format, objArr, i, writer, fieldPosition);
    }
}
