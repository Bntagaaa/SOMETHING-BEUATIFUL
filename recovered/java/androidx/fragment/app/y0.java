package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* loaded from: classes.dex */
final class y0 extends Writer {

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f1773b = new StringBuilder(128);

    /* renamed from: a, reason: collision with root package name */
    public final String f1772a = "FragmentManager";

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.f1773b.append(c);
            }
        }
    }

    public final void a() {
        StringBuilder sb = this.f1773b;
        if (sb.length() > 0) {
            Log.d(this.f1772a, sb.toString());
            sb.delete(0, sb.length());
        }
    }
}
