package gnu.text;

import gnu.lists.CharSeq;
import java.io.Reader;

/* loaded from: classes2.dex */
public class QueueReader extends Reader implements Appendable {
    boolean EOFseen;
    char[] buffer;
    int limit;
    int mark;
    int pos;
    int readAheadLimit;

    public void checkAvailable() {
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) {
        this.readAheadLimit = i;
        this.mark = this.pos;
    }

    @Override // java.io.Reader
    public synchronized void reset() {
        if (this.readAheadLimit > 0) {
            this.pos = this.mark;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resize(int r7) {
        /*
            r6 = this;
            int r0 = r6.limit
            int r1 = r6.pos
            int r2 = r0 - r1
            int r3 = r6.readAheadLimit
            if (r3 <= 0) goto L13
            int r4 = r6.mark
            int r5 = r1 - r4
            if (r5 > r3) goto L13
            int r2 = r0 - r4
            goto L15
        L13:
            r6.mark = r1
        L15:
            char[] r0 = r6.buffer
            int r1 = r0.length
            int r3 = r2 + r7
            if (r1 >= r3) goto L22
            int r1 = r2 * 2
            int r1 = r1 + r7
            char[] r7 = new char[r1]
            goto L23
        L22:
            r7 = r0
        L23:
            int r1 = r6.mark
            r3 = 0
            java.lang.System.arraycopy(r0, r1, r7, r3, r2)
            r6.buffer = r7
            int r7 = r6.pos
            int r0 = r6.mark
            int r7 = r7 - r0
            r6.pos = r7
            r6.mark = r3
            r6.limit = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.QueueReader.resize(int):void");
    }

    @Override // java.lang.Appendable
    public QueueReader append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        return append(charSequence, 0, charSequence.length());
    }

    @Override // java.lang.Appendable
    public synchronized QueueReader append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        try {
            int i3 = i2 - i;
            reserveSpace(i3);
            int i4 = this.limit;
            char[] cArr = this.buffer;
            if (charSequence instanceof String) {
                ((String) charSequence).getChars(i, i2, cArr, i4);
            } else if (charSequence instanceof CharSeq) {
                ((CharSeq) charSequence).getChars(i, i2, cArr, i4);
            } else {
                int i5 = i4;
                while (i < i2) {
                    cArr[i5] = charSequence.charAt(i);
                    i++;
                    i5++;
                }
            }
            this.limit = i4 + i3;
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public void append(char[] cArr) {
        append(cArr, 0, cArr.length);
    }

    public synchronized void append(char[] cArr, int i, int i2) {
        reserveSpace(i2);
        System.arraycopy(cArr, i, this.buffer, this.limit, i2);
        this.limit += i2;
        notifyAll();
    }

    @Override // java.lang.Appendable
    public synchronized QueueReader append(char c) {
        reserveSpace(1);
        char[] cArr = this.buffer;
        int i = this.limit;
        this.limit = i + 1;
        cArr[i] = c;
        notifyAll();
        return this;
    }

    public synchronized void appendEOF() {
        this.EOFseen = true;
    }

    public void reserveSpace(int i) {
        char[] cArr = this.buffer;
        if (cArr == null) {
            this.buffer = new char[i + 100];
        } else if (cArr.length < this.limit + i) {
            resize(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0010  */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean ready() {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = r2.pos     // Catch: java.lang.Throwable -> Le
            int r1 = r2.limit     // Catch: java.lang.Throwable -> Le
            if (r0 < r1) goto L10
            boolean r0 = r2.EOFseen     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lc
            goto L10
        Lc:
            r0 = 0
            goto L11
        Le:
            r0 = move-exception
            goto L13
        L10:
            r0 = 1
        L11:
            monitor-exit(r2)
            return r0
        L13:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Le
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.QueueReader.ready():boolean");
    }

    @Override // java.io.Reader
    public synchronized int read() {
        while (true) {
            int i = this.pos;
            if (i >= this.limit) {
                if (this.EOFseen) {
                    return -1;
                }
                checkAvailable();
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            } else {
                char[] cArr = this.buffer;
                this.pos = i + 1;
                return cArr[i];
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x001c, code lost:
    
        r1 = r1 - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x001d, code lost:
    
        if (r5 <= r1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x001f, code lost:
    
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0020, code lost:
    
        java.lang.System.arraycopy(r2.buffer, r0, r3, r4, r5);
        r2.pos += r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x002b, code lost:
    
        return r5;
     */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized int read(char[] r3, int r4, int r5) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r5 != 0) goto L6
            monitor-exit(r2)
            r3 = 0
            return r3
        L6:
            int r0 = r2.pos     // Catch: java.lang.Throwable -> L1a
            int r1 = r2.limit     // Catch: java.lang.Throwable -> L1a
            if (r0 < r1) goto L1c
            boolean r0 = r2.EOFseen     // Catch: java.lang.Throwable -> L1a
            if (r0 == 0) goto L13
            monitor-exit(r2)
            r3 = -1
            return r3
        L13:
            r2.checkAvailable()     // Catch: java.lang.Throwable -> L1a
            r2.wait()     // Catch: java.lang.InterruptedException -> L6 java.lang.Throwable -> L1a
            goto L6
        L1a:
            r3 = move-exception
            goto L2c
        L1c:
            int r1 = r1 - r0
            if (r5 <= r1) goto L20
            r5 = r1
        L20:
            char[] r1 = r2.buffer     // Catch: java.lang.Throwable -> L1a
            java.lang.System.arraycopy(r1, r0, r3, r4, r5)     // Catch: java.lang.Throwable -> L1a
            int r3 = r2.pos     // Catch: java.lang.Throwable -> L1a
            int r3 = r3 + r5
            r2.pos = r3     // Catch: java.lang.Throwable -> L1a
            monitor-exit(r2)
            return r5
        L2c:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1a
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.QueueReader.read(char[], int, int):int");
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.pos = 0;
        this.limit = 0;
        this.mark = 0;
        this.EOFseen = true;
        this.buffer = null;
    }
}
