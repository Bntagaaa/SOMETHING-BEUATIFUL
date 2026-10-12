package androidx.core.provider;

import androidx.core.provider.FontsContractCompat;

/* loaded from: classes.dex */
class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FontsContractCompat.FontRequestCallback f1167a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1168b;

    public b(FontsContractCompat.FontRequestCallback fontRequestCallback, int i) {
        this.f1167a = fontRequestCallback;
        this.f1168b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1167a.onTypefaceRequestFailed(this.f1168b);
    }
}
