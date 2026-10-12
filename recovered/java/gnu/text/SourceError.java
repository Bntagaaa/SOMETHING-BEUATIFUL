package gnu.text;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class SourceError implements SourceLocator {
    public String code;
    public int column;
    public Throwable fakeException;
    public String filename;
    public int line;
    public String message;
    public SourceError next;
    public char severity;

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        return null;
    }

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return true;
    }

    public SourceError(char c, String str, int i, int i2, String str2) {
        this.severity = c;
        this.filename = str;
        this.line = i;
        this.column = i2;
        this.message = str2;
    }

    public SourceError(char c, SourceLocator sourceLocator, String str) {
        this(c, sourceLocator.getFileName(), sourceLocator.getLineNumber(), sourceLocator.getColumnNumber(), str);
    }

    public SourceError(LineBufferedReader lineBufferedReader, char c, String str) {
        this(c, lineBufferedReader.getName(), lineBufferedReader.getLineNumber() + 1, lineBufferedReader.getColumnNumber(), str);
        int i = this.column;
        if (i >= 0) {
            this.column = i + 1;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.filename;
        if (str == null) {
            str = "<unknown>";
        }
        stringBuffer.append(str);
        if (this.line > 0 || this.column > 0) {
            stringBuffer.append(':');
            stringBuffer.append(this.line);
            if (this.column > 0) {
                stringBuffer.append(':');
                stringBuffer.append(this.column);
            }
        }
        stringBuffer.append(": ");
        if (this.severity == 'w') {
            stringBuffer.append("warning - ");
        }
        stringBuffer.append(this.message);
        if (this.code != null) {
            stringBuffer.append(" [");
            stringBuffer.append(this.code);
            stringBuffer.append("]");
        }
        Throwable th = this.fakeException;
        if (th != null) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                stringBuffer.append("\n    ");
                stringBuffer.append(stackTraceElement.toString());
            }
        }
        return stringBuffer.toString();
    }

    public void print(PrintWriter printWriter) {
        printWriter.print(this);
    }

    public void println(PrintWriter printWriter) {
        String string = toString();
        while (true) {
            int iIndexOf = string.indexOf(10);
            if (iIndexOf >= 0) {
                printWriter.println(string.substring(0, iIndexOf));
                string = string.substring(iIndexOf + 1);
            } else {
                printWriter.println(string);
                return;
            }
        }
    }

    public void println(PrintStream printStream) {
        String string = toString();
        while (true) {
            int iIndexOf = string.indexOf(10);
            if (iIndexOf >= 0) {
                printStream.println(string.substring(0, iIndexOf));
                string = string.substring(iIndexOf + 1);
            } else {
                printStream.println(string);
                return;
            }
        }
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public int getLineNumber() {
        int i = this.line;
        if (i == 0) {
            return -1;
        }
        return i;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public int getColumnNumber() {
        int i = this.column;
        if (i == 0) {
            return -1;
        }
        return i;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        return this.filename;
    }

    @Override // gnu.text.SourceLocator
    public String getFileName() {
        return this.filename;
    }
}
