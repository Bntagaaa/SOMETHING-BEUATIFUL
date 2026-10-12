package gnu.text;

import gnu.bytecode.Access;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* loaded from: classes2.dex */
public class LineBufferedReader extends Reader {
    public static final int BUFFER_SIZE = 8192;
    private static final int CONVERT_CR = 1;
    private static final int DONT_KEEP_FULL_LINES = 8;
    private static final int PREV_WAS_CR = 4;
    private static final int USER_BUFFER = 2;
    public char[] buffer;
    private int flags;
    int highestPos;
    protected Reader in;
    public int limit;
    protected int lineNumber;
    private int lineStartPos;
    protected int markPos;
    Path path;
    public int pos;
    public char readState = '\n';
    protected int readAheadLimit = 0;

    public void lineStart(boolean z) throws IOException {
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public char getReadState() {
        return this.readState;
    }

    public void setKeepFullLines(boolean z) {
        if (z) {
            this.flags &= -9;
        } else {
            this.flags |= 8;
        }
    }

    public final boolean getConvertCR() {
        return (this.flags & 1) != 0;
    }

    public final void setConvertCR(boolean z) {
        if (z) {
            this.flags |= 1;
        } else {
            this.flags &= -2;
        }
    }

    public LineBufferedReader(InputStream inputStream) {
        this.in = new InputStreamReader(inputStream);
    }

    public LineBufferedReader(Reader reader) {
        this.in = reader;
    }

    public int fill(int i) throws IOException {
        return this.in.read(this.buffer, this.pos, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        if (r0 != '\r') goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        if (getConvertCR() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r4.buffer[r1] == '\n') goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        r4.lineNumber++;
        r4.lineStartPos = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0005, code lost:
    
        if (r1 < 0) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0007, code lost:
    
        r1 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        if (r1 < r4.pos) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        r0 = r4.buffer[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
    
        if (r0 == '\n') goto L15;
     */
    /* JADX WARN: Path cross not found for [B:4:0x0007, B:16:0x002e], limit reached: 17 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002e -> B:4:0x0007). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r4 = this;
            r0 = 0
            r4.readAheadLimit = r0
            int r1 = r4.lineStartPos
            if (r1 >= 0) goto L2e
        L7:
            int r1 = r0 + 1
            int r2 = r4.pos
            if (r1 < r2) goto Le
            return
        Le:
            char[] r2 = r4.buffer
            char r0 = r2[r0]
            r2 = 10
            if (r0 == r2) goto L26
            r3 = 13
            if (r0 != r3) goto L2e
            boolean r0 = r4.getConvertCR()
            if (r0 == 0) goto L26
            char[] r0 = r4.buffer
            char r0 = r0[r1]
            if (r0 == r2) goto L2e
        L26:
            int r0 = r4.lineNumber
            int r0 = r0 + 1
            r4.lineNumber = r0
            r4.lineStartPos = r1
        L2e:
            r0 = r1
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.LineBufferedReader.a():void");
    }

    public void setBuffer(char[] cArr) throws IOException {
        if (cArr == null) {
            char[] cArr2 = this.buffer;
            if (cArr2 != null) {
                char[] cArr3 = new char[cArr2.length];
                System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
                this.buffer = cArr3;
            }
            this.flags &= -3;
            return;
        }
        if (this.limit - this.pos > cArr.length) {
            throw new IOException("setBuffer - too short");
        }
        this.flags |= 2;
        b(cArr, 0);
    }

    public final void b(char[] cArr, int i) {
        int i2;
        int i3;
        int i4 = i + this.limit;
        if (i4 <= cArr.length) {
            i2 = 0;
        } else {
            i2 = this.pos;
            int i5 = this.readAheadLimit;
            if (i5 > 0 && (i3 = this.markPos) < i2) {
                if (i2 - i3 > i5 || ((this.flags & 2) != 0 && i4 - i3 > cArr.length)) {
                    a();
                } else {
                    i2 = i3;
                }
            }
            int length = i4 - cArr.length;
            if (length > i2 || (i2 > this.lineStartPos && (this.flags & 8) == 0)) {
                int i6 = this.lineStartPos;
                if (length <= i6 && i2 > i6) {
                    i2 = i6;
                } else if ((this.flags & 2) != 0) {
                    i2 -= (i2 - length) >> 2;
                } else {
                    if (i6 >= 0) {
                        i2 = i6;
                    }
                    cArr = new char[cArr.length * 2];
                }
            }
            this.lineStartPos -= i2;
            this.limit -= i2;
            this.markPos -= i2;
            this.pos -= i2;
            this.highestPos -= i2;
        }
        int i7 = this.limit;
        if (i7 > 0) {
            System.arraycopy(this.buffer, i2, cArr, 0, i7);
        }
        this.buffer = cArr;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        char c;
        int i = this.pos;
        if (i > 0) {
            c = this.buffer[i - 1];
        } else if ((this.flags & 4) != 0) {
            c = '\r';
        } else {
            c = this.lineStartPos >= 0 ? '\n' : (char) 0;
        }
        if (c == '\r' || c == '\n') {
            if (this.lineStartPos < i && (this.readAheadLimit == 0 || i <= this.markPos)) {
                this.lineStartPos = i;
                this.lineNumber++;
            }
            boolean z = i < this.highestPos;
            if (c != '\n' || (i > 1 ? this.buffer[i - 2] != '\r' : (this.flags & 4) == 0)) {
                lineStart(z);
            }
            if (!z) {
                this.highestPos = this.pos + 1;
            }
        }
        int i2 = this.pos;
        int i3 = this.limit;
        if (i2 >= i3) {
            char[] cArr = this.buffer;
            if (cArr == null) {
                this.buffer = new char[8192];
            } else if (i3 == cArr.length) {
                b(cArr, 1);
            }
            int i4 = this.pos;
            if (i4 == 0) {
                if (c == '\r') {
                    this.flags |= 4;
                } else {
                    this.flags &= -5;
                }
            }
            int iFill = fill(this.buffer.length - i4);
            if (iFill <= 0) {
                return -1;
            }
            this.limit += iFill;
        }
        char[] cArr2 = this.buffer;
        int i5 = this.pos;
        this.pos = i5 + 1;
        char c2 = cArr2[i5];
        if (c2 == '\n') {
            if (c == '\r') {
                int i6 = this.lineStartPos;
                if (i6 == i5) {
                    this.lineNumber--;
                    this.lineStartPos = i6 - 1;
                }
                if (getConvertCR()) {
                    return read();
                }
            }
        } else if (c2 == '\r' && getConvertCR()) {
            return 10;
        }
        return c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8, types: [char, int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3 = this.pos;
        char c = 0;
        c = 0;
        if (i3 < this.limit) {
            if (i3 > 0) {
                c = this.buffer[i3 - 1];
            } else if ((this.flags & 4) != 0 || this.lineStartPos >= 0) {
                c = 10;
            }
        }
        int i4 = i2;
        while (i4 > 0) {
            int i5 = this.pos;
            int i6 = this.limit;
            if (i5 < i6 && c != 10 && c != 13) {
                if (i4 < i6 - i5) {
                    i6 = i5 + i4;
                }
                while (i5 < i6) {
                    c = this.buffer[i5];
                    if (c == 10 || c == 13) {
                        break;
                    }
                    cArr[i] = (char) c;
                    i5++;
                    i++;
                }
                i4 -= i5 - this.pos;
                this.pos = i5;
            } else {
                if (i5 >= i6 && i4 < i2) {
                    return i2 - i4;
                }
                c = read();
                if (c < 0) {
                    int i7 = i2 - i4;
                    if (i7 <= 0) {
                        return -1;
                    }
                    return i7;
                }
                cArr[i] = (char) c;
                i4--;
                i++;
            }
        }
        return i2;
    }

    public Path getPath() {
        return this.path;
    }

    public void setPath(Path path) {
        this.path = path;
    }

    public String getName() {
        Path path = this.path;
        if (path == null) {
            return null;
        }
        return path.toString();
    }

    public void setName(Object obj) {
        setPath(Path.valueOf(obj));
    }

    public int getLineNumber() {
        int i = this.lineNumber;
        if (this.readAheadLimit == 0) {
            int i2 = this.pos;
            if (i2 <= 0 || i2 <= this.lineStartPos) {
                return i;
            }
            char c = this.buffer[i2 - 1];
            return (c == '\n' || c == '\r') ? i + 1 : i;
        }
        char[] cArr = this.buffer;
        int i3 = this.lineStartPos;
        if (i3 < 0) {
            i3 = 0;
        }
        return countLines(cArr, i3, this.pos) + i;
    }

    public void setLineNumber(int i) {
        this.lineNumber = (i - getLineNumber()) + this.lineNumber;
    }

    public void incrLineNumber(int i, int i2) {
        this.lineNumber += i;
        this.lineStartPos = i2;
    }

    public int getColumnNumber() {
        int i;
        char c;
        int i2 = this.pos;
        if (i2 > 0 && ((c = this.buffer[i2 - 1]) == '\n' || c == '\r')) {
            return 0;
        }
        if (this.readAheadLimit <= 0) {
            return i2 - this.lineStartPos;
        }
        int i3 = this.lineStartPos;
        int i4 = i3 >= 0 ? i3 : 0;
        int i5 = i4;
        while (true) {
            i = this.pos;
            if (i4 >= i) {
                break;
            }
            int i6 = i4 + 1;
            char c2 = this.buffer[i4];
            if (c2 == '\n' || c2 == '\r') {
                i5 = i6;
            }
            i4 = i6;
        }
        int i7 = i - i5;
        int i8 = this.lineStartPos;
        return i8 < 0 ? i7 - i8 : i7;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) {
        try {
            if (this.readAheadLimit > 0) {
                a();
            }
            this.readAheadLimit = i;
            this.markPos = this.pos;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        if (this.readAheadLimit <= 0) {
            throw new IOException("mark invalid");
        }
        int i = this.pos;
        if (i > this.highestPos) {
            this.highestPos = i;
        }
        this.pos = this.markPos;
        this.readAheadLimit = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x005a, code lost:
    
        r7.append(r6.buffer, r0, r1 - r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readLine(java.lang.StringBuffer r7, char r8) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            int r0 = r6.read()
            if (r0 >= 0) goto L7
            goto L59
        L7:
            int r0 = r6.pos
            int r0 = r0 + (-1)
            r6.pos = r0
        Ld:
            int r1 = r6.pos
            int r2 = r6.limit
            if (r1 >= r2) goto L5a
            char[] r2 = r6.buffer
            int r3 = r1 + 1
            r6.pos = r3
            char r3 = r2[r1]
            r4 = 13
            r5 = 10
            if (r3 == r4) goto L23
            if (r3 != r5) goto Ld
        L23:
            int r1 = r1 - r0
            r7.append(r2, r0, r1)
            r0 = 80
            if (r8 != r0) goto L32
            int r7 = r6.pos
            int r7 = r7 + (-1)
            r6.pos = r7
            return
        L32:
            boolean r0 = r6.getConvertCR()
            r1 = 73
            if (r0 != 0) goto L54
            if (r3 != r5) goto L3d
            goto L54
        L3d:
            if (r8 == r1) goto L42
            r7.append(r4)
        L42:
            int r0 = r6.read()
            if (r0 != r5) goto L4e
            if (r8 == r1) goto L59
            r7.append(r5)
            return
        L4e:
            if (r0 < 0) goto L59
            r6.unread_quick()
            return
        L54:
            if (r8 == r1) goto L59
            r7.append(r5)
        L59:
            return
        L5a:
            char[] r2 = r6.buffer
            int r1 = r1 - r0
            r7.append(r2, r0, r1)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.LineBufferedReader.readLine(java.lang.StringBuffer, char):void");
    }

    public String readLine() throws IOException {
        int i;
        char c;
        int i2 = read();
        if (i2 < 0) {
            return null;
        }
        if (i2 == 13 || i2 == 10) {
            return "";
        }
        int i3 = this.pos - 1;
        do {
            i = this.pos;
            if (i >= this.limit) {
                break;
            }
            char[] cArr = this.buffer;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\r') {
                break;
            }
        } while (c != '\n');
        if (c != '\n' && !getConvertCR()) {
            int i4 = this.pos;
            if (i4 >= this.limit) {
                this.pos = i4 - 1;
                StringBuffer stringBuffer = new StringBuffer(100);
                stringBuffer.append(this.buffer, i3, this.pos - i3);
                readLine(stringBuffer, Access.INNERCLASS_CONTEXT);
                return stringBuffer.toString();
            }
            if (this.buffer[i4] == '\n') {
                this.pos = i4 + 1;
            }
        }
        return new String(this.buffer, i3, i - i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [char] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public int skip(int i) throws IOException {
        int i2;
        char c;
        int i3;
        int i4;
        if (i < 0) {
            int i5 = -i;
            while (i5 > 0 && this.pos > 0) {
                unread();
                i5--;
            }
            return i + i5;
        }
        int i6 = this.pos;
        char c2 = 0;
        c2 = 0;
        if (i6 < this.limit) {
            if (i6 > 0) {
                c2 = this.buffer[i6 - 1];
            } else if ((this.flags & 4) != 0 || this.lineStartPos >= 0) {
                i2 = i;
                c = 10;
            }
            i2 = i;
            c = c2;
        } else {
            i2 = i;
            c = c2;
        }
        while (i2 > 0) {
            if (c == 10 || c == 13 || (i3 = this.pos) >= (i4 = this.limit)) {
                c = read();
                if (c < 0) {
                    return i - i2;
                }
                i2--;
            } else {
                if (i2 < i4 - i3) {
                    i4 = i3 + i2;
                }
                while (i3 < i4) {
                    c = this.buffer[i3];
                    if (c == 10 || c == 13) {
                        break;
                    }
                    i3++;
                }
                i2 -= i3 - this.pos;
                this.pos = i3;
            }
        }
        return i;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return this.pos < this.limit || this.in.ready();
    }

    public final void skip_quick() throws IOException {
        this.pos++;
    }

    public void skip() throws IOException {
        read();
    }

    public static int countLines(char[] cArr, int i, int i2) {
        int i3 = 0;
        char c = 0;
        while (i < i2) {
            char c2 = cArr[i];
            if ((c2 == '\n' && c != '\r') || c2 == '\r') {
                i3++;
            }
            i++;
            c = c2;
        }
        return i3;
    }

    public void skipRestOfLine() throws IOException {
        int i;
        do {
            i = read();
            if (i < 0) {
                return;
            }
            if (i == 13) {
                int i2 = read();
                if (i2 < 0 || i2 == 10) {
                    return;
                }
                unread();
                return;
            }
        } while (i != 10);
    }

    public void unread() throws IOException {
        int i = this.pos;
        if (i == 0) {
            throw new IOException("unread too much");
        }
        int i2 = i - 1;
        this.pos = i2;
        char c = this.buffer[i2];
        if (c == '\n' || c == '\r') {
            if (i2 > 0 && c == '\n' && getConvertCR()) {
                char[] cArr = this.buffer;
                int i3 = this.pos;
                if (cArr[i3 - 1] == '\r') {
                    this.pos = i3 - 1;
                }
            }
            int i4 = this.pos;
            if (i4 < this.lineStartPos) {
                this.lineNumber--;
                while (i4 > 0) {
                    int i5 = i4 - 1;
                    char c2 = this.buffer[i5];
                    if (c2 == '\r' || c2 == '\n') {
                        break;
                    } else {
                        i4 = i5;
                    }
                }
                this.lineStartPos = i4;
            }
        }
    }

    public void unread_quick() {
        this.pos--;
    }

    public int peek() throws IOException {
        char[] cArr;
        char c;
        int i = this.pos;
        if (i < this.limit && i > 0 && (c = (cArr = this.buffer)[i - 1]) != '\n' && c != '\r') {
            char c2 = cArr[i];
            if (c2 == '\r' && getConvertCR()) {
                return 10;
            }
            return c2;
        }
        int i2 = read();
        if (i2 >= 0) {
            unread_quick();
        }
        return i2;
    }
}
