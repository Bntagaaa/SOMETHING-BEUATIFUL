package androidx.core.location;

import android.location.Location;
import androidx.core.location.LocationManagerCompat;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1116a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat.l f1117b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m(LocationManagerCompat.l lVar, Object obj, int i) {
        this.f1116a = i;
        this.f1117b = lVar;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1116a) {
            case 0:
                LocationManagerCompat.l lVar = this.f1117b;
                List<Location> list = (List) this.c;
                LocationManagerCompat.k kVar = lVar.f1086a;
                if (kVar != null) {
                    kVar.f1085b.onLocationChanged(list);
                    break;
                }
                break;
            default:
                LocationManagerCompat.l lVar2 = this.f1117b;
                Location location = (Location) this.c;
                LocationManagerCompat.k kVar2 = lVar2.f1086a;
                if (kVar2 != null) {
                    kVar2.f1085b.onLocationChanged(location);
                    break;
                }
                break;
        }
    }
}
