package gnu.text;

import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;
import java.text.ParsePosition;

/* loaded from: classes2.dex */
public class LiteralFormat extends ReportFormat {

    /* renamed from: a, reason: collision with root package name */
    public final char[] f5487a;

    public LiteralFormat(char[] cArr) {
        this.f5487a = cArr;
    }

    public LiteralFormat(String str) {
        this.f5487a = str.toCharArray();
    }

    public LiteralFormat(StringBuffer stringBuffer) {
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        this.f5487a = cArr;
        stringBuffer.getChars(0, length, cArr, 0);
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        writer.write(this.f5487a);
        return i;
    }

    @Override // gnu.text.ReportFormat, java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new Error("LiteralFormat.parseObject - not implemented");
    }

    public String content() {
        return new String(this.f5487a);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("LiteralFormat[\"");
        stringBuffer.append(this.f5487a);
        stringBuffer.append("\"]");
        return stringBuffer.toString();
    }
}
