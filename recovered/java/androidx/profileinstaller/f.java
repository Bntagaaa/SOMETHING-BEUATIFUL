package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1970a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f1971b;

    public /* synthetic */ f(Context context, int i) {
        this.f1970a = i;
        this.f1971b = context;
    }

    public /* synthetic */ f(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.f1970a = 0;
        this.f1971b = context;
    }

    @Override // java.lang.Runnable
    public final void run() throws PackageManager.NameNotFoundException, IOException {
        Handler handler;
        switch (this.f1970a) {
            case 0:
                if (Build.VERSION.SDK_INT >= 28) {
                    handler = ProfileInstallerInitializer.b.createAsync(Looper.getMainLooper());
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.postDelayed(new f(this.f1971b, 1), new Random().nextInt(Math.max(1000, 1)) + 5000);
                break;
            case 1:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new f(this.f1971b, 2));
                break;
            default:
                ProfileInstaller.writeProfile(this.f1971b);
                break;
        }
    }
}
