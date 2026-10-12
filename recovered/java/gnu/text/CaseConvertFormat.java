package gnu.text;

import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;
import java.text.Format;

/* loaded from: classes2.dex */
public class CaseConvertFormat extends ReportFormat {

    /* renamed from: a, reason: collision with root package name */
    public final char f5476a;

    /* renamed from: b, reason: collision with root package name */
    public Format f5477b;

    public CaseConvertFormat(Format format, char c) {
        this.f5477b = format;
        this.f5476a = c;
    }

    public Format getBaseFormat() {
        return this.f5477b;
    }

    public void setBaseFormat(Format format) {
        this.f5477b = format;
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        StringBuffer stringBuffer = new StringBuffer(100);
        int i2 = ReportFormat.format(this.f5477b, objArr, i, stringBuffer, fieldPosition);
        int length = stringBuffer.length();
        char lowerCase = ' ';
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = stringBuffer.charAt(i3);
            char c = this.f5476a;
            if (c == 'U') {
                lowerCase = Character.toUpperCase(cCharAt);
            } else if ((c == 'T' && i3 == 0) || (c == 'C' && !Character.isLetterOrDigit(lowerCase))) {
                lowerCase = Character.toTitleCase(cCharAt);
            } else {
                lowerCase = Character.toLowerCase(cCharAt);
            }
            writer.write(lowerCase);
        }
        return i2;
    }
}
