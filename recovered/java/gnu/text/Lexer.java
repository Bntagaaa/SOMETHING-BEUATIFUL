package gnu.text;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import okio.Utf8;

/* loaded from: classes2.dex */
public class Lexer extends Reader {
    protected boolean interactive;
    SourceMessages messages;
    protected int nesting;
    protected LineBufferedReader port;
    private int saveTokenBufferLength;
    public char[] tokenBuffer;
    public int tokenBufferLength;

    public Lexer(LineBufferedReader lineBufferedReader) {
        this.messages = null;
        this.tokenBuffer = new char[100];
        this.tokenBufferLength = 0;
        this.saveTokenBufferLength = -1;
        this.port = lineBufferedReader;
    }

    public Lexer(LineBufferedReader lineBufferedReader, SourceMessages sourceMessages) {
        this.tokenBuffer = new char[100];
        this.tokenBufferLength = 0;
        this.saveTokenBufferLength = -1;
        this.port = lineBufferedReader;
        this.messages = sourceMessages;
    }

    public char pushNesting(char c) {
        this.nesting++;
        LineBufferedReader port = getPort();
        char c2 = port.readState;
        port.readState = c;
        return c2;
    }

    public void popNesting(char c) {
        getPort().readState = c;
        this.nesting--;
    }

    public final LineBufferedReader getPort() {
        return this.port;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.port.close();
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        return this.port.read();
    }

    public int readUnicodeChar() throws IOException {
        int i;
        int i2 = this.port.read();
        return (i2 < 55296 || i2 >= 56319 || (i = this.port.read()) < 56320 || i > 57343) ? i2 : (i2 - Utf8.LOG_SURROGATE_HEADER) + ((i2 - 55296) << 10) + 65536;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        return this.port.read(cArr, i, i2);
    }

    public void unread(int i) throws IOException {
        if (i >= 0) {
            this.port.unread();
        }
    }

    public int peek() throws IOException {
        return this.port.peek();
    }

    public void skip() throws IOException {
        this.port.skip();
    }

    public void unread() throws IOException {
        this.port.unread();
    }

    public void unread_quick() throws IOException {
        this.port.unread_quick();
    }

    public boolean checkNext(char c) throws IOException {
        int i = this.port.read();
        if (i == c) {
            return true;
        }
        if (i < 0) {
            return false;
        }
        this.port.unread_quick();
        return false;
    }

    public void skip_quick() throws IOException {
        this.port.skip_quick();
    }

    public SourceMessages getMessages() {
        return this.messages;
    }

    public void setMessages(SourceMessages sourceMessages) {
        this.messages = sourceMessages;
    }

    public boolean checkErrors(PrintWriter printWriter, int i) {
        SourceMessages sourceMessages = this.messages;
        return sourceMessages != null && sourceMessages.checkErrors(printWriter, i);
    }

    public SourceError getErrors() {
        SourceMessages sourceMessages = this.messages;
        if (sourceMessages == null) {
            return null;
        }
        return sourceMessages.getErrors();
    }

    public boolean seenErrors() {
        SourceMessages sourceMessages = this.messages;
        return sourceMessages != null && sourceMessages.seenErrors();
    }

    public void clearErrors() {
        SourceMessages sourceMessages = this.messages;
        if (sourceMessages != null) {
            sourceMessages.clearErrors();
        }
    }

    public void error(char c, String str, int i, int i2, String str2) {
        if (this.messages == null) {
            this.messages = new SourceMessages();
        }
        this.messages.error(c, str, i, i2, str2);
    }

    public void error(char c, String str) {
        int lineNumber = this.port.getLineNumber();
        int columnNumber = this.port.getColumnNumber();
        error(c, this.port.getName(), lineNumber + 1, columnNumber >= 0 ? columnNumber + 1 : 0, str);
    }

    public void error(String str) {
        error('e', str);
    }

    public void fatal(String str) throws SyntaxException {
        error('f', str);
        throw new SyntaxException(this.messages);
    }

    public void eofError(String str) throws SyntaxException {
        fatal(str);
    }

