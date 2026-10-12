package androidx.core.content;

import android.os.RemoteException;
import android.util.Log;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;

/* loaded from: classes.dex */
class g extends IUnusedAppRestrictionsBackportCallback.Stub {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f986a;

    public g(h hVar) {
        this.f986a = hVar;
    }

    @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
    public void onIsPermissionRevocationEnabledForAppResult(boolean z, boolean z2) throws RemoteException {
        h hVar = this.f986a;
        if (!z) {
            hVar.f988b.set(0);
            Log.e(PackageManagerCompat.LOG_TAG, "Unable to retrieve the permission revocation setting from the backport");
        } else if (z2) {
            hVar.f988b.set(3);
        } else {
            hVar.f988b.set(2);
        }
    }
}
