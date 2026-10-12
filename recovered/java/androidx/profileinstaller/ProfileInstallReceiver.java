package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.profileinstaller.ProfileInstaller;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {

    @NonNull
    public static final String ACTION_BENCHMARK_OPERATION = "androidx.profileinstaller.action.BENCHMARK_OPERATION";

    @NonNull
    public static final String ACTION_INSTALL_PROFILE = "androidx.profileinstaller.action.INSTALL_PROFILE";

    @NonNull
    public static final String ACTION_SAVE_PROFILE = "androidx.profileinstaller.action.SAVE_PROFILE";

    @NonNull
    public static final String ACTION_SKIP_FILE = "androidx.profileinstaller.action.SKIP_FILE";

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull Context context, @Nullable Intent intent) throws PackageManager.NameNotFoundException, IOException {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (ACTION_INSTALL_PROFILE.equals(action)) {
            ProfileInstaller.b(context, new androidx.arch.core.executor.a(2), new a(), true);
            return;
        }
        if (!ACTION_SKIP_FILE.equals(action)) {
            if (ACTION_SAVE_PROFILE.equals(action)) {
                a aVar = new a();
                if (Build.VERSION.SDK_INT < 24) {
                    aVar.onResultReceived(13, null);
                    return;
                } else {
                    Process.sendSignal(Process.myPid(), 10);
                    aVar.onResultReceived(12, null);
                    return;
                }
            }
            if (!ACTION_BENCHMARK_OPERATION.equals(action) || (extras = intent.getExtras()) == null) {
                return;
            }
            String string = extras.getString("EXTRA_BENCHMARK_OPERATION");
            a aVar2 = new a();
            if (!"DROP_SHADER_CACHE".equals(string)) {
                aVar2.onResultReceived(16, null);
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (androidx.profileinstaller.a.a(i >= 24 ? context.createDeviceProtectedStorageContext().getCodeCacheDir() : i >= 23 ? context.getCodeCacheDir() : context.getCacheDir())) {
                aVar2.onResultReceived(14, null);
                return;
            } else {
                aVar2.onResultReceived(15, null);
                return;
            }
        }
        Bundle extras2 = intent.getExtras();
        if (extras2 != null) {
            String string2 = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
            if (!"WRITE_SKIP_FILE".equals(string2)) {
                if ("DELETE_SKIP_FILE".equals(string2)) {
                    a aVar3 = new a();
                    ProfileInstaller.DiagnosticsCallback diagnosticsCallback = ProfileInstaller.f1952a;
                    new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                    ProfileInstaller.DiagnosticsCallback diagnosticsCallback2 = ProfileInstaller.f1952a;
                    aVar3.onResultReceived(11, null);
                    return;
                }
                return;
            }
            a aVar4 = new a();
            ProfileInstaller.DiagnosticsCallback diagnosticsCallback3 = ProfileInstaller.f1952a;
            try {
                ProfileInstaller.a(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                ProfileInstaller.DiagnosticsCallback diagnosticsCallback4 = ProfileInstaller.f1952a;
                aVar4.onResultReceived(10, null);
            } catch (PackageManager.NameNotFoundException e) {
                ProfileInstaller.DiagnosticsCallback diagnosticsCallback5 = ProfileInstaller.f1952a;
                aVar4.onResultReceived(7, e);
            }
        }
    }

    public class a implements ProfileInstaller.DiagnosticsCallback {
        public a() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int i, @Nullable Object obj) {
            ProfileInstaller.f1953b.onDiagnosticReceived(i, obj);
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int i, @Nullable Object obj) {
            ProfileInstaller.f1953b.onResultReceived(i, obj);
            ProfileInstallReceiver.this.setResultCode(i);
        }
    }
}
