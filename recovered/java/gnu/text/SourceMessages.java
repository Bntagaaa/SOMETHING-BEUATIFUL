package gnu.text;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class SourceMessages implements SourceLocator {
    public static boolean debugStackTraceOnError = false;
    public static boolean debugStackTraceOnWarning = false;

    /* renamed from: b, reason: collision with root package name */
    public SourceError f5502b;
    public SourceError c;
    public SourceLocator d;
    public String e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f5503g;
    public boolean sortMessages;

    /* renamed from: a, reason: collision with root package name */
    public int f5501a = 0;
    public SourceError h = null;

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return false;
    }

    public SourceError getErrors() {
        return this.f5502b;
    }

    public boolean seenErrors() {
        return this.f5501a > 0;
    }

    public boolean seenErrorsOrWarnings() {
        return this.f5502b != null;
    }

    public int getErrorCount() {
        return this.f5501a;
    }

    public void clearErrors() {
        this.f5501a = 0;
    }

    public void clear() {
        this.c = null;
        this.f5502b = null;
        this.f5501a = 0;
    }

    public void error(SourceError sourceError) {
        SourceError sourceError2;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        char c = sourceError.severity;
        if (c == 'f') {
            this.f5501a = 1000;
        } else if (c != 'w') {
            this.f5501a++;
        }
        if ((debugStackTraceOnError && (c == 'e' || c == 'f')) || (debugStackTraceOnWarning && c == 'w')) {
            sourceError.fakeException = new Throwable();
        }
        SourceError sourceError3 = this.c;
        if (sourceError3 != null && (str = sourceError3.filename) != null && !str.equals(sourceError.filename)) {
            this.h = this.c;
        }
        SourceError sourceError4 = this.h;
        if (this.sortMessages && sourceError.severity != 'f') {
            while (true) {
                if (sourceError4 == null) {
                    sourceError2 = this.f5502b;
                } else {
                    sourceError2 = sourceError4.next;
                }
                if (sourceError2 == null || ((i = sourceError.line) != 0 && (i2 = sourceError2.line) != 0 && (i < i2 || (i == i2 && (i3 = sourceError.column) != 0 && (i4 = sourceError2.column) != 0 && i3 < i4)))) {
                    break;
                } else {
                    sourceError4 = sourceError2;
                }
            }
        } else {
            sourceError4 = this.c;
        }
        if (sourceError4 == null) {
            sourceError.next = this.f5502b;
            this.f5502b = sourceError;
        } else {
            sourceError.next = sourceError4.next;
            sourceError4.next = sourceError;
        }
        if (sourceError4 == this.c) {
            this.c = sourceError;
        }
    }

    public void error(char c, String str, int i, int i2, String str2) {
        error(new SourceError(c, str, i, i2, str2));
    }

    public void error(char c, SourceLocator sourceLocator, String str) {
        error(new SourceError(c, sourceLocator, str));
    }

    public void error(char c, String str, int i, int i2, String str2, String str3) {
        SourceError sourceError = new SourceError(c, str, i, i2, str2);
        sourceError.code = str3;
        error(sourceError);
    }

    public void error(char c, SourceLocator sourceLocator, String str, String str2) {
        SourceError sourceError = new SourceError(c, sourceLocator, str);
        sourceError.code = str2;
        error(sourceError);
    }

    public void error(char c, String str) {
        error(new SourceError(c, this.e, this.f, this.f5503g, str));
    }

    public void error(char c, String str, Throwable th) {
        SourceError sourceError = new SourceError(c, this.e, this.f, this.f5503g, str);
        sourceError.fakeException = th;
        error(sourceError);
    }

    public void error(char c, String str, String str2) {
        SourceError sourceError = new SourceError(c, this.e, this.f, this.f5503g, str);
        sourceError.code = str2;
        error(sourceError);
    }

    public void printAll(PrintStream printStream, int i) {
        for (SourceError sourceError = this.f5502b; sourceError != null; sourceError = sourceError.next) {
            i--;
            if (i < 0) {
                return;
            }
            sourceError.println(printStream);
        }
    }

    public void printAll(PrintWriter printWriter, int i) {
        for (SourceError sourceError = this.f5502b; sourceError != null; sourceError = sourceError.next) {
            i--;
            if (i < 0) {
                return;
            }
            sourceError.println(printWriter);
        }
    }

    public String toString(int i) {
        if (this.f5502b == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (SourceError sourceError = this.f5502b; sourceError != null; sourceError = sourceError.next) {
            i--;
            if (i < 0) {
                break;
            }
            stringBuffer.append(sourceError);
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public boolean checkErrors(PrintWriter printWriter, int i) {
        if (this.f5502b != null) {
            printAll(printWriter, i);
            this.c = null;
            this.f5502b = null;
            int i2 = this.f5501a;
            this.f5501a = 0;
            if (i2 > 0) {
                return true;
            }
        }
        return false;
    }

    public boolean checkErrors(PrintStream printStream, int i) {
        if (this.f5502b != null) {
            printAll(printStream, i);
            this.c = null;
            this.f5502b = null;
            int i2 = this.f5501a;
            this.f5501a = 0;
            if (i2 > 0) {
                return true;
            }
        }
        return false;
    }

    public final void setSourceLocator(SourceLocator sourceLocator) {
        if (sourceLocator == this) {
            sourceLocator = null;
        }
        this.d = sourceLocator;
    }

    public final SourceLocator swapSourceLocator(SourceLocator sourceLocator) {
        SourceLocator sourceLocator2 = this.d;
        this.d = sourceLocator;
        return sourceLocator2;
    }

    public final void setLocation(SourceLocator sourceLocator) {
        this.d = null;
        this.f = sourceLocator.getLineNumber();
        this.f5503g = sourceLocator.getColumnNumber();
        this.e = sourceLocator.getFileName();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        SourceLocator sourceLocator = this.d;
        if (sourceLocator == null) {
            return null;
        }
        return sourceLocator.getPublicId();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        SourceLocator sourceLocator = this.d;
        return sourceLocator == null ? this.e : sourceLocator.getSystemId();
    }

    @Override // gnu.text.SourceLocator
    public final String getFileName() {
        return this.e;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getLineNumber() {
        SourceLocator sourceLocator = this.d;
        return sourceLocator == null ? this.f : sourceLocator.getLineNumber();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public final int getColumnNumber() {
        SourceLocator sourceLocator = this.d;
        return sourceLocator == null ? this.f5503g : sourceLocator.getColumnNumber();
    }

    public void setFile(String str) {
        this.e = str;
    }

    public void setLine(int i) {
        this.f = i;
    }

    public void setColumn(int i) {
        this.f5503g = i;
    }

    public void setLine(String str, int i, int i2) {
        this.e = str;
        this.f = i;
        this.f5503g = i2;
    }
}
