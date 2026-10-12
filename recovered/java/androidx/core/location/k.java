package androidx.core.location;

import android.location.GnssStatus;
import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1112a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Executor f1113b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k(Object obj, Executor executor, Object obj2, int i) {
        this.f1112a = i;
        this.c = obj;
        this.f1113b = executor;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1112a) {
            case 0:
                LocationManagerCompat.i iVar = (LocationManagerCompat.i) this.c;
                Executor executor = this.f1113b;
                GnssStatusCompat gnssStatusCompat = (GnssStatusCompat) this.d;
                if (iVar.c == executor) {
                    iVar.f1082b.onSatelliteStatusChanged(gnssStatusCompat);
                    break;
                }
                break;
            default:
                LocationManagerCompat.m mVar = (LocationManagerCompat.m) this.c;
                Executor executor2 = this.f1113b;
                GnssStatus gnssStatus = (GnssStatus) this.d;
                if (mVar.f1089b == executor2) {
                    mVar.f1088a.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
                    break;
                }
                break;
        }
    }
}
