package gnu.lists;

import java.io.Writer;

/* loaded from: classes2.dex */
public class ConsumerWriter extends Writer {
    protected Consumer out;

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    public ConsumerWriter(Consumer consumer) {
        this.out = consumer;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        this.out.write(cArr, i, i2);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flush();
    }

    public void finalize() {
        close();
    }
}
