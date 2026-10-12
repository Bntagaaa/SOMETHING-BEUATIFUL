package androidx.core.location;

import androidx.core.location.LocationManagerCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1114a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat.l f1115b;
    public final /* synthetic */ String c;

    public /* synthetic */ l(LocationManagerCompat.l lVar, String str, int i) {
        this.f1114a = i;
        this.f1115b = lVar;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1114a) {
            case 0:
                LocationManagerCompat.l lVar = this.f1115b;
                String str = this.c;
                LocationManagerCompat.k kVar = lVar.f1086a;
                if (kVar != null) {
                    kVar.f1085b.onProviderEnabled(str);
                    break;
                }
                break;
            default:
                LocationManagerCompat.l lVar2 = this.f1115b;
                String str2 = this.c;
                LocationManagerCompat.k kVar2 = lVar2.f1086a;
                if (kVar2 != null) {
                    kVar2.f1085b.onProviderDisabled(str2);
                    break;
                }
                break;
        }
    }
}
