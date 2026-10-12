package androidx.core.app;

import androidx.core.app.e;

/* loaded from: classes.dex */
class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e.b f941a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f942b;

    public c(e.b bVar, Object obj) {
        this.f941a = bVar;
        this.f942b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f941a.f950a = this.f942b;
    }
}
