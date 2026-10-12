package kawa;

import java.io.Writer;
import javax.swing.text.AttributeSet;

/* loaded from: classes2.dex */
class TextPaneWriter extends Writer {
    ReplDocument document;
    String str = "";
    AttributeSet style;

    public TextPaneWriter(ReplDocument replDocument, AttributeSet attributeSet) {
        this.document = replDocument;
        this.style = attributeSet;
    }

    @Override // java.io.Writer
    public synchronized void write(int i) {
        this.str += ((char) i);
        if (i == 10) {
            flush();
        }
    }

    @Override // java.io.Writer
    public void write(String str) {
        this.document.write(str, this.style);
    }

    @Override // java.io.Writer
    public synchronized void write(char[] cArr, int i, int i2) {
        flush();
        if (i2 != 0) {
            write(new String(cArr, i, i2));
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public synchronized void flush() {
        String str = this.str;
        if (!str.equals("")) {
            this.str = "";
            write(str);
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flush();
    }
}
