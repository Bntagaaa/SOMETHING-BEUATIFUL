package gnu.kawa.functions;

import gnu.lists.FString;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.Procedure1;
import gnu.text.LineBufferedReader;
import gnu.text.ReportFormat;
import java.io.IOException;
import java.text.ParseException;

/* loaded from: classes2.dex */
public class ParseFormat extends Procedure1 {
    public static final int PARAM_FROM_LIST = -1610612736;
    public static final int PARAM_UNSPECIFIED = -1073741824;
    public static final int SEEN_HASH = 16;
    public static final int SEEN_MINUS = 1;
    public static final int SEEN_PLUS = 2;
    public static final int SEEN_SPACE = 4;
    public static final int SEEN_ZERO = 8;
    public static final ParseFormat parseFormat = new ParseFormat(false);
    boolean emacsStyle;

    public ParseFormat(boolean z) {
        this.emacsStyle = z;
    }

    public ReportFormat parseFormat(LineBufferedReader lineBufferedReader) throws IOException, ParseException {
        return parseFormat(lineBufferedReader, this.emacsStyle ? '?' : '~');
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.text.ReportFormat parseFormat(gnu.text.LineBufferedReader r24, char r25) throws java.io.IOException, java.text.ParseException {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.ParseFormat.parseFormat(gnu.text.LineBufferedReader, char):gnu.text.ReportFormat");
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        return asFormat(obj, this.emacsStyle ? '?' : '~');
    }

    public static ReportFormat asFormat(Object obj, char c) {
        CharArrayInPort charArrayInPort;
        try {
            if (obj instanceof ReportFormat) {
                return (ReportFormat) obj;
            }
            if (c == '~') {
                return new LispFormat(obj.toString());
            }
            if (obj instanceof FString) {
                FString fString = (FString) obj;
                charArrayInPort = new CharArrayInPort(fString.data, fString.size);
            } else {
                charArrayInPort = new CharArrayInPort(obj.toString());
            }
            try {
                return parseFormat(charArrayInPort, c);
            } finally {
                charArrayInPort.close();
            }
        } catch (IOException e) {
            throw new RuntimeException("Error parsing format (" + e + ")");
        } catch (IndexOutOfBoundsException unused) {
            throw new RuntimeException("End while parsing format");
        } catch (ParseException e2) {
            throw new RuntimeException("Invalid format (" + e2 + ")");
        }
    }
}
