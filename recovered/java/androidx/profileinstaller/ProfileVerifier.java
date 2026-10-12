package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ProfileVerifier {

    /* renamed from: a, reason: collision with root package name */
    public static final ResolvableFuture f1954a = ResolvableFuture.create();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f1955b = new Object();
    public static CompilationStatus c = null;

    private ProfileVerifier() {
    }

    @NonNull
    @WorkerThread
    public static CompilationStatus writeProfileVerification(@NonNull Context context) {
        return c(context, false);
    }

    public static CompilationStatus c(Context context, boolean z) {
        b bVarA;
        int i;
        CompilationStatus compilationStatus;
        if (!z && (compilationStatus = c) != null) {
            return compilationStatus;
        }
        synchronized (f1955b) {
            if (!z) {
                try {
                    CompilationStatus compilationStatus2 = c;
                    if (compilationStatus2 != null) {
                        return compilationStatus2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i2 = Build.VERSION.SDK_INT;
            int i3 = 0;
            if (i2 >= 28 && i2 != 30) {
                File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                long length = file.length();
                boolean z2 = file.exists() && length > 0;
                File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                long length2 = file2.length();
                boolean z3 = file2.exists() && length2 > 0;
                try {
                    long jA = a(context);
                    File file3 = new File(context.getFilesDir(), "profileInstalled");
                    if (file3.exists()) {
                        try {
                            bVarA = b.a(file3);
                        } catch (IOException unused) {
                            return b(131072, z2, z3);
                        }
                    } else {
                        bVarA = null;
                    }
                    if (bVarA != null && bVarA.c == jA && (i = bVarA.f1959b) != 2) {
                        i3 = i;
                    } else if (z2) {
                        i3 = 1;
                    } else if (z3) {
                        i3 = 2;
                    }
                    if (z && z3 && i3 != 1) {
                        i3 = 2;
                    }
                    int i4 = (bVarA == null || bVarA.f1959b != 2 || i3 != 1 || length >= bVarA.d) ? i3 : 3;
                    b bVar = new b(1, i4, jA, length2);
                    if (bVarA == null || !bVarA.equals(bVar)) {
                        try {
                            bVar.b(file3);
                        } catch (IOException unused2) {
                            i4 = CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        }
                    }
                    return b(i4, z2, z3);
                } catch (PackageManager.NameNotFoundException unused3) {
                    return b(65536, z2, z3);
                }
            }
            return b(262144, false, false);
        }
    }

    public static CompilationStatus b(int i, boolean z, boolean z2) {
        CompilationStatus compilationStatus = new CompilationStatus(i, z, z2);
        c = compilationStatus;
        f1954a.set(compilationStatus);
        return c;
    }

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return a.a(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    @NonNull
    public static ListenableFuture<CompilationStatus> getCompilationStatusAsync() {
        return f1954a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f1958a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1959b;
        public final long c;
        public final long d;

        public b(int i, int i2, long j, long j2) {
            this.f1958a = i;
            this.f1959b = i2;
            this.c = j;
            this.d = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof b)) {
                b bVar = (b) obj;
                if (this.f1959b == bVar.f1959b && this.c == bVar.c && this.f1958a == bVar.f1958a && this.d == bVar.d) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f1959b), Long.valueOf(this.c), Integer.valueOf(this.f1958a), Long.valueOf(this.d));
        }

        public final void b(File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f1958a);
                dataOutputStream.writeInt(this.f1959b);
                dataOutputStream.writeLong(this.c);
                dataOutputStream.writeLong(this.d);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public static b a(File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                b bVar = new b(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return bVar;
            } finally {
            }
        }
    }

    public static class CompilationStatus {
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
        public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;
        public static final int RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE = 196608;
        public static final int RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST = 65536;
        public static final int RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION = 262144;
        public static final int RESULT_CODE_NO_PROFILE = 0;
        public static final int RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION = 2;

        /* renamed from: a, reason: collision with root package name */
        public final int f1956a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f1957b;
        public final boolean c;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public @interface ResultCode {
        }

        public CompilationStatus(int i, boolean z, boolean z2) {
            this.f1956a = i;
            this.c = z2;
            this.f1957b = z;
        }

        public int getProfileInstallResultCode() {
            return this.f1956a;
        }

        public boolean isCompiledWithProfile() {
            return this.f1957b;
        }

        public boolean hasProfileEnqueuedForCompilation() {
            return this.c;
        }
    }

    @RequiresApi(33)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static PackageInfo a(PackageManager packageManager, Context context) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }
}
