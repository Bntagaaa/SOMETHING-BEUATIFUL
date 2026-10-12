package androidx.core.util;

import android.util.Log;
import androidx.annotation.RestrictTo;
import java.io.Writer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes.dex */
public class LogWriter extends Writer {

    /* renamed from: a, reason: collision with root package name */
    public final String f1233a;

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f1234b = new StringBuilder(128);

    public LogWriter(String str) {
        this.f1233a = str;
    }

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
                this.f1234b.append(c);
            }
        }
    }

    public final void a() {
        StringBuilder sb = this.f1234b;
        if (sb.length() > 0) {
            Log.d(this.f1233a, sb.toString());
            sb.delete(0, sb.length());
        }
    }
}
