package androidx.core.location;

import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1110a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Executor f1111b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j(Object obj, Executor executor, int i, int i2) {
        this.f1110a = i2;
        this.d = obj;
        this.f1111b = executor;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1110a) {
            case 0:
                LocationManagerCompat.i iVar = (LocationManagerCompat.i) this.d;
                Executor executor = this.f1111b;
                int i = this.c;
                if (iVar.c == executor) {
                    iVar.f1082b.onFirstFix(i);
                    break;
                }
                break;
            default:
                LocationManagerCompat.m mVar = (LocationManagerCompat.m) this.d;
                Executor executor2 = this.f1111b;
                int i2 = this.c;
                if (mVar.f1089b == executor2) {
                    mVar.f1088a.onFirstFix(i2);
                    break;
                }
                break;
        }
    }
}
