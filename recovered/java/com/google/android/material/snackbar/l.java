package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class l {
    public static l e;

    /* renamed from: a, reason: collision with root package name */
    public final Object f3259a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final Handler f3260b = new Handler(Looper.getMainLooper(), new a());
    public c c;
    public c d;

    public interface b {
        void dismiss(int i);

        void show();
    }

    public static l b() {
        if (e == null) {
            e = new l();
        }
        return e;
    }

    private l() {
    }

    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            l lVar = l.this;
            c cVar = (c) message.obj;
            synchronized (lVar.f3259a) {
                try {
                    if (lVar.c == cVar || lVar.d == cVar) {
                        lVar.a(cVar, 2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
    }

    public void show(int i, b bVar) {
        synchronized (this.f3259a) {
            try {
                if (c(bVar)) {
                    c cVar = this.c;
                    cVar.f3263b = i;
                    this.f3260b.removeCallbacksAndMessages(cVar);
                    d(this.c);
                    return;
                }
                c cVar2 = this.d;
                if ((cVar2 == null || bVar == null || cVar2.f3262a.get() != bVar) ? false : true) {
                    this.d.f3263b = i;
                } else {
                    this.d = new c(i, bVar);
                }
                c cVar3 = this.c;
                if (cVar3 == null || !a(cVar3, 4)) {
                    this.c = null;
                    c cVar4 = this.d;
                    if (cVar4 != null) {
                        this.c = cVar4;
                        this.d = null;
                        b bVar2 = (b) cVar4.f3262a.get();
                        if (bVar2 != null) {
                            bVar2.show();
                        } else {
                            this.c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dismiss(b bVar, int i) {
        synchronized (this.f3259a) {
            try {
                if (c(bVar)) {
                    a(this.c, i);
                } else {
                    c cVar = this.d;
                    if ((cVar == null || bVar == null || cVar.f3262a.get() != bVar) ? false : true) {
                        a(this.d, i);
                    }
                }
            } finally {
            }
        }
    }

    public void onDismissed(b bVar) {
        synchronized (this.f3259a) {
            try {
                if (c(bVar)) {
                    this.c = null;
                    c cVar = this.d;
                    if (cVar != null && cVar != null) {
                        this.c = cVar;
                        this.d = null;
                        b bVar2 = (b) cVar.f3262a.get();
                        if (bVar2 != null) {
                            bVar2.show();
                        } else {
                            this.c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onShown(b bVar) {
        synchronized (this.f3259a) {
            try {
                if (c(bVar)) {
                    d(this.c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void pauseTimeout(b bVar) {
        synchronized (this.f3259a) {
            try {
                if (c(bVar)) {
                    c cVar = this.c;
                    if (!cVar.c) {
                        cVar.c = true;
                        this.f3260b.removeCallbacksAndMessages(cVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void restoreTimeoutIfPaused(b bVar) {
        synchronized (this.f3259a) {
            try {
                if (c(bVar)) {
                    c cVar = this.c;
                    if (cVar.c) {
                        cVar.c = false;
                        d(cVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isCurrent(b bVar) {
        boolean zC;
        synchronized (this.f3259a) {
            zC = c(bVar);
        }
        return zC;
    }

    public boolean isCurrentOrNext(b bVar) {
        boolean z;
        synchronized (this.f3259a) {
            z = true;
            if (!c(bVar)) {
                c cVar = this.d;
                if (!((cVar == null || bVar == null || cVar.f3262a.get() != bVar) ? false : true)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f3262a;

        /* renamed from: b, reason: collision with root package name */
        public int f3263b;
        public boolean c;

        public c(int i, b bVar) {
            this.f3262a = new WeakReference(bVar);
            this.f3263b = i;
        }
    }

    public final boolean a(c cVar, int i) {
        b bVar = (b) cVar.f3262a.get();
        if (bVar == null) {
            return false;
        }
        this.f3260b.removeCallbacksAndMessages(cVar);
        bVar.dismiss(i);
        return true;
    }

    public final boolean c(b bVar) {
        c cVar = this.c;
        return (cVar == null || bVar == null || cVar.f3262a.get() != bVar) ? false : true;
    }

    public final void d(c cVar) {
        int i = cVar.f3263b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        Handler handler = this.f3260b;
        handler.removeCallbacksAndMessages(cVar);
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }
}
