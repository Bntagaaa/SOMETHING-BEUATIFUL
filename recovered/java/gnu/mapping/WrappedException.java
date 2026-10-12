package gnu.mapping;

/* loaded from: classes2.dex */
public class WrappedException extends RuntimeException {
    public WrappedException() {
    }

    public WrappedException(String str) {
        super(str);
    }

    public WrappedException(Throwable th) {
        this(th.toString(), th);
    }

    public WrappedException(String str, Throwable th) {
        super(str, th);
    }

    public Throwable getException() {
        return getCause();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }

    public static RuntimeException wrapIfNeeded(Throwable th) {
        if (th instanceof RuntimeException) {
            return (RuntimeException) th;
        }
        return new WrappedException(th);
    }
}
