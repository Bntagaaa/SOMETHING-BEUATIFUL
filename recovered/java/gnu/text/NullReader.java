package gnu.text;

import java.io.Reader;

/* loaded from: classes2.dex */
public class NullReader extends Reader {
    public static final NullReader nullReader = new NullReader();

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        return -1;
    }

    @Override // java.io.Reader
    public boolean ready() {
        return true;
    }
}
