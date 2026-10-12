package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.core.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

@Deprecated
/* loaded from: classes.dex */
public class FingerprintManagerCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1065a;

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int i, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }
    }

    @NonNull
    public static FingerprintManagerCompat from(@NonNull Context context) {
        return new FingerprintManagerCompat(context);
    }

    public FingerprintManagerCompat(Context context) {
        this.f1065a = context;
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean hasEnrolledFingerprints() {
        FingerprintManager fingerprintManagerOrNull;
        return Build.VERSION.SDK_INT >= 23 && (fingerprintManagerOrNull = a.getFingerprintManagerOrNull(this.f1065a)) != null && a.c(fingerprintManagerOrNull);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean isHardwareDetected() {
        FingerprintManager fingerprintManagerOrNull;
        return Build.VERSION.SDK_INT >= 23 && (fingerprintManagerOrNull = a.getFingerprintManagerOrNull(this.f1065a)) != null && a.d(fingerprintManagerOrNull);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public void authenticate(@Nullable CryptoObject cryptoObject, int i, @Nullable CancellationSignal cancellationSignal, @NonNull AuthenticationCallback authenticationCallback, @Nullable Handler handler) {
        FingerprintManager fingerprintManagerOrNull;
        if (Build.VERSION.SDK_INT < 23 || (fingerprintManagerOrNull = a.getFingerprintManagerOrNull(this.f1065a)) == null) {
            return;
        }
        a.a(fingerprintManagerOrNull, a.wrapCryptoObject(cryptoObject), cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, i, new androidx.core.hardware.fingerprint.a(authenticationCallback), handler);
    }

    public static class CryptoObject {

        /* renamed from: a, reason: collision with root package name */
        public final Signature f1067a;

        /* renamed from: b, reason: collision with root package name */
        public final Cipher f1068b;
        public final Mac c;

        public CryptoObject(@NonNull Signature signature) {
            this.f1067a = signature;
            this.f1068b = null;
            this.c = null;
        }

        public CryptoObject(@NonNull Cipher cipher) {
            this.f1068b = cipher;
            this.f1067a = null;
            this.c = null;
        }

        public CryptoObject(@NonNull Mac mac) {
            this.c = mac;
            this.f1068b = null;
            this.f1067a = null;
        }

        @Nullable
        public Signature getSignature() {
            return this.f1067a;
        }

        @Nullable
        public Cipher getCipher() {
            return this.f1068b;
        }

        @Nullable
        public Mac getMac() {
            return this.c;
        }
    }

    public static final class AuthenticationResult {

        /* renamed from: a, reason: collision with root package name */
        public final CryptoObject f1066a;

        public AuthenticationResult(CryptoObject cryptoObject) {
            this.f1066a = cryptoObject;
        }

        public CryptoObject getCryptoObject() {
            return this.f1066a;
        }
    }

    @RequiresApi(23)
    public static class a {
        private a() {
        }

        @RequiresPermission("android.permission.USE_FINGERPRINT")
        @DoNotInline
        public static boolean c(Object obj) {
            return ((FingerprintManager) obj).hasEnrolledFingerprints();
        }

        @RequiresPermission("android.permission.USE_FINGERPRINT")
        @DoNotInline
        public static boolean d(Object obj) {
            return ((FingerprintManager) obj).isHardwareDetected();
        }

        @RequiresPermission("android.permission.USE_FINGERPRINT")
        @DoNotInline
        public static void a(Object obj, Object obj2, android.os.CancellationSignal cancellationSignal, int i, Object obj3, Handler handler) {
            ((FingerprintManager) obj).authenticate((FingerprintManager.CryptoObject) obj2, cancellationSignal, i, (FingerprintManager.AuthenticationCallback) obj3, handler);
        }

        @DoNotInline
        public static FingerprintManager.CryptoObject b(Object obj) {
            return ((FingerprintManager.AuthenticationResult) obj).getCryptoObject();
        }

        @DoNotInline
        public static FingerprintManager getFingerprintManagerOrNull(Context context) {
            int i = Build.VERSION.SDK_INT;
            if (i == 23) {
                return (FingerprintManager) context.getSystemService(FingerprintManager.class);
            }
            if (i <= 23 || !context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
                return null;
            }
            return (FingerprintManager) context.getSystemService(FingerprintManager.class);
        }

        @DoNotInline
        public static FingerprintManager.CryptoObject wrapCryptoObject(CryptoObject cryptoObject) {
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new FingerprintManager.CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new FingerprintManager.CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() != null) {
                return new FingerprintManager.CryptoObject(cryptoObject.getMac());
            }
            return null;
        }

        @DoNotInline
        public static CryptoObject unwrapCryptoObject(Object obj) {
            FingerprintManager.CryptoObject cryptoObject = (FingerprintManager.CryptoObject) obj;
            if (cryptoObject == null) {
                return null;
            }
            if (cryptoObject.getCipher() != null) {
                return new CryptoObject(cryptoObject.getCipher());
            }
            if (cryptoObject.getSignature() != null) {
                return new CryptoObject(cryptoObject.getSignature());
            }
            if (cryptoObject.getMac() != null) {
                return new CryptoObject(cryptoObject.getMac());
            }
            return null;
        }
    }
}
