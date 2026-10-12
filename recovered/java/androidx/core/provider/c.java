package androidx.core.provider;

import android.os.Handler;
import androidx.core.provider.FontsContractCompat;
import androidx.core.provider.k;

/* loaded from: classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    public final FontsContractCompat.FontRequestCallback f1169a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f1170b;

    public c(FontsContractCompat.FontRequestCallback fontRequestCallback, Handler handler) {
        this.f1169a = fontRequestCallback;
        this.f1170b = handler;
    }

    public c(FontsContractCompat.FontRequestCallback fontRequestCallback) {
        this.f1169a = fontRequestCallback;
        this.f1170b = d.a();
    }

    public final void a(k.a aVar) {
        int i = aVar.f1182b;
        Handler handler = this.f1170b;
        FontsContractCompat.FontRequestCallback fontRequestCallback = this.f1169a;
        if (i == 0) {
            handler.post(new a(fontRequestCallback, aVar.f1181a));
        } else {
            handler.post(new b(fontRequestCallback, i));
        }
    }
}
