package gnu.text;

import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class SyntaxException extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public String f5504a;

    /* renamed from: b, reason: collision with root package name */
    public final SourceMessages f5505b;
    public int maxToPrint = 10;

    public SyntaxException(SourceMessages sourceMessages) {
        this.f5505b = sourceMessages;
    }

    public SyntaxException(String str, SourceMessages sourceMessages) {
        this.f5504a = str;
        this.f5505b = sourceMessages;
    }

    public final String getHeader() {
        return this.f5504a;
    }

    public final void setHeader(String str) {
        this.f5504a = str;
    }

    public SourceMessages getMessages() {
        return this.f5505b;
    }

    public void printAll(PrintWriter printWriter, int i) {
        String str = this.f5504a;
        if (str != null) {
            printWriter.println(str);
        }
        this.f5505b.printAll(printWriter, i);
    }

    public void clear() {
        this.f5505b.clear();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.f5504a;
        if (str != null) {
            stringBuffer.append(str);
        }
        int i = this.maxToPrint;
        for (SourceError sourceError = this.f5505b.f5502b; sourceError != null; sourceError = sourceError.next) {
            i--;
            if (i < 0) {
                break;
            }
            stringBuffer.append('\n');
            stringBuffer.append(sourceError);
        }
        return stringBuffer.toString();
    }
}
