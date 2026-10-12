package androidx.core.os;

import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class CancellationSignal {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1127a;

    /* renamed from: b, reason: collision with root package name */
    public OnCancelListener f1128b;
    public android.os.CancellationSignal c;
    public boolean d;

    public interface OnCancelListener {
        void onCancel();
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.f1127a;
        }
        return z;
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void cancel() {
        synchronized (this) {
            try {
                if (this.f1127a) {
                    return;
                }
                this.f1127a = true;
                this.d = true;
                OnCancelListener onCancelListener = this.f1128b;
                android.os.CancellationSignal cancellationSignal = this.c;
                if (onCancelListener != null) {
                    try {
                        onCancelListener.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (cancellationSignal != null) {
                    a.a(cancellationSignal);
                }
                synchronized (this) {
                    this.d = false;
                    notifyAll();
                }
            } finally {
            }
        }
    }

    public void setOnCancelListener(@Nullable OnCancelListener onCancelListener) {
        synchronized (this) {
            while (this.d) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (this.f1128b == onCancelListener) {
                return;
            }
            this.f1128b = onCancelListener;
            if (this.f1127a && onCancelListener != null) {
                onCancelListener.onCancel();
            }
        }
    }

    @Nullable
    public Object getCancellationSignalObject() {
        android.os.CancellationSignal cancellationSignal;
        synchronized (this) {
            try {
                if (this.c == null) {
                    android.os.CancellationSignal cancellationSignalB = a.b();
                    this.c = cancellationSignalB;
                    if (this.f1127a) {
                        a.a(cancellationSignalB);
                    }
                }
                cancellationSignal = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cancellationSignal;
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(Object obj) {
            ((android.os.CancellationSignal) obj).cancel();
        }

        @DoNotInline
        public static android.os.CancellationSignal b() {
            return new android.os.CancellationSignal();
        }
    }
}
