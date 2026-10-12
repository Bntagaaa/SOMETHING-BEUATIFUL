package androidx.core.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;

/* loaded from: classes.dex */
class a extends FingerprintManager.AuthenticationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FingerprintManagerCompat.AuthenticationCallback f1069a;

    public a(FingerprintManagerCompat.AuthenticationCallback authenticationCallback) {
        this.f1069a = authenticationCallback;
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationError(int i, CharSequence charSequence) {
        this.f1069a.onAuthenticationError(i, charSequence);
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationHelp(int i, CharSequence charSequence) {
        this.f1069a.onAuthenticationHelp(i, charSequence);
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
        this.f1069a.onAuthenticationSucceeded(new FingerprintManagerCompat.AuthenticationResult(FingerprintManagerCompat.a.unwrapCryptoObject(FingerprintManagerCompat.a.b(authenticationResult))));
    }

    @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
    public void onAuthenticationFailed() {
        this.f1069a.onAuthenticationFailed();
    }
}
