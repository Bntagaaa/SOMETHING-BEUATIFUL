package androidx.core.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;

/* loaded from: classes.dex */
class h implements ServiceConnection {

    /* renamed from: b, reason: collision with root package name */
    public ResolvableFuture f988b;
    public final Context c;

    /* renamed from: a, reason: collision with root package name */
    public IUnusedAppRestrictionsBackportService f987a = null;
    public boolean d = false;

    public h(Context context) {
        this.c = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IUnusedAppRestrictionsBackportService iUnusedAppRestrictionsBackportServiceAsInterface = IUnusedAppRestrictionsBackportService.Stub.asInterface(iBinder);
        this.f987a = iUnusedAppRestrictionsBackportServiceAsInterface;
        try {
            iUnusedAppRestrictionsBackportServiceAsInterface.isPermissionRevocationEnabledForApp(new g(this));
        } catch (RemoteException unused) {
            this.f988b.set(0);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f987a = null;
    }

    public void connectAndFetchResult(@NonNull ResolvableFuture<Integer> resolvableFuture) {
        if (this.d) {
            throw new IllegalStateException("Each UnusedAppRestrictionsBackportServiceConnection can only be bound once.");
        }
        this.d = true;
        this.f988b = resolvableFuture;
        Intent intent = new Intent(UnusedAppRestrictionsBackportService.ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION);
        Context context = this.c;
        context.bindService(intent.setPackage(PackageManagerCompat.getPermissionRevocationVerifierApp(context.getPackageManager())), this, 1);
    }

    public void disconnectFromService() {
        if (!this.d) {
            throw new IllegalStateException("bindService must be called before unbind");
        }
        this.d = false;
        this.c.unbindService(this);
    }
}