    public void eofError(String str, int i, int i2) throws SyntaxException {
        error('f', this.port.getName(), i, i2, str);
        throw new SyntaxException(this.messages);
    }

    public int readOptionalExponent() throws IOException {
        int i;
        int iDigit;
        int i2 = read();
        boolean z = false;
        if (i2 == 43 || i2 == 45) {
            i = i2;
            i2 = read();
        } else {
            i = 0;
        }
        int i3 = 1;
        if (i2 >= 0 && (iDigit = Character.digit((char) i2, 10)) >= 0) {
            while (true) {
                i2 = read();
                int iDigit2 = Character.digit((char) i2, 10);
                if (iDigit2 < 0) {
                    break;
                }
                if (iDigit > 214748363) {
                    z = true;
                }
                iDigit = (iDigit * 10) + iDigit2;
            }
            i3 = iDigit;
        } else if (i != 0) {
            error("exponent sign not followed by digit");
        }
        if (i2 >= 0) {
            unread(i2);
        }
        if (i == 45) {
            i3 = -i3;
        }
        return z ? i == 45 ? Integer.MIN_VALUE : Integer.MAX_VALUE : i3;
    }

    public boolean readDelimited(String str) throws SyntaxException, IOException {
        int i;
        this.tokenBufferLength = 0;
        int length = str.length() - 1;
        char cCharAt = str.charAt(length);
        while (true) {
            int i2 = read();
            if (i2 < 0) {
                return false;
            }
            if (i2 == cCharAt && (i = this.tokenBufferLength - length) >= 0) {
                int i3 = length;
                while (i3 != 0) {
                    i3--;
                    if (this.tokenBuffer[i + i3] != str.charAt(i3)) {
                        break;
                    }
                }
                this.tokenBufferLength = i;
                return true;
            }
            tokenBufferAppend((char) i2);
        }
    }

    public static long readDigitsInBuffer(LineBufferedReader lineBufferedReader, int i) {
        long j = i;
        long j2 = Long.MAX_VALUE / j;
        int i2 = lineBufferedReader.pos;
        if (i2 >= lineBufferedReader.limit) {
            return 0L;
        }
        boolean z = false;
        long j3 = 0;
        do {
            int iDigit = Character.digit(lineBufferedReader.buffer[i2], i);
            if (iDigit < 0) {
                break;
            }
            if (j3 > j2) {
                z = true;
            } else {
                j3 = (j3 * j) + iDigit;
            }
            if (j3 < 0) {
                z = true;
            }
            i2++;
        } while (i2 < lineBufferedReader.limit);
        lineBufferedReader.pos = i2;
        if (z) {
            return -1L;
        }
        return j3;
    }

    public String getName() {
        return this.port.getName();
    }

    public int getLineNumber() {
        return this.port.getLineNumber();
    }

    public int getColumnNumber() {
        return this.port.getColumnNumber();
    }

    public boolean isInteractive() {
        return this.interactive;
    }

    public void setInteractive(boolean z) {
        this.interactive = z;
    }

    public void tokenBufferAppend(int i) {
        if (i >= 65536) {
            tokenBufferAppend(((i - 65536) >> 10) + 55296);
            i = (i & 1023) + Utf8.LOG_SURROGATE_HEADER;
        }
        int i2 = this.tokenBufferLength;
        char[] cArr = this.tokenBuffer;
        if (i2 == cArr.length) {
            char[] cArr2 = new char[i2 * 2];
            this.tokenBuffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            cArr = this.tokenBuffer;
        }
        cArr[i2] = (char) i;
        this.tokenBufferLength = i2 + 1;
    }

    public String tokenBufferString() {
        return new String(this.tokenBuffer, 0, this.tokenBufferLength);
    }

    public void mark() throws IOException {
        if (this.saveTokenBufferLength >= 0) {
            throw new Error("internal error: recursive call to mark not allowed");
        }
        this.port.mark(Integer.MAX_VALUE);
        this.saveTokenBufferLength = this.tokenBufferLength;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        if (this.saveTokenBufferLength < 0) {
            throw new Error("internal error: reset called without prior mark");
        }
        this.port.reset();
        this.saveTokenBufferLength = -1;
    }
}
