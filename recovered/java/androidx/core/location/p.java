package androidx.core.location;

import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1122a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat.m f1123b;
    public final /* synthetic */ Executor c;

    public /* synthetic */ p(LocationManagerCompat.m mVar, Executor executor, int i) {
        this.f1122a = i;
        this.f1123b = mVar;
        this.c = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1122a) {
            case 0:
                LocationManagerCompat.m mVar = this.f1123b;
                if (mVar.f1089b == this.c) {
                    mVar.f1088a.onStopped();
                    break;
                }
                break;
            default:
                LocationManagerCompat.m mVar2 = this.f1123b;
                if (mVar2.f1089b == this.c) {
                    mVar2.f1088a.onStarted();
                    break;
                }
                break;
        }
    }
}
