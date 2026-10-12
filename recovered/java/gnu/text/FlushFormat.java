package gnu.text;

import java.io.IOException;
import java.io.Writer;
import java.text.FieldPosition;

/* loaded from: classes2.dex */
public class FlushFormat extends ReportFormat {

    /* renamed from: a, reason: collision with root package name */
    public static FlushFormat f5483a;

    public static FlushFormat getInstance() {
        if (f5483a == null) {
            f5483a = new FlushFormat();
        }
        return f5483a;
    }

    @Override // gnu.text.ReportFormat
    public int format(Object[] objArr, int i, Writer writer, FieldPosition fieldPosition) throws IOException {
        writer.flush();
        return i;
    }
}
