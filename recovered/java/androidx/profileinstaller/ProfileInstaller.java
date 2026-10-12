package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ProfileInstaller {
    public static final int DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST = 2;
    public static final int DIAGNOSTIC_CURRENT_PROFILE_EXISTS = 1;
    public static final int DIAGNOSTIC_PROFILE_IS_COMPRESSED = 5;
    public static final int DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST = 4;
    public static final int DIAGNOSTIC_REF_PROFILE_EXISTS = 3;
    public static final int RESULT_ALREADY_INSTALLED = 2;
    public static final int RESULT_BASELINE_PROFILE_NOT_FOUND = 6;
    public static final int RESULT_BENCHMARK_OPERATION_FAILURE = 15;
    public static final int RESULT_BENCHMARK_OPERATION_SUCCESS = 14;
    public static final int RESULT_BENCHMARK_OPERATION_UNKNOWN = 16;
    public static final int RESULT_DELETE_SKIP_FILE_SUCCESS = 11;
    public static final int RESULT_DESIRED_FORMAT_UNSUPPORTED = 5;
    public static final int RESULT_INSTALL_SKIP_FILE_SUCCESS = 10;
    public static final int RESULT_INSTALL_SUCCESS = 1;
    public static final int RESULT_IO_EXCEPTION = 7;
    public static final int RESULT_META_FILE_REQUIRED_BUT_NOT_FOUND = 9;
    public static final int RESULT_NOT_WRITABLE = 4;
    public static final int RESULT_PARSE_EXCEPTION = 8;
    public static final int RESULT_SAVE_PROFILE_SIGNALLED = 12;
    public static final int RESULT_SAVE_PROFILE_SKIPPED = 13;
    public static final int RESULT_UNSUPPORTED_ART_VERSION = 3;

    /* renamed from: a, reason: collision with root package name */
    public static final DiagnosticsCallback f1952a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final DiagnosticsCallback f1953b = new b();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface DiagnosticCode {
    }

    public interface DiagnosticsCallback {
        void onDiagnosticReceived(int i, @Nullable Object obj);

        void onResultReceived(int i, @Nullable Object obj);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ResultCode {
    }

    public class a implements DiagnosticsCallback {
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int i, @Nullable Object obj) {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int i, @Nullable Object obj) {
        }
    }

    private ProfileInstaller() {
    }

    public class b implements DiagnosticsCallback {
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int i, @Nullable Object obj) {
            String str;
            if (i == 1) {
                str = "DIAGNOSTIC_CURRENT_PROFILE_EXISTS";
            } else if (i == 2) {
                str = "DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST";
            } else if (i == 3) {
                str = "DIAGNOSTIC_REF_PROFILE_EXISTS";
            } else if (i == 4) {
                str = "DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST";
            } else if (i != 5) {
                str = "";
            } else {
                str = "DIAGNOSTIC_PROFILE_IS_COMPRESSED";
            }
            Log.d("ProfileInstaller", str);
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int i, @Nullable Object obj) {
            String str;
            switch (i) {
                case 1:
                    str = "RESULT_INSTALL_SUCCESS";
                    break;
                case 2:
                    str = "RESULT_ALREADY_INSTALLED";
                    break;
                case 3:
                    str = "RESULT_UNSUPPORTED_ART_VERSION";
                    break;
                case 4:
                    str = "RESULT_NOT_WRITABLE";
                    break;
                case 5:
                    str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                    break;
                case 6:
                    str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                    break;
                case 7:
                    str = "RESULT_IO_EXCEPTION";
                    break;
                case 8:
                    str = "RESULT_PARSE_EXCEPTION";
                    break;
                case 9:
                default:
                    str = "";
                    break;
                case 10:
                    str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                    break;
                case 11:
                    str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                    break;
            }
            if (i == 6 || i == 7 || i == 8) {
                Log.e("ProfileInstaller", str, (Throwable) obj);
            } else {
                Log.d("ProfileInstaller", str);
            }
        }
    }

    public static void a(PackageInfo packageInfo, File file) throws IOException {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    @WorkerThread
    public static void writeProfile(@NonNull Context context) throws PackageManager.NameNotFoundException, IOException {
        writeProfile(context, new androidx.arch.core.executor.a(2), f1952a);
    }

    @WorkerThread
    public static void writeProfile(@NonNull Context context, @NonNull Executor executor, @NonNull DiagnosticsCallback diagnosticsCallback) throws PackageManager.NameNotFoundException, IOException {
        b(context, executor, diagnosticsCallback, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r16, java.util.concurrent.Executor r17, androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback r18, boolean r19) throws android.content.pm.PackageManager.NameNotFoundException, java.io.IOException {
        /*
            r1 = r16
            r5 = r18
            android.content.Context r0 = r1.getApplicationContext()
            java.lang.String r2 = r0.getPackageName()
            android.content.pm.ApplicationInfo r3 = r0.getApplicationInfo()
            android.content.res.AssetManager r4 = r0.getAssets()
            java.io.File r0 = new java.io.File
            java.lang.String r3 = r3.sourceDir
            r0.<init>(r3)
            java.lang.String r6 = r0.getName()
            android.content.pm.PackageManager r0 = r1.getPackageManager()
            r10 = 0
            android.content.pm.PackageInfo r11 = r0.getPackageInfo(r2, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ldc
            java.io.File r12 = r1.getFilesDir()
            java.lang.String r3 = "ProfileInstaller"
            r13 = 1
            if (r19 != 0) goto L8b
            java.io.File r0 = new java.io.File
            java.lang.String r7 = "profileinstaller_profileWrittenFor_lastUpdateTime.dat"
            r0.<init>(r12, r7)
            boolean r7 = r0.exists()
            if (r7 != 0) goto L40
        L3e:
            r0 = 0
            goto L6f
        L40:
            java.io.DataInputStream r7 = new java.io.DataInputStream     // Catch: java.io.IOException -> L62
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.io.IOException -> L62
            r8.<init>(r0)     // Catch: java.io.IOException -> L62
            r7.<init>(r8)     // Catch: java.io.IOException -> L62
            long r8 = r7.readLong()     // Catch: java.lang.Throwable -> L64
            r7.close()     // Catch: java.io.IOException -> L62
            long r14 = r11.lastUpdateTime
            int r0 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r0 != 0) goto L59
            r0 = 1
            goto L5a
        L59:
            r0 = 0
        L5a:
            if (r0 == 0) goto L6f
            r7 = 2
            r8 = 0
            r5.onResultReceived(r7, r8)
            goto L6f
        L62:
            goto L3e
        L64:
            r0 = move-exception
            r8 = r0
            r7.close()     // Catch: java.lang.Throwable -> L6a
            goto L6e
        L6a:
            r0 = move-exception
            r8.addSuppressed(r0)     // Catch: java.io.IOException -> L62
        L6e:
            throw r8     // Catch: java.io.IOException -> L62
        L6f:
            if (r0 != 0) goto L72
            goto L8b
        L72:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Skipping profile installation for "
            r0.<init>(r2)
            java.lang.String r2 = r1.getPackageName()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r3, r0)
            androidx.profileinstaller.ProfileVerifier.c(r1, r10)
            goto Ldb
        L8b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r7 = "Installing profile for "
            r0.<init>(r7)
            java.lang.String r7 = r1.getPackageName()
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r3, r0)
            java.io.File r9 = new java.io.File
            java.io.File r0 = new java.io.File
            java.lang.String r3 = "/data/misc/profiles/cur/0"
            r0.<init>(r3, r2)
            java.lang.String r2 = "primary.prof"
            r9.<init>(r0, r2)
            androidx.profileinstaller.DeviceProfileWriter r2 = new androidx.profileinstaller.DeviceProfileWriter
            java.lang.String r7 = "dexopt/baseline.prof"
            java.lang.String r8 = "dexopt/baseline.profm"
            r3 = r4
            r4 = r17
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            boolean r0 = r2.deviceAllowsProfileInstallerAotWrites()
            if (r0 != 0) goto Lc2
            r0 = 0
            goto Ld3
        Lc2:
            androidx.profileinstaller.DeviceProfileWriter r0 = r2.read()
            androidx.profileinstaller.DeviceProfileWriter r0 = r0.transcodeIfNeeded()
            boolean r0 = r0.write()
            if (r0 == 0) goto Ld3
            a(r11, r12)
        Ld3:
            if (r0 == 0) goto Ld8
            if (r19 == 0) goto Ld8
            r10 = 1
        Ld8:
            androidx.profileinstaller.ProfileVerifier.c(r1, r10)
        Ldb:
            return
        Ldc:
            r0 = move-exception
            r2 = 7
            r5.onResultReceived(r2, r0)
            androidx.profileinstaller.ProfileVerifier.c(r1, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.ProfileInstaller.b(android.content.Context, java.util.concurrent.Executor, androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback, boolean):void");
    }
}
