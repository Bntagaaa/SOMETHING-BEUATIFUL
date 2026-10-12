package gnu.kawa.functions;

import gnu.math.IntNum;
import gnu.text.ReportFormat;
import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
class LispPluralFormat extends ReportFormat {
    boolean backup;
    boolean y;

    public static LispPluralFormat getInstance(boolean z, boolean z2) {
        LispPluralFormat lispPluralFormat = new LispPluralFormat();
        lispPluralFormat.backup = z;
        lispPluralFormat.y = z2;
        return lispPluralFormat;
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        if (this.backup) {
            i--;
        }
        int i2 = i + 1;
        boolean z = objArr[i] != IntNum.one();
        if (this.y) {
            ReportFormat.print(writer, z ? "ies" : "y");
            return i2;
        }
        if (z) {
            writer.write(115);
        }
        return i2;
    }
}
