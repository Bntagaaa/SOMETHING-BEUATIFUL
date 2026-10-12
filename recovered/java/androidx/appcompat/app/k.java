package androidx.appcompat.app;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.app.w;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f169a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f170b;

    public /* synthetic */ k(Context context, int i) {
        this.f169a = i;
        this.f170b = context;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        Context context = this.f170b;
        switch (this.f169a) {
            case 0:
                if (Build.VERSION.SDK_INT >= 33) {
                    w.a aVar = AppCompatDelegate.f101a;
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (AppCompatDelegate.getApplicationLocales().isEmpty()) {
                            String strB = w.b(context);
                            Object systemService = context.getSystemService("locale");
                            if (systemService != null) {
                                AppCompatDelegate.b.b(systemService, AppCompatDelegate.a.a(strB));
                            }
                        }
                        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                AppCompatDelegate.f = true;
                break;
            default:
                AppCompatDelegate.e(context);
                break;
        }
    }
}
