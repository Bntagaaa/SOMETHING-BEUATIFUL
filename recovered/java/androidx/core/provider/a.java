package androidx.core.provider;

import android.graphics.Typeface;
import androidx.core.provider.FontsContractCompat;

/* loaded from: classes.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FontsContractCompat.FontRequestCallback f1165a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Typeface f1166b;

    public a(FontsContractCompat.FontRequestCallback fontRequestCallback, Typeface typeface) {
        this.f1165a = fontRequestCallback;
        this.f1166b = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1165a.onTypefaceRetrieved(this.f1166b);
    }
}
