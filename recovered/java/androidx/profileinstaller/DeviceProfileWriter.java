package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.profileinstaller.ProfileInstaller;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.concurrent.Executor;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DeviceProfileWriter {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f1948a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f1949b;
    public final ProfileInstaller.DiagnosticsCallback c;
    public final byte[] d;
    public final File e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f1950g;
    public final String h;
    public boolean i = false;
    public c[] j;
    public byte[] k;

    public final void b(final Serializable serializable, final int i) {
        this.f1949b.execute(new Runnable() { // from class: androidx.profileinstaller.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f1963a.c.onResultReceived(i, serializable);
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter(@NonNull AssetManager assetManager, @NonNull Executor executor, @NonNull ProfileInstaller.DiagnosticsCallback diagnosticsCallback, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        this.f1948a = assetManager;
        this.f1949b = executor;
        this.c = diagnosticsCallback;
        this.f = str;
        this.f1950g = str2;
        this.h = str3;
        this.e = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i >= 24 && i <= 33) {
            switch (i) {
                case 24:
                case 25:
                    bArr = ProfileVersion.e;
                    break;
                case 26:
                    bArr = ProfileVersion.d;
                    break;
                case 27:
                    bArr = ProfileVersion.c;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = ProfileVersion.f1961b;
                    break;
                case 31:
                case 32:
                case 33:
                    bArr = ProfileVersion.f1960a;
                    break;
            }
        }
        this.d = bArr;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean deviceAllowsProfileInstallerAotWrites() {
        if (this.d == null) {
            b(Integer.valueOf(Build.VERSION.SDK_INT), 3);
            return false;
        }
        if (!this.e.canWrite()) {
            b(null, 4);
            return false;
        }
        this.i = true;
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:7|(2:104|8)|17|95|(3:98|19|(4:21|99|22|42)(2:32|33))|48|(1:(4:106|60|(3:101|62|(3:64|65|66)(2:75|76))(1:(1:83))|(1:89))(1:58))) */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005e, code lost:
    
        r1.onResultReceived(7, r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.NonNull
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.profileinstaller.DeviceProfileWriter read() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.DeviceProfileWriter.read():androidx.profileinstaller.DeviceProfileWriter");
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.c.onDiagnosticReceived(5, null);
            }
            return null;
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter transcodeIfNeeded() throws IOException {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        ProfileInstaller.DiagnosticsCallback diagnosticsCallback = this.c;
        c[] cVarArr = this.j;
        if (cVarArr == null || (bArr = this.d) == null) {
            return this;
        }
        if (!this.i) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(h.f1973a);
                byteArrayOutputStream.write(bArr);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            diagnosticsCallback.onResultReceived(7, e);
        } catch (IllegalStateException e2) {
            diagnosticsCallback.onResultReceived(8, e2);
        }
        if (!h.i(byteArrayOutputStream, bArr, cVarArr)) {
            diagnosticsCallback.onResultReceived(5, null);
            this.j = null;
            byteArrayOutputStream.close();
            return this;
        }
        this.k = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        this.j = null;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean write() {
        byte[] bArr = this.k;
        if (bArr != null) {
            if (!this.i) {
                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
            }
            try {
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.e);
                        try {
                            byte[] bArr2 = new byte[512];
                            while (true) {
                                int i = byteArrayInputStream.read(bArr2);
                                if (i > 0) {
                                    fileOutputStream.write(bArr2, 0, i);
                                } else {
                                    b(null, 1);
                                    fileOutputStream.close();
                                    byteArrayInputStream.close();
                                    return true;
                                }
                            }
                        } finally {
                        }
                    } catch (Throwable th) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } finally {
                    this.k = null;
                    this.j = null;
                }
            } catch (FileNotFoundException e) {
                b(e, 6);
                return false;
            } catch (IOException e2) {
                b(e2, 7);
                return false;
            }
        }
        return false;
    }
}
