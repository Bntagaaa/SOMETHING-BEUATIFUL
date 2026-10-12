package androidx.core.app;

import android.app.Application;
import androidx.core.app.e;

/* loaded from: classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Application f943a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e.b f944b;

    public d(Application application, e.b bVar) {
        this.f943a = application;
        this.f944b = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f943a.unregisterActivityLifecycleCallbacks(this.f944b);
    }
}
