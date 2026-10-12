package gnu.kawa.functions;

import gnu.math.ExponentialFormat;
import gnu.math.FixedRealFormat;
import gnu.math.RealNum;
import gnu.text.ReportFormat;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
class LispRealFormat extends ReportFormat {
    int arg1;
    int arg2;
    int arg3;
    int arg4;
    int arg5;
    int arg6;
    int arg7;
    int argsUsed;
    boolean internalPad;
    char op;
    boolean showPlus;

    public LispRealFormat() {
        int i = this.arg1;
        int i2 = (i == -1342177280 || this.arg2 == -1342177280 || this.arg3 == -1342177280 || this.arg4 == -1342177280 || this.arg5 == -1342177280 || this.arg6 == -1342177280 || this.arg7 == -1342177280) ? 1 : 0;
        this.argsUsed = i2;
        if (i == -1610612736) {
            this.argsUsed = i2 + 2;
        }
        if (this.arg2 == -1610612736) {
            this.argsUsed += 2;
        }
        if (this.arg3 == -1610612736) {
            this.argsUsed += 2;
        }
        if (this.arg4 == -1610612736) {
            this.argsUsed += 2;
        }
        if (this.arg5 == -1610612736) {
            this.argsUsed += 2;
        }
        if (this.arg6 == -1610612736) {
            this.argsUsed += 2;
        }
        if (this.arg7 == -1610612736) {
            this.argsUsed += 2;
        }
    }

    public java.text.Format resolve(Object[] objArr, int i) {
        char c = this.op;
        if (c == '$') {
            FixedRealFormat fixedRealFormat = new FixedRealFormat();
            int param = ReportFormat.getParam(this.arg1, 2, objArr, i);
            if (this.arg1 == -1610612736) {
                i++;
            }
            int param2 = ReportFormat.getParam(this.arg2, 1, objArr, i);
            if (this.arg2 == -1610612736) {
                i++;
            }
            int param3 = ReportFormat.getParam(this.arg3, 0, objArr, i);
            if (this.arg3 == -1610612736) {
                i++;
            }
            char param4 = ReportFormat.getParam(this.arg4, ' ', objArr, i);
            fixedRealFormat.setMaximumFractionDigits(param);
            fixedRealFormat.setMinimumIntegerDigits(param2);
            fixedRealFormat.width = param3;
            fixedRealFormat.padChar = param4;
            fixedRealFormat.internalPad = this.internalPad;
            fixedRealFormat.showPlus = this.showPlus;
            return fixedRealFormat;
        }
        if (c == 'F') {
            FixedRealFormat fixedRealFormat2 = new FixedRealFormat();
            int param5 = ReportFormat.getParam(this.arg1, 0, objArr, i);
            if (this.arg1 == -1610612736) {
                i++;
            }
            int param6 = ReportFormat.getParam(this.arg2, -1, objArr, i);
            if (this.arg2 == -1610612736) {
                i++;
            }
            int param7 = ReportFormat.getParam(this.arg3, 0, objArr, i);
            if (this.arg3 == -1610612736) {
                i++;
            }
            fixedRealFormat2.overflowChar = ReportFormat.getParam(this.arg4, (char) 0, objArr, i);
            if (this.arg4 == -1610612736) {
                i++;
            }
            char param8 = ReportFormat.getParam(this.arg5, ' ', objArr, i);
            fixedRealFormat2.setMaximumFractionDigits(param6);
            fixedRealFormat2.setMinimumIntegerDigits(0);
            fixedRealFormat2.width = param5;
            fixedRealFormat2.scale = param7;
            fixedRealFormat2.padChar = param8;
            fixedRealFormat2.internalPad = this.internalPad;
            fixedRealFormat2.showPlus = this.showPlus;
            return fixedRealFormat2;
        }
        ExponentialFormat exponentialFormat = new ExponentialFormat();
        exponentialFormat.exponentShowSign = true;
        exponentialFormat.width = ReportFormat.getParam(this.arg1, 0, objArr, i);
        if (this.arg1 == -1610612736) {
            i++;
        }
        exponentialFormat.fracDigits = ReportFormat.getParam(this.arg2, -1, objArr, i);
        if (this.arg2 == -1610612736) {
            i++;
        }
        exponentialFormat.expDigits = ReportFormat.getParam(this.arg3, 0, objArr, i);
        if (this.arg3 == -1610612736) {
            i++;
        }
        exponentialFormat.intDigits = ReportFormat.getParam(this.arg4, 1, objArr, i);
        if (this.arg4 == -1610612736) {
            i++;
        }
        exponentialFormat.overflowChar = ReportFormat.getParam(this.arg5, (char) 0, objArr, i);
        if (this.arg5 == -1610612736) {
            i++;
        }
        exponentialFormat.padChar = ReportFormat.getParam(this.arg6, ' ', objArr, i);
        if (this.arg6 == -1610612736) {
            i++;
        }
        exponentialFormat.exponentChar = ReportFormat.getParam(this.arg7, 'E', objArr, i);
        exponentialFormat.general = this.op == 'G';
        exponentialFormat.showPlus = this.showPlus;
        return exponentialFormat;
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        StringBuffer stringBuffer = new StringBuffer(100);
        java.text.Format formatResolve = resolve(objArr, i);
        int i2 = i + (this.argsUsed >> 1);
        int i3 = i2 + 1;
        formatResolve.format((RealNum) objArr[i2], stringBuffer, fieldPosition);
        writer.write(stringBuffer.toString());
        return i3;
    }
}
